                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_differ$2F2_α
proc_differ$2F2_α:
proc_differ$2F2_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 496], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
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
                                                                                        jne   .Lx17_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx17_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx17_101
.Lx17_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx17_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx17_240
                        add              rsp, 112
                                                                                        jmp   proc_differ$2F2_ω
.Lx17_240:
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_differ$2F2_ω
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
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
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
.Lx22_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx22_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx22_41
                        cmp              esi, 1
                                                                                        jne   .Lx22_55
                        mov              r8, rax
                                                                                        jmp   .Lx22_40
.Lx22_55:
                        cmp              esi, 2
                                                                                        jne   .Lx22_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx22_41
                        mov              r8, rax
                                                                                        jmp   .Lx22_40
.Lx22_56:
                        cmp              eax, 72
                                                                                        jne   .Lx22_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx22_41
                        cmp              rax, r8
                                                                                        je    .Lx22_41
                        mov              r8, rax
                                                                                        jmp   .Lx22_40
.Lx22_41:
                        lea              r9, [rbp + 448]
.Lx22_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx22_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx22_43
                        cmp              esi, 1
                                                                                        jne   .Lx22_57
                        mov              r9, rax
                                                                                        jmp   .Lx22_42
.Lx22_57:
                        cmp              esi, 2
                                                                                        jne   .Lx22_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx22_43
                        mov              r9, rax
                                                                                        jmp   .Lx22_42
.Lx22_58:
                        cmp              eax, 72
                                                                                        jne   .Lx22_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx22_43
                        cmp              rax, r9
                                                                                        je    .Lx22_43
                        mov              r9, rax
                                                                                        jmp   .Lx22_42
.Lx22_43:
                        cmp              r8, r9
                                                                                        je    .Lx22_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx22_44
                        cmp              eax, 104
                                                                                        je    .Lx22_44
                        cmp              eax, 72
                                                                                        jne   .Lx22_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx22_44
                                                                                        jmp   .Lx22_45
.Lx22_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx22_53
                        cmp              eax, 104
                                                                                        je    .Lx22_53
                        cmp              eax, 72
                                                                                        jne   .Lx22_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx22_53
                                                                                        jmp   .Lx22_46
.Lx22_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx22_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx22_53
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
                                                                                        jmp   .Lx22_51
.Lx22_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx22_47
                        cmp              eax, 104
                                                                                        je    .Lx22_47
                        cmp              eax, 72
                                                                                        jne   .Lx22_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx22_47
                                                                                        jmp   .Lx22_48
.Lx22_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx22_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx22_53
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
                                                                                        jmp   .Lx22_51
.Lx22_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx22_49
                        cmp              edx, 80
                                                                                        je    .Lx22_53
                                                                                        jmp   .Lx22_52
.Lx22_49:
                        cmp              edx, 80
                                                                                        je    .Lx22_52
                        cmp              ecx, 5
                                                                                        je    .Lx22_53
                        cmp              edx, 5
                                                                                        je    .Lx22_53
                        cmp              ecx, 3
                                                                                        jne   .Lx22_50
                        cmp              edx, 3
                                                                                        jne   .Lx22_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx22_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx22_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx22_51
                                                                                        jmp   .Lx22_52
.Lx22_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx22_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx22_53
.Lx22_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx22_54
.Lx22_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx22_54
.Lx22_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx22_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx22_240
                        add              rsp, 112
                                                                                        jmp   n8_call_builtin_prolog_α
.Lx22_240:
                                                                                        jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
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
.Lx27_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx27_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_41
                        cmp              esi, 1
                                                                                        jne   .Lx27_55
                        mov              r8, rax
                                                                                        jmp   .Lx27_40
.Lx27_55:
                        cmp              esi, 2
                                                                                        jne   .Lx27_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx27_41
                        mov              r8, rax
                                                                                        jmp   .Lx27_40
.Lx27_56:
                        cmp              eax, 72
                                                                                        jne   .Lx27_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_41
                        cmp              rax, r8
                                                                                        je    .Lx27_41
                        mov              r8, rax
                                                                                        jmp   .Lx27_40
.Lx27_41:
                        lea              r9, [rbp + 368]
.Lx27_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx27_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_43
                        cmp              esi, 1
                                                                                        jne   .Lx27_57
                        mov              r9, rax
                                                                                        jmp   .Lx27_42
.Lx27_57:
                        cmp              esi, 2
                                                                                        jne   .Lx27_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx27_43
                        mov              r9, rax
                                                                                        jmp   .Lx27_42
.Lx27_58:
                        cmp              eax, 72
                                                                                        jne   .Lx27_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_43
                        cmp              rax, r9
                                                                                        je    .Lx27_43
                        mov              r9, rax
                                                                                        jmp   .Lx27_42
.Lx27_43:
                        cmp              r8, r9
                                                                                        je    .Lx27_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx27_44
                        cmp              eax, 104
                                                                                        je    .Lx27_44
                        cmp              eax, 72
                                                                                        jne   .Lx27_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx27_44
                                                                                        jmp   .Lx27_45
.Lx27_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx27_53
                        cmp              eax, 104
                                                                                        je    .Lx27_53
                        cmp              eax, 72
                                                                                        jne   .Lx27_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx27_53
                                                                                        jmp   .Lx27_46
.Lx27_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx27_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx27_53
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
                                                                                        jmp   .Lx27_51
.Lx27_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx27_47
                        cmp              eax, 104
                                                                                        je    .Lx27_47
                        cmp              eax, 72
                                                                                        jne   .Lx27_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx27_47
                                                                                        jmp   .Lx27_48
.Lx27_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx27_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx27_53
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
                                                                                        jmp   .Lx27_51
.Lx27_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx27_49
                        cmp              edx, 80
                                                                                        je    .Lx27_53
                                                                                        jmp   .Lx27_52
.Lx27_49:
                        cmp              edx, 80
                                                                                        je    .Lx27_52
                        cmp              ecx, 5
                                                                                        je    .Lx27_53
                        cmp              edx, 5
                                                                                        je    .Lx27_53
                        cmp              ecx, 3
                                                                                        jne   .Lx27_50
                        cmp              edx, 3
                                                                                        jne   .Lx27_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx27_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx27_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx27_51
                                                                                        jmp   .Lx27_52
.Lx27_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx27_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx27_53
.Lx27_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx27_54
.Lx27_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx27_54
.Lx27_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx27_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx27_240
                        add              rsp, 112
                                                                                        jmp   n8_call_builtin_prolog_α
.Lx27_240:
                                                                                        jmp   n7_cut_α
n6_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_cut_α:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_differ$2F2_ω
                                                                                        jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                                        jmp   proc_differ$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
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
.Lx34_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx34_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        cmp              esi, 1
                                                                                        jne   .Lx34_55
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_55:
                        cmp              esi, 2
                                                                                        jne   .Lx34_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_56:
                        cmp              eax, 72
                                                                                        jne   .Lx34_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        cmp              rax, r8
                                                                                        je    .Lx34_41
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_41:
                        lea              r9, [rbp + 240]
.Lx34_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx34_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        cmp              esi, 1
                                                                                        jne   .Lx34_57
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_57:
                        cmp              esi, 2
                                                                                        jne   .Lx34_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_58:
                        cmp              eax, 72
                                                                                        jne   .Lx34_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        cmp              rax, r9
                                                                                        je    .Lx34_43
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_43:
                        cmp              r8, r9
                                                                                        je    .Lx34_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_44
                        cmp              eax, 104
                                                                                        je    .Lx34_44
                        cmp              eax, 72
                                                                                        jne   .Lx34_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx34_44
                                                                                        jmp   .Lx34_45
.Lx34_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_53
                        cmp              eax, 104
                                                                                        je    .Lx34_53
                        cmp              eax, 72
                                                                                        jne   .Lx34_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx34_53
                                                                                        jmp   .Lx34_46
.Lx34_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx34_53
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
                                                                                        jmp   .Lx34_51
.Lx34_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_47
                        cmp              eax, 104
                                                                                        je    .Lx34_47
                        cmp              eax, 72
                                                                                        jne   .Lx34_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx34_47
                                                                                        jmp   .Lx34_48
.Lx34_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx34_53
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
                                                                                        jmp   .Lx34_51
.Lx34_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx34_49
                        cmp              edx, 80
                                                                                        je    .Lx34_53
                                                                                        jmp   .Lx34_52
.Lx34_49:
                        cmp              edx, 80
                                                                                        je    .Lx34_52
                        cmp              ecx, 5
                                                                                        je    .Lx34_53
                        cmp              edx, 5
                                                                                        je    .Lx34_53
                        cmp              ecx, 3
                                                                                        jne   .Lx34_50
                        cmp              edx, 3
                                                                                        jne   .Lx34_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx34_51
                                                                                        jmp   .Lx34_52
.Lx34_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx34_53
.Lx34_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx34_54
.Lx34_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx34_54
.Lx34_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx34_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
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
.Lx39_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx39_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx39_41
                        cmp              esi, 1
                                                                                        jne   .Lx39_55
                        mov              r8, rax
                                                                                        jmp   .Lx39_40
.Lx39_55:
                        cmp              esi, 2
                                                                                        jne   .Lx39_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx39_41
                        mov              r8, rax
                                                                                        jmp   .Lx39_40
.Lx39_56:
                        cmp              eax, 72
                                                                                        jne   .Lx39_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx39_41
                        cmp              rax, r8
                                                                                        je    .Lx39_41
                        mov              r8, rax
                                                                                        jmp   .Lx39_40
.Lx39_41:
                        lea              r9, [rbp + 160]
.Lx39_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx39_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx39_43
                        cmp              esi, 1
                                                                                        jne   .Lx39_57
                        mov              r9, rax
                                                                                        jmp   .Lx39_42
.Lx39_57:
                        cmp              esi, 2
                                                                                        jne   .Lx39_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx39_43
                        mov              r9, rax
                                                                                        jmp   .Lx39_42
.Lx39_58:
                        cmp              eax, 72
                                                                                        jne   .Lx39_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx39_43
                        cmp              rax, r9
                                                                                        je    .Lx39_43
                        mov              r9, rax
                                                                                        jmp   .Lx39_42
.Lx39_43:
                        cmp              r8, r9
                                                                                        je    .Lx39_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx39_44
                        cmp              eax, 104
                                                                                        je    .Lx39_44
                        cmp              eax, 72
                                                                                        jne   .Lx39_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx39_44
                                                                                        jmp   .Lx39_45
.Lx39_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx39_53
                        cmp              eax, 104
                                                                                        je    .Lx39_53
                        cmp              eax, 72
                                                                                        jne   .Lx39_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx39_53
                                                                                        jmp   .Lx39_46
.Lx39_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx39_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx39_53
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
                                                                                        jmp   .Lx39_51
.Lx39_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx39_47
                        cmp              eax, 104
                                                                                        je    .Lx39_47
                        cmp              eax, 72
                                                                                        jne   .Lx39_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx39_47
                                                                                        jmp   .Lx39_48
.Lx39_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx39_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx39_53
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
                                                                                        jmp   .Lx39_51
.Lx39_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx39_49
                        cmp              edx, 80
                                                                                        je    .Lx39_53
                                                                                        jmp   .Lx39_52
.Lx39_49:
                        cmp              edx, 80
                                                                                        je    .Lx39_52
                        cmp              ecx, 5
                                                                                        je    .Lx39_53
                        cmp              edx, 5
                                                                                        je    .Lx39_53
                        cmp              ecx, 3
                                                                                        jne   .Lx39_50
                        cmp              edx, 3
                                                                                        jne   .Lx39_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx39_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx39_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx39_51
                                                                                        jmp   .Lx39_52
.Lx39_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx39_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx39_53
.Lx39_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx39_54
.Lx39_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx39_54
.Lx39_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx39_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_differ$2F2_γ
n15_suspend_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
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
                                                                                        jne   .Lx42_240
                        add              rsp, 112
                                                                                        jmp   proc_differ$2F2_ω
.Lx42_240:
                        add              rsp, 112
                                                                                        jmp   proc_differ$2F2_ω
n16_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_differ$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_β:
                                                                                        jmp   qword ptr [rbp + 496]
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_next_day$2F2_α
proc_next_day$2F2_α:
proc_next_day$2F2_α_body:
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
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
                                                                                        jne   .Lx84_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx84_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx84_101
.Lx84_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx84_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx84_240
                        add              rsp, 112
                                                                                        jmp   proc_next_day$2F2_ω
.Lx84_240:
                                                                                        jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 6
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n46_call_builtin_prolog_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx88_2]
                                                                                        jmp   .Lx88_3
.Lx88_2:
                        .quad            .Lx88_2_s
.Lx88_2_s:
                        .string          "monday"
.Lx88_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_builtin_prolog_α
                                                                                        jmp   n47_var_ref_α
n46_call_builtin_prolog_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 7
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n49_call_builtin_prolog_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx92_2]
                                                                                        jmp   .Lx92_3
.Lx92_2:
                        .quad            .Lx92_2_s
.Lx92_2_s:
                        .string          "tuesday"
.Lx92_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_builtin_prolog_α
                                                                                        jmp   n50_suspend_α
n49_call_builtin_prolog_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_suspend_α:
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_next_day$2F2_γ
n50_suspend_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n52_var_ref_α
n51_call_builtin_prolog_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 7
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n54_call_builtin_prolog_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx99_2]
                                                                                        jmp   .Lx99_3
.Lx99_2:
                        .quad            .Lx99_2_s
.Lx99_2_s:
                        .string          "tuesday"
.Lx99_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n55_var_ref_α
n54_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 9
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n57_call_builtin_prolog_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx103_2]
                                                                                        jmp   .Lx103_3
.Lx103_2:
                        .quad            .Lx103_2_s
.Lx103_2_s:
                        .string          "wednesday"
.Lx103_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n58_suspend_α
n57_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_suspend_α:
                        lea              rax, [rip + n58_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n58_suspend_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n60_var_ref_α
n59_call_builtin_prolog_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 9
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n62_call_builtin_prolog_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx110_2]
                                                                                        jmp   .Lx110_3
.Lx110_2:
                        .quad            .Lx110_2_s
.Lx110_2_s:
                        .string          "wednesday"
.Lx110_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n67_call_builtin_prolog_α
                                                                                        jmp   n63_var_ref_α
n62_call_builtin_prolog_β:
                                                                                        jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 8
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n65_call_builtin_prolog_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx114_2]
                                                                                        jmp   .Lx114_3
.Lx114_2:
                        .quad            .Lx114_2_s
.Lx114_2_s:
                        .string          "thursday"
.Lx114_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n67_call_builtin_prolog_α
                                                                                        jmp   n66_suspend_α
n65_call_builtin_prolog_β:
                                                                                        jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_suspend_α:
                        lea              rax, [rip + n66_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n66_suspend_β:
                                                                                        jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n68_var_ref_α
n67_call_builtin_prolog_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 8
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n70_call_builtin_prolog_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx121_2]
                                                                                        jmp   .Lx121_3
.Lx121_2:
                        .quad            .Lx121_2_s
.Lx121_2_s:
                        .string          "thursday"
.Lx121_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n75_call_builtin_prolog_α
                                                                                        jmp   n71_var_ref_α
n70_call_builtin_prolog_β:
                                                                                        jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n73_call_builtin_prolog_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx125_2]
                                                                                        jmp   .Lx125_3
.Lx125_2:
                        .quad            .Lx125_2_s
.Lx125_2_s:
                        .string          "friday"
.Lx125_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n75_call_builtin_prolog_α
                                                                                        jmp   n74_suspend_α
n73_call_builtin_prolog_β:
                                                                                        jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_suspend_α:
                        lea              rax, [rip + n74_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n74_suspend_β:
                                                                                        jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n76_var_ref_α
n75_call_builtin_prolog_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 6
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n78_call_builtin_prolog_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx132_2]
                                                                                        jmp   .Lx132_3
.Lx132_2:
                        .quad            .Lx132_2_s
.Lx132_2_s:
                        .string          "friday"
.Lx132_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n83_call_builtin_prolog_α
                                                                                        jmp   n79_var_ref_α
n78_call_builtin_prolog_β:
                                                                                        jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 8
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n81_call_builtin_prolog_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx136_2]
                                                                                        jmp   .Lx136_3
.Lx136_2:
                        .quad            .Lx136_2_s
.Lx136_2_s:
                        .string          "saturday"
.Lx136_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n83_call_builtin_prolog_α
                                                                                        jmp   n82_suspend_α
n81_call_builtin_prolog_β:
                                                                                        jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_suspend_α:
                        lea              rax, [rip + n82_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n82_suspend_β:
                                                                                        jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
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
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   proc_next_day$2F2_ω
n83_call_builtin_prolog_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_store$2F1_α
proc_store$2F1_α:
proc_store$2F1_α_body:
                        lea              rax, [rip + n159_suspend_β]
                        mov              qword ptr [rbp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        sub              rsp, 560
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
                        mov              eax, 3
                                                                                        jmp   .Lx161_101
.Lx161_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx161_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx161_240
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
.Lx161_240:
                                                                                        jmp   n141_var_ref_α
n140_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx166_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx166_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_41
                        cmp              rax, r8
                                                                                        je    .Lx166_41
                        mov              r8, rax
                                                                                        jmp   .Lx166_40
.Lx166_41:
                        lea              r9, [rbp + 688]
.Lx166_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx166_44
                        cmp              eax, 72
                                                                                        jne   .Lx166_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx166_44
                                                                                        jmp   .Lx166_45
.Lx166_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_53
                        cmp              eax, 104
                                                                                        je    .Lx166_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx166_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx166_49
                        cmp              edx, 80
                                                                                        je    .Lx166_53
                                                                                        jmp   .Lx166_52
.Lx166_49:
                        cmp              edx, 80
                                                                                        je    .Lx166_52
                        cmp              ecx, 5
                                                                                        je    .Lx166_53
                        cmp              edx, 5
                                                                                        je    .Lx166_53
                        cmp              ecx, 3
                                                                                        jne   .Lx166_50
                        cmp              edx, 3
                                                                                        jne   .Lx166_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx166_54
.Lx166_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx166_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx166_240
                        add              rsp, 560
                                                                                        jmp   n160_call_builtin_prolog_α
.Lx166_240:
                                                                                        jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n146_lit_string_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 4
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n147_lit_string_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n148_lit_string_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 4
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n149_lit_string_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n150_lit_string_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 7
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n151_lit_string_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n152_lit_string_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 8
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n153_lit_string_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 2
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n154_call_builtin_prolog_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx178_240
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
.Lx178_240:
                                                                                        jmp   n155_call_builtin_prolog_α
n154_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx179_240
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
.Lx179_240:
                                                                                        jmp   n156_call_builtin_prolog_α
n155_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx180_240
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
.Lx180_240:
                                                                                        jmp   n157_call_builtin_prolog_α
n156_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx181_240
                        add              rsp, 560
                                                                                        jmp   n160_call_builtin_prolog_α
.Lx181_240:
                                                                                        jmp   n158_call_proc_staged_α
n157_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx183_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx183_21
.Lx183_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 176]                     # v
                        mov              rdx, qword ptr [rbp + 184]                     # v
                        call             rt_arg_stage@PLT
.Lx183_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx183_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx183_23
.Lx183_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 560]                     # v
                        mov              rdx, qword ptr [rbp + 568]                     # v
                        call             rt_arg_stage@PLT
.Lx183_23:
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx183_1
                        lea              rcx, [rip + .Lx183_3]
                        lea              rdx, [rip + .Lx183_4]
                                                                                        jmp   rax
.Lx183_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx183_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx183_2
.Lx183_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx183_2
.Lx183_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx183_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx183_2
.Lx183_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx183_2
.Lx183_1:
                        call             rt_faildescr@PLT
.Lx183_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx183_240
                        add              rsp, 560
                                                                                        jmp   n160_call_builtin_prolog_α
.Lx183_240:
                                                                                        jmp   n159_suspend_α
n158_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n159_suspend_α:
                        lea              rax, [rip + n159_suspend_β]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 560
                                                                                        jmp   proc_store$2F1_γ
n159_suspend_β:
                                                                                        jmp   n158_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
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
                                                                                        je    proc_store$2F1_ω
                                                                                        jmp   proc_store$2F1_ω
n160_call_builtin_prolog_β:
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_β:
                                                                                        jmp   qword ptr [rbp + 736]
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        sub              rsp, 2368
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
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx314_101
.Lx314_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx314_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx314_240
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx314_240:
                                                                                        jmp   n188_var_ref_α
n187_call_builtin_prolog_β:
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 4688], 2                      # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n190_lit_string_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 4592], 2                      # result
                        mov              dword ptr [rbp + 4596], 6
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n191_lit_string_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 4576], 2                      # result
                        mov              dword ptr [rbp + 4580], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n192_lit_string_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 4480], 2                      # result
                        mov              dword ptr [rbp + 4484], 7
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n193_lit_string_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 4464], 2                      # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n194_lit_string_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 4368], 2                      # result
                        mov              dword ptr [rbp + 4372], 9
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n195_lit_string_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 4352], 2                      # result
                        mov              dword ptr [rbp + 4356], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n196_lit_string_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 4256], 2                      # result
                        mov              dword ptr [rbp + 4260], 8
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n197_lit_string_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 4240], 2                      # result
                        mov              dword ptr [rbp + 4244], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n198_lit_string_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 4144], 2                      # result
                        mov              dword ptr [rbp + 4148], 6
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n199_lit_string_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 4128], 2                      # result
                        mov              dword ptr [rbp + 4132], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n200_lit_string_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 4032], 2                      # result
                        mov              dword ptr [rbp + 4036], 8
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n201_lit_string_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 4016], 2                      # result
                        mov              dword ptr [rbp + 4020], 2
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n202_call_builtin_prolog_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4064]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx330_240
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx330_240:
                                                                                        jmp   n203_call_builtin_prolog_α
n202_call_builtin_prolog_β:
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4200], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4216], rax
                        lea              rdi, [rbp + 4176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx331_240
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx331_240:
                                                                                        jmp   n204_call_builtin_prolog_α
n203_call_builtin_prolog_β:
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4328], rax
                        lea              rdi, [rbp + 4288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx332_240
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx332_240:
                                                                                        jmp   n205_call_builtin_prolog_α
n204_call_builtin_prolog_β:
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4408], rax
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4440], rax
                        lea              rdi, [rbp + 4400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx333_240
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx333_240:
                                                                                        jmp   n206_call_builtin_prolog_α
n205_call_builtin_prolog_β:
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4552], rax
                        lea              rdi, [rbp + 4512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx334_240
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx334_240:
                                                                                        jmp   n207_call_builtin_prolog_α
n206_call_builtin_prolog_β:
                        add              rsp, 2368
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4632], rax
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4648], rax
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4664], rax
                        lea              rdi, [rbp + 4624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx335_240
                        add              rsp, 2368
                                                                                        jmp   n313_call_builtin_prolog_α
.Lx335_240:
                                                                                        jmp   n208_call_proc_staged_α
n207_call_builtin_prolog_β:
                        add              rsp, 2368
                                                                                        jmp   n313_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              qword ptr [rbp + 3968], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx337_20
                        mov              rax, qword ptr [rbp + 4000]
                        mov              rdx, qword ptr [rbp + 4008]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx337_21
.Lx337_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 4000]                    # v
                        mov              rdx, qword ptr [rbp + 4008]                    # v
                        call             rt_arg_stage@PLT
.Lx337_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx337_22
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx337_23
.Lx337_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 4608]                    # v
                        mov              rdx, qword ptr [rbp + 4616]                    # v
                        call             rt_arg_stage@PLT
.Lx337_23:
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx337_1
                        lea              rcx, [rip + .Lx337_3]
                        lea              rdx, [rip + .Lx337_4]
                                                                                        jmp   rax
.Lx337_3:
                        mov              qword ptr [rbp + 3976], rsp
                        mov              rax, qword ptr [rbp + 3968]
                        test             rax, rax
                                                                                        jne   .Lx337_5
                        mov              qword ptr [rbp + 3968], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx337_2
.Lx337_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx337_2
.Lx337_4:
                        mov              rax, qword ptr [rbp + 3968]
                        test             rax, rax
                                                                                        jne   .Lx337_6
                        mov              qword ptr [rbp + 3968], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx337_2
.Lx337_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx337_2
.Lx337_1:
                        call             rt_faildescr@PLT
.Lx337_2:
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx337_240
                        add              rsp, 2368
                                                                                        jmp   n313_call_builtin_prolog_α
.Lx337_240:
                                                                                        jmp   n209_var_ref_α
n208_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3976]
                                                                                        jmp   qword ptr [rsp]
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n210_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_proc_staged_α:
                        mov              qword ptr [rbp + 3872], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx341_20
                        mov              rax, qword ptr [rbp + 3904]
                        mov              rdx, qword ptr [rbp + 3912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx341_21
.Lx341_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3904]                    # v
                        mov              rdx, qword ptr [rbp + 3912]                    # v
                        call             rt_arg_stage@PLT
.Lx341_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx341_1
                        lea              rcx, [rip + .Lx341_3]
                        lea              rdx, [rip + .Lx341_4]
                                                                                        jmp   rax
.Lx341_3:
                        mov              qword ptr [rbp + 3880], rsp
                        mov              rax, qword ptr [rbp + 3872]
                        test             rax, rax
                                                                                        jne   .Lx341_5
                        mov              qword ptr [rbp + 3872], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx341_2
.Lx341_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx341_2
.Lx341_4:
                        mov              rax, qword ptr [rbp + 3872]
                        test             rax, rax
                                                                                        jne   .Lx341_6
                        mov              qword ptr [rbp + 3872], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx341_2
.Lx341_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx341_2
.Lx341_1:
                        call             rt_faildescr@PLT
.Lx341_2:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              eax, 104
                                                                                        je    n208_call_proc_staged_β
                                                                                        jmp   n211_var_ref_α
n210_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3880]
                                                                                        jmp   qword ptr [rsp]
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n212_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              qword ptr [rbp + 3792], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx345_20
                        mov              rax, qword ptr [rbp + 3824]
                        mov              rdx, qword ptr [rbp + 3832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx345_21
.Lx345_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3824]                    # v
                        mov              rdx, qword ptr [rbp + 3832]                    # v
                        call             rt_arg_stage@PLT
.Lx345_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx345_1
                        lea              rcx, [rip + .Lx345_3]
                        lea              rdx, [rip + .Lx345_4]
                                                                                        jmp   rax
.Lx345_3:
                        mov              qword ptr [rbp + 3800], rsp
                        mov              rax, qword ptr [rbp + 3792]
                        test             rax, rax
                                                                                        jne   .Lx345_5
                        mov              qword ptr [rbp + 3792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx345_2
.Lx345_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx345_2
.Lx345_4:
                        mov              rax, qword ptr [rbp + 3792]
                        test             rax, rax
                                                                                        jne   .Lx345_6
                        mov              qword ptr [rbp + 3792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx345_2
.Lx345_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx345_2
.Lx345_1:
                        call             rt_faildescr@PLT
.Lx345_2:
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 104
                                                                                        je    n210_call_proc_staged_β
                                                                                        jmp   n213_var_ref_α
n212_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3800]
                                                                                        jmp   qword ptr [rsp]
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n214_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_proc_staged_α:
                        mov              qword ptr [rbp + 3712], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx349_20
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx349_21
.Lx349_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3744]                    # v
                        mov              rdx, qword ptr [rbp + 3752]                    # v
                        call             rt_arg_stage@PLT
.Lx349_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx349_1
                        lea              rcx, [rip + .Lx349_3]
                        lea              rdx, [rip + .Lx349_4]
                                                                                        jmp   rax
.Lx349_3:
                        mov              qword ptr [rbp + 3720], rsp
                        mov              rax, qword ptr [rbp + 3712]
                        test             rax, rax
                                                                                        jne   .Lx349_5
                        mov              qword ptr [rbp + 3712], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx349_2
.Lx349_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx349_2
.Lx349_4:
                        mov              rax, qword ptr [rbp + 3712]
                        test             rax, rax
                                                                                        jne   .Lx349_6
                        mov              qword ptr [rbp + 3712], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx349_2
.Lx349_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx349_2
.Lx349_1:
                        call             rt_faildescr@PLT
.Lx349_2:
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 104
                                                                                        je    n212_call_proc_staged_β
                                                                                        jmp   n215_var_ref_α
n214_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3720]
                                                                                        jmp   qword ptr [rsp]
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n216_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n216_call_proc_staged_α:
                        mov              qword ptr [rbp + 3632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx353_20
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx353_21
.Lx353_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3664]                    # v
                        mov              rdx, qword ptr [rbp + 3672]                    # v
                        call             rt_arg_stage@PLT
.Lx353_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx353_1
                        lea              rcx, [rip + .Lx353_3]
                        lea              rdx, [rip + .Lx353_4]
                                                                                        jmp   rax
.Lx353_3:
                        mov              qword ptr [rbp + 3640], rsp
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx353_5
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx353_2
.Lx353_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx353_2
.Lx353_4:
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx353_6
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx353_2
.Lx353_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx353_2
.Lx353_1:
                        call             rt_faildescr@PLT
.Lx353_2:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 104
                                                                                        je    n214_call_proc_staged_β
                                                                                        jmp   n217_var_ref_α
n216_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3640]
                                                                                        jmp   qword ptr [rsp]
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n218_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n219_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              qword ptr [rbp + 3536], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx359_20
                        mov              rax, qword ptr [rbp + 3568]
                        mov              rdx, qword ptr [rbp + 3576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx359_21
.Lx359_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3568]                    # v
                        mov              rdx, qword ptr [rbp + 3576]                    # v
                        call             rt_arg_stage@PLT
.Lx359_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx359_22
                        mov              rax, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx359_23
.Lx359_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3584]                    # v
                        mov              rdx, qword ptr [rbp + 3592]                    # v
                        call             rt_arg_stage@PLT
.Lx359_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx359_1
                        lea              rcx, [rip + .Lx359_3]
                        lea              rdx, [rip + .Lx359_4]
                                                                                        jmp   rax
.Lx359_3:
                        mov              qword ptr [rbp + 3544], rsp
                        mov              rax, qword ptr [rbp + 3536]
                        test             rax, rax
                                                                                        jne   .Lx359_5
                        mov              qword ptr [rbp + 3536], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx359_2
.Lx359_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx359_2
.Lx359_4:
                        mov              rax, qword ptr [rbp + 3536]
                        test             rax, rax
                                                                                        jne   .Lx359_6
                        mov              qword ptr [rbp + 3536], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx359_2
.Lx359_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx359_2
.Lx359_1:
                        call             rt_faildescr@PLT
.Lx359_2:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 104
                                                                                        je    n216_call_proc_staged_β
                                                                                        jmp   n220_var_ref_α
n219_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3544]
                                                                                        jmp   qword ptr [rsp]
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n222_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_proc_staged_α:
                        mov              qword ptr [rbp + 3424], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx365_20
                        mov              rax, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx365_21
.Lx365_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3456]                    # v
                        mov              rdx, qword ptr [rbp + 3464]                    # v
                        call             rt_arg_stage@PLT
.Lx365_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx365_22
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx365_23
.Lx365_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3472]                    # v
                        mov              rdx, qword ptr [rbp + 3480]                    # v
                        call             rt_arg_stage@PLT
.Lx365_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx365_1
                        lea              rcx, [rip + .Lx365_3]
                        lea              rdx, [rip + .Lx365_4]
                                                                                        jmp   rax
.Lx365_3:
                        mov              qword ptr [rbp + 3432], rsp
                        mov              rax, qword ptr [rbp + 3424]
                        test             rax, rax
                                                                                        jne   .Lx365_5
                        mov              qword ptr [rbp + 3424], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx365_2
.Lx365_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx365_2
.Lx365_4:
                        mov              rax, qword ptr [rbp + 3424]
                        test             rax, rax
                                                                                        jne   .Lx365_6
                        mov              qword ptr [rbp + 3424], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx365_2
.Lx365_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx365_2
.Lx365_1:
                        call             rt_faildescr@PLT
.Lx365_2:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 104
                                                                                        je    n219_call_proc_staged_β
                                                                                        jmp   n223_var_ref_α
n222_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3432]
                                                                                        jmp   qword ptr [rsp]
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n224_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n225_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_proc_staged_α:
                        mov              qword ptr [rbp + 3312], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx371_20
                        mov              rax, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx371_21
.Lx371_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3344]                    # v
                        mov              rdx, qword ptr [rbp + 3352]                    # v
                        call             rt_arg_stage@PLT
.Lx371_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx371_22
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx371_23
.Lx371_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3360]                    # v
                        mov              rdx, qword ptr [rbp + 3368]                    # v
                        call             rt_arg_stage@PLT
.Lx371_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx371_1
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4]
                                                                                        jmp   rax
.Lx371_3:
                        mov              qword ptr [rbp + 3320], rsp
                        mov              rax, qword ptr [rbp + 3312]
                        test             rax, rax
                                                                                        jne   .Lx371_5
                        mov              qword ptr [rbp + 3312], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_4:
                        mov              rax, qword ptr [rbp + 3312]
                        test             rax, rax
                                                                                        jne   .Lx371_6
                        mov              qword ptr [rbp + 3312], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_1:
                        call             rt_faildescr@PLT
.Lx371_2:
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 104
                                                                                        je    n222_call_proc_staged_β
                                                                                        jmp   n226_var_ref_α
n225_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3320]
                                                                                        jmp   qword ptr [rsp]
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n227_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n228_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_proc_staged_α:
                        mov              qword ptr [rbp + 3200], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx377_20
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx377_21
.Lx377_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3232]                    # v
                        mov              rdx, qword ptr [rbp + 3240]                    # v
                        call             rt_arg_stage@PLT
.Lx377_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx377_22
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx377_23
.Lx377_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3248]                    # v
                        mov              rdx, qword ptr [rbp + 3256]                    # v
                        call             rt_arg_stage@PLT
.Lx377_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx377_1
                        lea              rcx, [rip + .Lx377_3]
                        lea              rdx, [rip + .Lx377_4]
                                                                                        jmp   rax
.Lx377_3:
                        mov              qword ptr [rbp + 3208], rsp
                        mov              rax, qword ptr [rbp + 3200]
                        test             rax, rax
                                                                                        jne   .Lx377_5
                        mov              qword ptr [rbp + 3200], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx377_2
.Lx377_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx377_2
.Lx377_4:
                        mov              rax, qword ptr [rbp + 3200]
                        test             rax, rax
                                                                                        jne   .Lx377_6
                        mov              qword ptr [rbp + 3200], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx377_2
.Lx377_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx377_2
.Lx377_1:
                        call             rt_faildescr@PLT
.Lx377_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    n225_call_proc_staged_β
                                                                                        jmp   n229_var_ref_α
n228_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3208]
                                                                                        jmp   qword ptr [rsp]
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n230_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n231_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_proc_staged_α:
                        mov              qword ptr [rbp + 3088], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx383_20
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx383_21
.Lx383_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3120]                    # v
                        mov              rdx, qword ptr [rbp + 3128]                    # v
                        call             rt_arg_stage@PLT
.Lx383_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx383_22
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx383_23
.Lx383_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3136]                    # v
                        mov              rdx, qword ptr [rbp + 3144]                    # v
                        call             rt_arg_stage@PLT
.Lx383_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx383_1
                        lea              rcx, [rip + .Lx383_3]
                        lea              rdx, [rip + .Lx383_4]
                                                                                        jmp   rax
.Lx383_3:
                        mov              qword ptr [rbp + 3096], rsp
                        mov              rax, qword ptr [rbp + 3088]
                        test             rax, rax
                                                                                        jne   .Lx383_5
                        mov              qword ptr [rbp + 3088], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx383_2
.Lx383_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx383_2
.Lx383_4:
                        mov              rax, qword ptr [rbp + 3088]
                        test             rax, rax
                                                                                        jne   .Lx383_6
                        mov              qword ptr [rbp + 3088], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx383_2
.Lx383_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx383_2
.Lx383_1:
                        call             rt_faildescr@PLT
.Lx383_2:
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 104
                                                                                        je    n228_call_proc_staged_β
                                                                                        jmp   n232_var_ref_α
n231_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3096]
                                                                                        jmp   qword ptr [rsp]
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n233_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n234_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_proc_staged_α:
                        mov              qword ptr [rbp + 2976], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx389_20
                        mov              rax, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx389_21
.Lx389_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3008]                    # v
                        mov              rdx, qword ptr [rbp + 3016]                    # v
                        call             rt_arg_stage@PLT
.Lx389_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx389_22
                        mov              rax, qword ptr [rbp + 3024]
                        mov              rdx, qword ptr [rbp + 3032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx389_23
.Lx389_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3024]                    # v
                        mov              rdx, qword ptr [rbp + 3032]                    # v
                        call             rt_arg_stage@PLT
.Lx389_23:
                        mov              edi, 0                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx389_1
                        lea              rcx, [rip + .Lx389_3]
                        lea              rdx, [rip + .Lx389_4]
                                                                                        jmp   rax
.Lx389_3:
                        mov              qword ptr [rbp + 2984], rsp
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx389_5
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx389_2
.Lx389_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx389_2
.Lx389_4:
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx389_6
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx389_2
.Lx389_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx389_2
.Lx389_1:
                        call             rt_faildescr@PLT
.Lx389_2:
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 104
                                                                                        je    n231_call_proc_staged_β
                                                                                        jmp   n235_var_ref_α
n234_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2984]
                                                                                        jmp   qword ptr [rsp]
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n237_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        mov              qword ptr [rbp + 2864], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_20
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx395_21
.Lx395_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2896]                    # v
                        mov              rdx, qword ptr [rbp + 2904]                    # v
                        call             rt_arg_stage@PLT
.Lx395_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_22
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx395_23
.Lx395_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2912]                    # v
                        mov              rdx, qword ptr [rbp + 2920]                    # v
                        call             rt_arg_stage@PLT
.Lx395_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx395_1
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4]
                                                                                        jmp   rax
.Lx395_3:
                        mov              qword ptr [rbp + 2872], rsp
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx395_5
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_4:
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx395_6
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_1:
                        call             rt_faildescr@PLT
.Lx395_2:
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 104
                                                                                        je    n234_call_proc_staged_β
                                                                                        jmp   n238_var_ref_α
n237_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2872]
                                                                                        jmp   qword ptr [rsp]
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n239_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n240_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_proc_staged_α:
                        mov              qword ptr [rbp + 2752], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_20
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx401_21
.Lx401_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2784]                    # v
                        mov              rdx, qword ptr [rbp + 2792]                    # v
                        call             rt_arg_stage@PLT
.Lx401_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_22
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx401_23
.Lx401_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2800]                    # v
                        mov              rdx, qword ptr [rbp + 2808]                    # v
                        call             rt_arg_stage@PLT
.Lx401_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx401_1
                        lea              rcx, [rip + .Lx401_3]
                        lea              rdx, [rip + .Lx401_4]
                                                                                        jmp   rax
.Lx401_3:
                        mov              qword ptr [rbp + 2760], rsp
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax
                                                                                        jne   .Lx401_5
                        mov              qword ptr [rbp + 2752], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx401_2
.Lx401_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx401_2
.Lx401_4:
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax
                                                                                        jne   .Lx401_6
                        mov              qword ptr [rbp + 2752], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx401_2
.Lx401_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx401_2
.Lx401_1:
                        call             rt_faildescr@PLT
.Lx401_2:
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n241_var_ref_α
n240_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2760]
                                                                                        jmp   qword ptr [rsp]
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n242_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n243_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_proc_staged_α:
                        mov              qword ptr [rbp + 2640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_20
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx407_21
.Lx407_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2672]                    # v
                        mov              rdx, qword ptr [rbp + 2680]                    # v
                        call             rt_arg_stage@PLT
.Lx407_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_22
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx407_23
.Lx407_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2688]                    # v
                        mov              rdx, qword ptr [rbp + 2696]                    # v
                        call             rt_arg_stage@PLT
.Lx407_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx407_1
                        lea              rcx, [rip + .Lx407_3]
                        lea              rdx, [rip + .Lx407_4]
                                                                                        jmp   rax
.Lx407_3:
                        mov              qword ptr [rbp + 2648], rsp
                        mov              rax, qword ptr [rbp + 2640]
                        test             rax, rax
                                                                                        jne   .Lx407_5
                        mov              qword ptr [rbp + 2640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_4:
                        mov              rax, qword ptr [rbp + 2640]
                        test             rax, rax
                                                                                        jne   .Lx407_6
                        mov              qword ptr [rbp + 2640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_1:
                        call             rt_faildescr@PLT
.Lx407_2:
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 104
                                                                                        je    n240_call_proc_staged_β
                                                                                        jmp   n244_var_ref_α
n243_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2648]
                                                                                        jmp   qword ptr [rsp]
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n245_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n246_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_proc_staged_α:
                        mov              qword ptr [rbp + 2528], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx413_20
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx413_21
.Lx413_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2560]                    # v
                        mov              rdx, qword ptr [rbp + 2568]                    # v
                        call             rt_arg_stage@PLT
.Lx413_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx413_22
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx413_23
.Lx413_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2576]                    # v
                        mov              rdx, qword ptr [rbp + 2584]                    # v
                        call             rt_arg_stage@PLT
.Lx413_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx413_1
                        lea              rcx, [rip + .Lx413_3]
                        lea              rdx, [rip + .Lx413_4]
                                                                                        jmp   rax
.Lx413_3:
                        mov              qword ptr [rbp + 2536], rsp
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx413_5
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx413_2
.Lx413_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx413_2
.Lx413_4:
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx413_6
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx413_2
.Lx413_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx413_2
.Lx413_1:
                        call             rt_faildescr@PLT
.Lx413_2:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n243_call_proc_staged_β
                                                                                        jmp   n247_var_ref_α
n246_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2536]
                                                                                        jmp   qword ptr [rsp]
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n248_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n249_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_proc_staged_α:
                        mov              qword ptr [rbp + 2416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx419_20
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx419_21
.Lx419_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2448]                    # v
                        mov              rdx, qword ptr [rbp + 2456]                    # v
                        call             rt_arg_stage@PLT
.Lx419_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx419_22
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx419_23
.Lx419_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2464]                    # v
                        mov              rdx, qword ptr [rbp + 2472]                    # v
                        call             rt_arg_stage@PLT
.Lx419_23:
                        mov              edi, 1                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx419_1
                        lea              rcx, [rip + .Lx419_3]
                        lea              rdx, [rip + .Lx419_4]
                                                                                        jmp   rax
.Lx419_3:
                        mov              qword ptr [rbp + 2424], rsp
                        mov              rax, qword ptr [rbp + 2416]
                        test             rax, rax
                                                                                        jne   .Lx419_5
                        mov              qword ptr [rbp + 2416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx419_2
.Lx419_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx419_2
.Lx419_4:
                        mov              rax, qword ptr [rbp + 2416]
                        test             rax, rax
                                                                                        jne   .Lx419_6
                        mov              qword ptr [rbp + 2416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx419_2
.Lx419_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx419_2
.Lx419_1:
                        call             rt_faildescr@PLT
.Lx419_2:
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 104
                                                                                        je    n246_call_proc_staged_β
                                                                                        jmp   n250_var_ref_α
n249_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2424]
                                                                                        jmp   qword ptr [rsp]
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "next_day/2"
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n252_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_proc_staged_α:
                        mov              qword ptr [rbp + 2304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx425_20
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx425_21
.Lx425_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2336]                    # v
                        mov              rdx, qword ptr [rbp + 2344]                    # v
                        call             rt_arg_stage@PLT
.Lx425_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx425_22
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx425_23
.Lx425_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2352]                    # v
                        mov              rdx, qword ptr [rbp + 2360]                    # v
                        call             rt_arg_stage@PLT
.Lx425_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx425_1
                        lea              rcx, [rip + .Lx425_3]
                        lea              rdx, [rip + .Lx425_4]
                                                                                        jmp   rax
.Lx425_3:
                        mov              qword ptr [rbp + 2312], rsp
                        mov              rax, qword ptr [rbp + 2304]
                        test             rax, rax
                                                                                        jne   .Lx425_5
                        mov              qword ptr [rbp + 2304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx425_2
.Lx425_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx425_2
.Lx425_4:
                        mov              rax, qword ptr [rbp + 2304]
                        test             rax, rax
                                                                                        jne   .Lx425_6
                        mov              qword ptr [rbp + 2304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx425_2
.Lx425_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx425_2
.Lx425_1:
                        call             rt_faildescr@PLT
.Lx425_2:
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx425_240
                        add              rsp, 2368
                                                                                        jmp   n253_var_ref_α
.Lx425_240:
                                                                                        jmp   n249_call_proc_staged_β
n252_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2312]
                                                                                        jmp   qword ptr [rsp]
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n254_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n255_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_proc_staged_α:
                        mov              qword ptr [rbp + 2192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx431_20
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx431_21
.Lx431_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2224]                    # v
                        mov              rdx, qword ptr [rbp + 2232]                    # v
                        call             rt_arg_stage@PLT
.Lx431_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx431_22
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx431_23
.Lx431_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2240]                    # v
                        mov              rdx, qword ptr [rbp + 2248]                    # v
                        call             rt_arg_stage@PLT
.Lx431_23:
                        mov              edi, 6                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx431_1
                        lea              rcx, [rip + .Lx431_3]
                        lea              rdx, [rip + .Lx431_4]
                                                                                        jmp   rax
.Lx431_3:
                        mov              qword ptr [rbp + 2200], rsp
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax
                                                                                        jne   .Lx431_5
                        mov              qword ptr [rbp + 2192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx431_2
.Lx431_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx431_2
.Lx431_4:
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax
                                                                                        jne   .Lx431_6
                        mov              qword ptr [rbp + 2192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx431_2
.Lx431_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx431_2
.Lx431_1:
                        call             rt_faildescr@PLT
.Lx431_2:
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n249_call_proc_staged_β
                                                                                        jmp   n256_var_ref_α
n255_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2200]
                                                                                        jmp   qword ptr [rsp]
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "prev_day/2"
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n258_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_proc_staged_α:
                        mov              qword ptr [rbp + 2080], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx437_20
                        mov              rax, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx437_21
.Lx437_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2112]                    # v
                        mov              rdx, qword ptr [rbp + 2120]                    # v
                        call             rt_arg_stage@PLT
.Lx437_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx437_22
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx437_23
.Lx437_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2128]                    # v
                        mov              rdx, qword ptr [rbp + 2136]                    # v
                        call             rt_arg_stage@PLT
.Lx437_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx437_1
                        lea              rcx, [rip + .Lx437_3]
                        lea              rdx, [rip + .Lx437_4]
                                                                                        jmp   rax
.Lx437_3:
                        mov              qword ptr [rbp + 2088], rsp
                        mov              rax, qword ptr [rbp + 2080]
                        test             rax, rax
                                                                                        jne   .Lx437_5
                        mov              qword ptr [rbp + 2080], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx437_2
.Lx437_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx437_2
.Lx437_4:
                        mov              rax, qword ptr [rbp + 2080]
                        test             rax, rax
                                                                                        jne   .Lx437_6
                        mov              qword ptr [rbp + 2080], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx437_2
.Lx437_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx437_2
.Lx437_1:
                        call             rt_faildescr@PLT
.Lx437_2:
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 104
                                                                                        je    n255_call_proc_staged_β
                                                                                        jmp   n259_var_ref_α
n258_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2088]
                                                                                        jmp   qword ptr [rsp]
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n260_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n261_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_proc_staged_α:
                        mov              qword ptr [rbp + 1968], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx443_20
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx443_21
.Lx443_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2000]                    # v
                        mov              rdx, qword ptr [rbp + 2008]                    # v
                        call             rt_arg_stage@PLT
.Lx443_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx443_22
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx443_23
.Lx443_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2016]                    # v
                        mov              rdx, qword ptr [rbp + 2024]                    # v
                        call             rt_arg_stage@PLT
.Lx443_23:
                        mov              edi, 6                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx443_1
                        lea              rcx, [rip + .Lx443_3]
                        lea              rdx, [rip + .Lx443_4]
                                                                                        jmp   rax
.Lx443_3:
                        mov              qword ptr [rbp + 1976], rsp
                        mov              rax, qword ptr [rbp + 1968]
                        test             rax, rax
                                                                                        jne   .Lx443_5
                        mov              qword ptr [rbp + 1968], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx443_2
.Lx443_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx443_2
.Lx443_4:
                        mov              rax, qword ptr [rbp + 1968]
                        test             rax, rax
                                                                                        jne   .Lx443_6
                        mov              qword ptr [rbp + 1968], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx443_2
.Lx443_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx443_2
.Lx443_1:
                        call             rt_faildescr@PLT
.Lx443_2:
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 104
                                                                                        je    n258_call_proc_staged_β
                                                                                        jmp   n262_var_ref_α
n261_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1976]
                                                                                        jmp   qword ptr [rsp]
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "prev_day/2"
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n264_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_proc_staged_α:
                        mov              qword ptr [rbp + 1856], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx449_20
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx449_21
.Lx449_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1888]                    # v
                        mov              rdx, qword ptr [rbp + 1896]                    # v
                        call             rt_arg_stage@PLT
.Lx449_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx449_22
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx449_23
.Lx449_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1904]                    # v
                        mov              rdx, qword ptr [rbp + 1912]                    # v
                        call             rt_arg_stage@PLT
.Lx449_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx449_1
                        lea              rcx, [rip + .Lx449_3]
                        lea              rdx, [rip + .Lx449_4]
                                                                                        jmp   rax
.Lx449_3:
                        mov              qword ptr [rbp + 1864], rsp
                        mov              rax, qword ptr [rbp + 1856]
                        test             rax, rax
                                                                                        jne   .Lx449_5
                        mov              qword ptr [rbp + 1856], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx449_2
.Lx449_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx449_2
.Lx449_4:
                        mov              rax, qword ptr [rbp + 1856]
                        test             rax, rax
                                                                                        jne   .Lx449_6
                        mov              qword ptr [rbp + 1856], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx449_2
.Lx449_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx449_2
.Lx449_1:
                        call             rt_faildescr@PLT
.Lx449_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n261_call_proc_staged_β
                                                                                        jmp   n265_var_ref_α
n264_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1864]
                                                                                        jmp   qword ptr [rsp]
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n266_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n267_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n267_call_proc_staged_α:
                        mov              qword ptr [rbp + 1744], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx455_20
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx455_21
.Lx455_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1776]                    # v
                        mov              rdx, qword ptr [rbp + 1784]                    # v
                        call             rt_arg_stage@PLT
.Lx455_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx455_22
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx455_23
.Lx455_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1792]                    # v
                        mov              rdx, qword ptr [rbp + 1800]                    # v
                        call             rt_arg_stage@PLT
.Lx455_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx455_1
                        lea              rcx, [rip + .Lx455_3]
                        lea              rdx, [rip + .Lx455_4]
                                                                                        jmp   rax
.Lx455_3:
                        mov              qword ptr [rbp + 1752], rsp
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx455_5
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx455_2
.Lx455_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx455_2
.Lx455_4:
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx455_6
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx455_2
.Lx455_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx455_2
.Lx455_1:
                        call             rt_faildescr@PLT
.Lx455_2:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n264_call_proc_staged_β
                                                                                        jmp   n268_var_ref_α
n267_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1752]
                                                                                        jmp   qword ptr [rsp]
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n269_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n270_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        mov              qword ptr [rbp + 1632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx461_20
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx461_21
.Lx461_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1664]                    # v
                        mov              rdx, qword ptr [rbp + 1672]                    # v
                        call             rt_arg_stage@PLT
.Lx461_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx461_22
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx461_23
.Lx461_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1680]                    # v
                        mov              rdx, qword ptr [rbp + 1688]                    # v
                        call             rt_arg_stage@PLT
.Lx461_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx461_1
                        lea              rcx, [rip + .Lx461_3]
                        lea              rdx, [rip + .Lx461_4]
                                                                                        jmp   rax
.Lx461_3:
                        mov              qword ptr [rbp + 1640], rsp
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx461_5
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx461_2
.Lx461_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx461_2
.Lx461_4:
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx461_6
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx461_2
.Lx461_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx461_2
.Lx461_1:
                        call             rt_faildescr@PLT
.Lx461_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n267_call_proc_staged_β
                                                                                        jmp   n271_var_ref_α
n270_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1640]
                                                                                        jmp   qword ptr [rsp]
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n273_lit_string_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 6
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n274_lit_string_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 1456], 2                      # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n275_lit_string_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 7
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n276_lit_string_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 1344], 2                      # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n277_lit_string_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 9
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n278_lit_string_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n279_lit_string_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 8
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n280_lit_string_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n281_lit_string_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 6
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n282_lit_string_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n283_lit_string_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 8
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n284_lit_string_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 2
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n285_call_builtin_prolog_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n286_call_builtin_prolog_α
n285_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n287_call_builtin_prolog_α
n286_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n288_call_builtin_prolog_α
n287_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n289_call_builtin_prolog_α
n288_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n290_call_builtin_prolog_α
n289_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n307_var_ref_α
                                                                                        jmp   n291_call_proc_staged_α
n290_call_builtin_prolog_β:
                                                                                        jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n291_call_proc_staged_α:
                        mov              qword ptr [rbp + 848], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx484_20
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx484_21
.Lx484_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 880]                     # v
                        mov              rdx, qword ptr [rbp + 888]                     # v
                        call             rt_arg_stage@PLT
.Lx484_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx484_22
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx484_23
.Lx484_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1488]                    # v
                        mov              rdx, qword ptr [rbp + 1496]                    # v
                        call             rt_arg_stage@PLT
.Lx484_23:
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx484_1
                        lea              rcx, [rip + .Lx484_3]
                        lea              rdx, [rip + .Lx484_4]
                                                                                        jmp   rax
.Lx484_3:
                        mov              qword ptr [rbp + 856], rsp
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx484_5
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx484_2
.Lx484_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx484_2
.Lx484_4:
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx484_6
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx484_2
.Lx484_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx484_2
.Lx484_1:
                        call             rt_faildescr@PLT
.Lx484_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n307_var_ref_α
                                                                                        jmp   n292_var_ref_α
n291_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 856]
                                                                                        jmp   qword ptr [rsp]
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n294_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n294_call_proc_staged_α:
                        mov              qword ptr [rbp + 736], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx490_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx490_21
.Lx490_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 768]                     # v
                        mov              rdx, qword ptr [rbp + 776]                     # v
                        call             rt_arg_stage@PLT
.Lx490_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx490_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx490_23
.Lx490_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 784]                     # v
                        mov              rdx, qword ptr [rbp + 792]                     # v
                        call             rt_arg_stage@PLT
.Lx490_23:
                        mov              edi, 9                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx490_1
                        lea              rcx, [rip + .Lx490_3]
                        lea              rdx, [rip + .Lx490_4]
                                                                                        jmp   rax
.Lx490_3:
                        mov              qword ptr [rbp + 744], rsp
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx490_5
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx490_2
.Lx490_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx490_2
.Lx490_4:
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx490_6
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx490_2
.Lx490_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx490_2
.Lx490_1:
                        call             rt_faildescr@PLT
.Lx490_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n291_call_proc_staged_β
                                                                                        jmp   n295_var_ref_α
n294_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 744]
                                                                                        jmp   qword ptr [rsp]
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "day_num/2"
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n297_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n297_call_proc_staged_α:
                        mov              qword ptr [rbp + 624], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx496_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx496_21
.Lx496_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 656]                     # v
                        mov              rdx, qword ptr [rbp + 664]                     # v
                        call             rt_arg_stage@PLT
.Lx496_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx496_22
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx496_23
.Lx496_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 672]                     # v
                        mov              rdx, qword ptr [rbp + 680]                     # v
                        call             rt_arg_stage@PLT
.Lx496_23:
                        mov              edi, 9                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx496_1
                        lea              rcx, [rip + .Lx496_3]
                        lea              rdx, [rip + .Lx496_4]
                                                                                        jmp   rax
.Lx496_3:
                        mov              qword ptr [rbp + 632], rsp
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx496_5
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx496_2
.Lx496_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx496_2
.Lx496_4:
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx496_6
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx496_2
.Lx496_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx496_2
.Lx496_1:
                        call             rt_faildescr@PLT
.Lx496_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n294_call_proc_staged_β
                                                                                        jmp   n298_var_α
n297_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 632]
                                                                                        jmp   qword ptr [rsp]
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "day_num/2"
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n300_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n297_call_proc_staged_β
                                                                                        jmp   n301_var_ref_α
n300_call_builtin_prolog_β:
                                                                                        jmp   n297_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n302_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n303_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx507_21
.Lx507_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx507_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx507_23
.Lx507_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx507_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx507_1
                        lea              rcx, [rip + .Lx507_3]
                        lea              rdx, [rip + .Lx507_4]
                                                                                        jmp   rax
.Lx507_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx507_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx507_2
.Lx507_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx507_2
.Lx507_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx507_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx507_2
.Lx507_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx507_2
.Lx507_1:
                        call             rt_faildescr@PLT
.Lx507_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n297_call_proc_staged_β
                                                                                        jmp   n304_var_ref_α
n303_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n306_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n306_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx513_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx513_21
.Lx513_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx513_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx513_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx513_23
.Lx513_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 368]                     # v
                        mov              rdx, qword ptr [rbp + 376]                     # v
                        call             rt_arg_stage@PLT
.Lx513_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx513_1
                        lea              rcx, [rip + .Lx513_3]
                        lea              rdx, [rip + .Lx513_4]
                                                                                        jmp   rax
.Lx513_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx513_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx513_2
.Lx513_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx513_2
.Lx513_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx513_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx513_2
.Lx513_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx513_2
.Lx513_1:
                        call             rt_faildescr@PLT
.Lx513_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n303_call_proc_staged_β
                                                                                        jmp   n270_call_proc_staged_β
n306_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n308_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n310_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n312_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx525_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx525_21
.Lx525_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx525_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx525_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx525_23
.Lx525_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx525_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx525_24
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx525_25
.Lx525_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx525_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx525_26
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx525_27
.Lx525_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx525_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx525_28
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx525_29
.Lx525_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx525_29:
                        mov              edi, 8                                         # idx
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx525_1
                        lea              rcx, [rip + .Lx525_3]
                        lea              rdx, [rip + .Lx525_4]
                                                                                        jmp   rax
.Lx525_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx525_2
.Lx525_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx525_2
.Lx525_1:
                        call             rt_faildescr@PLT
.Lx525_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n270_call_proc_staged_β
                                                                                        jmp   n312_call_proc_staged_β
n312_call_proc_staged_β:
                                                                                        jmp   n270_call_proc_staged_β
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          "display/5"
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_prolog_α:
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
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   proc_puzzle$2F0_ω
n313_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n529_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n527_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx533_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx533_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx533_101
.Lx533_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx533_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n528_call_proc_staged_α
n527_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n528_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 3                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx535_1
                        lea              rcx, [rip + .Lx535_3]
                        lea              rdx, [rip + .Lx535_4]
                                                                                        jmp   rax
.Lx535_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx535_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx535_2
.Lx535_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx535_2
.Lx535_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx535_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx535_2
.Lx535_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx535_2
.Lx535_1:
                        call             rt_faildescr@PLT
.Lx535_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n530_call_builtin_prolog_α
                                                                                        jmp   n529_suspend_α
n528_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n529_suspend_α:
                        lea              rax, [rip + n529_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n529_suspend_β:
                                                                                        jmp   n528_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n530_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n531_suspend_α
n530_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_suspend_α:
                        lea              rax, [rip + n531_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n531_suspend_β:
                                                                                        jmp   n532_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_prolog_α:
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
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   proc_$disj0$2F0_ω
n532_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_member$2F2_α
proc_member$2F2_α:
proc_member$2F2_α_body:
                        lea              rax, [rip + n550_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
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
                                                                                        jne   .Lx564_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx564_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx564_101
.Lx564_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx564_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx564_240
                        add              rsp, 192
                                                                                        jmp   proc_member$2F2_ω
.Lx564_240:
                                                                                        jmp   n543_var_ref_α
n542_call_builtin_prolog_β:
                        add              rsp, 192
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n545_call_builtin_prolog_α:
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
.Lx569_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx569_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_41
                        cmp              esi, 1
                                                                                        jne   .Lx569_55
                        mov              r8, rax
                                                                                        jmp   .Lx569_40
.Lx569_55:
                        cmp              esi, 2
                                                                                        jne   .Lx569_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx569_41
                        mov              r8, rax
                                                                                        jmp   .Lx569_40
.Lx569_56:
                        cmp              eax, 72
                                                                                        jne   .Lx569_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_41
                        cmp              rax, r8
                                                                                        je    .Lx569_41
                        mov              r8, rax
                                                                                        jmp   .Lx569_40
.Lx569_41:
                        lea              r9, [rbp + 608]
.Lx569_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx569_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_43
                        cmp              esi, 1
                                                                                        jne   .Lx569_57
                        mov              r9, rax
                                                                                        jmp   .Lx569_42
.Lx569_57:
                        cmp              esi, 2
                                                                                        jne   .Lx569_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx569_43
                        mov              r9, rax
                                                                                        jmp   .Lx569_42
.Lx569_58:
                        cmp              eax, 72
                                                                                        jne   .Lx569_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_43
                        cmp              rax, r9
                                                                                        je    .Lx569_43
                        mov              r9, rax
                                                                                        jmp   .Lx569_42
.Lx569_43:
                        cmp              r8, r9
                                                                                        je    .Lx569_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx569_44
                        cmp              eax, 104
                                                                                        je    .Lx569_44
                        cmp              eax, 72
                                                                                        jne   .Lx569_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx569_44
                                                                                        jmp   .Lx569_45
.Lx569_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx569_53
                        cmp              eax, 104
                                                                                        je    .Lx569_53
                        cmp              eax, 72
                                                                                        jne   .Lx569_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx569_53
                                                                                        jmp   .Lx569_46
.Lx569_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx569_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx569_53
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
                                                                                        jmp   .Lx569_51
.Lx569_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx569_47
                        cmp              eax, 104
                                                                                        je    .Lx569_47
                        cmp              eax, 72
                                                                                        jne   .Lx569_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx569_47
                                                                                        jmp   .Lx569_48
.Lx569_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx569_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx569_53
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
                                                                                        jmp   .Lx569_51
.Lx569_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx569_49
                        cmp              edx, 80
                                                                                        je    .Lx569_53
                                                                                        jmp   .Lx569_52
.Lx569_49:
                        cmp              edx, 80
                                                                                        je    .Lx569_52
                        cmp              ecx, 5
                                                                                        je    .Lx569_53
                        cmp              edx, 5
                                                                                        je    .Lx569_53
                        cmp              ecx, 3
                                                                                        jne   .Lx569_50
                        cmp              edx, 3
                                                                                        jne   .Lx569_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx569_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx569_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx569_51
                                                                                        jmp   .Lx569_52
.Lx569_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx569_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx569_53
.Lx569_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx569_54
.Lx569_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx569_54
.Lx569_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx569_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n551_call_builtin_prolog_α
                                                                                        jmp   n546_var_ref_α
n545_call_builtin_prolog_β:
                                                                                        jmp   n551_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n548_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n549_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n549_call_builtin_prolog_α:
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
.Lx576_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx576_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_61
                        cmp              esi, 1
                                                                                        jne   .Lx576_62
                        mov              r8, rax
                                                                                        jmp   .Lx576_60
.Lx576_62:
                        cmp              esi, 2
                                                                                        jne   .Lx576_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_61
                        mov              r8, rax
                                                                                        jmp   .Lx576_60
.Lx576_63:
                        cmp              eax, 72
                                                                                        jne   .Lx576_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_61
                        cmp              rax, r8
                                                                                        je    .Lx576_61
                        mov              r8, rax
                                                                                        jmp   .Lx576_60
.Lx576_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_80
                        cmp              eax, 104
                                                                                        je    .Lx576_80
                        cmp              eax, 72
                                                                                        jne   .Lx576_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx576_80
                                                                                        jmp   .Lx576_74
.Lx576_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx576_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx576_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx576_73
                        lea              r9, [rbp + 512]
.Lx576_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx576_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_65
                        cmp              esi, 1
                                                                                        jne   .Lx576_66
                        mov              r9, rax
                                                                                        jmp   .Lx576_64
.Lx576_66:
                        cmp              esi, 2
                                                                                        jne   .Lx576_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_65
                        mov              r9, rax
                                                                                        jmp   .Lx576_64
.Lx576_67:
                        cmp              eax, 72
                                                                                        jne   .Lx576_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_65
                        cmp              rax, r9
                                                                                        je    .Lx576_65
                        mov              r9, rax
                                                                                        jmp   .Lx576_64
.Lx576_65:
                        lea              rcx, [rbp + 528]
.Lx576_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx576_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx576_69
                        cmp              esi, 1
                                                                                        jne   .Lx576_70
                        mov              rcx, rax
                                                                                        jmp   .Lx576_68
.Lx576_70:
                        cmp              esi, 2
                                                                                        jne   .Lx576_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_69
                        mov              rcx, rax
                                                                                        jmp   .Lx576_68
.Lx576_71:
                        cmp              eax, 72
                                                                                        jne   .Lx576_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx576_69
                        cmp              rax, rcx
                                                                                        je    .Lx576_69
                        mov              rcx, rax
                                                                                        jmp   .Lx576_68
.Lx576_69:
                        cmp              r9, rcx
                                                                                        je    .Lx576_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_75
                        cmp              eax, 104
                                                                                        je    .Lx576_75
                        cmp              eax, 72
                                                                                        jne   .Lx576_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx576_75
                                                                                        jmp   .Lx576_72
.Lx576_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_76
                        cmp              eax, 104
                                                                                        je    .Lx576_76
                        cmp              eax, 72
                                                                                        jne   .Lx576_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx576_76
                                                                                        jmp   .Lx576_72
.Lx576_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx576_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx576_72
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
                                                                                        jmp   .Lx576_77
.Lx576_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx576_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx576_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx576_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx576_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx576_72
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
.Lx576_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx576_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_82
                        cmp              esi, 1
                                                                                        jne   .Lx576_83
                        mov              r9, rax
                                                                                        jmp   .Lx576_81
.Lx576_83:
                        cmp              esi, 2
                                                                                        jne   .Lx576_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_82
                        mov              r9, rax
                                                                                        jmp   .Lx576_81
.Lx576_84:
                        cmp              eax, 72
                                                                                        jne   .Lx576_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_82
                        cmp              rax, r9
                                                                                        je    .Lx576_82
                        mov              r9, rax
                                                                                        jmp   .Lx576_81
.Lx576_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_85
                        cmp              eax, 104
                                                                                        je    .Lx576_85
                        cmp              eax, 72
                                                                                        jne   .Lx576_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx576_85
                                                                                        jmp   .Lx576_86
.Lx576_85:
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
                                                                                        jmp   .Lx576_87
.Lx576_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx576_87:
                        lea              rcx, [rbp + 528]
.Lx576_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx576_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx576_89
                        cmp              esi, 1
                                                                                        jne   .Lx576_90
                        mov              rcx, rax
                                                                                        jmp   .Lx576_88
.Lx576_90:
                        cmp              esi, 2
                                                                                        jne   .Lx576_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_89
                        mov              rcx, rax
                                                                                        jmp   .Lx576_88
.Lx576_91:
                        cmp              eax, 72
                                                                                        jne   .Lx576_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx576_89
                        cmp              rax, rcx
                                                                                        je    .Lx576_89
                        mov              rcx, rax
                                                                                        jmp   .Lx576_88
.Lx576_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_92
                        cmp              eax, 104
                                                                                        je    .Lx576_92
                        cmp              eax, 72
                                                                                        jne   .Lx576_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx576_92
                                                                                        jmp   .Lx576_93
.Lx576_92:
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
                                                                                        jmp   .Lx576_94
.Lx576_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx576_94:
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
                                                                                        jmp   .Lx576_77
.Lx576_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx576_77
.Lx576_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx576_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n551_call_builtin_prolog_α
                                                                                        jmp   n550_suspend_α
n549_call_builtin_prolog_β:
                                                                                        jmp   n551_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n550_suspend_α:
                        lea              rax, [rip + n550_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 192
                                                                                        jmp   proc_member$2F2_γ
n550_suspend_β:
                                                                                        jmp   n551_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_prolog_α:
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
                                                                                        jmp   n552_var_ref_α
n551_call_builtin_prolog_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n553_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n554_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n554_call_builtin_prolog_α:
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
.Lx584_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx584_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx584_41
                        cmp              esi, 1
                                                                                        jne   .Lx584_55
                        mov              r8, rax
                                                                                        jmp   .Lx584_40
.Lx584_55:
                        cmp              esi, 2
                                                                                        jne   .Lx584_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx584_41
                        mov              r8, rax
                                                                                        jmp   .Lx584_40
.Lx584_56:
                        cmp              eax, 72
                                                                                        jne   .Lx584_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx584_41
                        cmp              rax, r8
                                                                                        je    .Lx584_41
                        mov              r8, rax
                                                                                        jmp   .Lx584_40
.Lx584_41:
                        lea              r9, [rbp + 368]
.Lx584_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx584_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx584_43
                        cmp              esi, 1
                                                                                        jne   .Lx584_57
                        mov              r9, rax
                                                                                        jmp   .Lx584_42
.Lx584_57:
                        cmp              esi, 2
                                                                                        jne   .Lx584_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx584_43
                        mov              r9, rax
                                                                                        jmp   .Lx584_42
.Lx584_58:
                        cmp              eax, 72
                                                                                        jne   .Lx584_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx584_43
                        cmp              rax, r9
                                                                                        je    .Lx584_43
                        mov              r9, rax
                                                                                        jmp   .Lx584_42
.Lx584_43:
                        cmp              r8, r9
                                                                                        je    .Lx584_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx584_44
                        cmp              eax, 104
                                                                                        je    .Lx584_44
                        cmp              eax, 72
                                                                                        jne   .Lx584_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx584_44
                                                                                        jmp   .Lx584_45
.Lx584_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx584_53
                        cmp              eax, 104
                                                                                        je    .Lx584_53
                        cmp              eax, 72
                                                                                        jne   .Lx584_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx584_53
                                                                                        jmp   .Lx584_46
.Lx584_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx584_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx584_53
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
                                                                                        jmp   .Lx584_51
.Lx584_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx584_47
                        cmp              eax, 104
                                                                                        je    .Lx584_47
                        cmp              eax, 72
                                                                                        jne   .Lx584_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx584_47
                                                                                        jmp   .Lx584_48
.Lx584_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx584_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx584_53
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
                                                                                        jmp   .Lx584_51
.Lx584_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx584_49
                        cmp              edx, 80
                                                                                        je    .Lx584_53
                                                                                        jmp   .Lx584_52
.Lx584_49:
                        cmp              edx, 80
                                                                                        je    .Lx584_52
                        cmp              ecx, 5
                                                                                        je    .Lx584_53
                        cmp              edx, 5
                                                                                        je    .Lx584_53
                        cmp              ecx, 3
                                                                                        jne   .Lx584_50
                        cmp              edx, 3
                                                                                        jne   .Lx584_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx584_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx584_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx584_51
                                                                                        jmp   .Lx584_52
.Lx584_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx584_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx584_53
.Lx584_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx584_54
.Lx584_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx584_54
.Lx584_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx584_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n563_call_builtin_prolog_α
                                                                                        jmp   n555_var_ref_α
n554_call_builtin_prolog_β:
                                                                                        jmp   n563_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n556_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n557_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n558_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n558_call_builtin_prolog_α:
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
.Lx591_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx591_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_61
                        cmp              esi, 1
                                                                                        jne   .Lx591_62
                        mov              r8, rax
                                                                                        jmp   .Lx591_60
.Lx591_62:
                        cmp              esi, 2
                                                                                        jne   .Lx591_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_61
                        mov              r8, rax
                                                                                        jmp   .Lx591_60
.Lx591_63:
                        cmp              eax, 72
                                                                                        jne   .Lx591_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_61
                        cmp              rax, r8
                                                                                        je    .Lx591_61
                        mov              r8, rax
                                                                                        jmp   .Lx591_60
.Lx591_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_80
                        cmp              eax, 104
                                                                                        je    .Lx591_80
                        cmp              eax, 72
                                                                                        jne   .Lx591_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx591_80
                                                                                        jmp   .Lx591_74
.Lx591_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx591_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx591_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx591_73
                        lea              r9, [rbp + 272]
.Lx591_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx591_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_65
                        cmp              esi, 1
                                                                                        jne   .Lx591_66
                        mov              r9, rax
                                                                                        jmp   .Lx591_64
.Lx591_66:
                        cmp              esi, 2
                                                                                        jne   .Lx591_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_65
                        mov              r9, rax
                                                                                        jmp   .Lx591_64
.Lx591_67:
                        cmp              eax, 72
                                                                                        jne   .Lx591_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_65
                        cmp              rax, r9
                                                                                        je    .Lx591_65
                        mov              r9, rax
                                                                                        jmp   .Lx591_64
.Lx591_65:
                        lea              rcx, [rbp + 288]
.Lx591_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx591_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx591_69
                        cmp              esi, 1
                                                                                        jne   .Lx591_70
                        mov              rcx, rax
                                                                                        jmp   .Lx591_68
.Lx591_70:
                        cmp              esi, 2
                                                                                        jne   .Lx591_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_69
                        mov              rcx, rax
                                                                                        jmp   .Lx591_68
.Lx591_71:
                        cmp              eax, 72
                                                                                        jne   .Lx591_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx591_69
                        cmp              rax, rcx
                                                                                        je    .Lx591_69
                        mov              rcx, rax
                                                                                        jmp   .Lx591_68
.Lx591_69:
                        cmp              r9, rcx
                                                                                        je    .Lx591_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_75
                        cmp              eax, 104
                                                                                        je    .Lx591_75
                        cmp              eax, 72
                                                                                        jne   .Lx591_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx591_75
                                                                                        jmp   .Lx591_72
.Lx591_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_76
                        cmp              eax, 104
                                                                                        je    .Lx591_76
                        cmp              eax, 72
                                                                                        jne   .Lx591_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx591_76
                                                                                        jmp   .Lx591_72
.Lx591_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx591_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx591_72
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
                                                                                        jmp   .Lx591_77
.Lx591_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx591_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx591_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx591_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx591_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx591_72
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
.Lx591_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx591_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_82
                        cmp              esi, 1
                                                                                        jne   .Lx591_83
                        mov              r9, rax
                                                                                        jmp   .Lx591_81
.Lx591_83:
                        cmp              esi, 2
                                                                                        jne   .Lx591_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_82
                        mov              r9, rax
                                                                                        jmp   .Lx591_81
.Lx591_84:
                        cmp              eax, 72
                                                                                        jne   .Lx591_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_82
                        cmp              rax, r9
                                                                                        je    .Lx591_82
                        mov              r9, rax
                                                                                        jmp   .Lx591_81
.Lx591_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_85
                        cmp              eax, 104
                                                                                        je    .Lx591_85
                        cmp              eax, 72
                                                                                        jne   .Lx591_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx591_85
                                                                                        jmp   .Lx591_86
.Lx591_85:
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
                                                                                        jmp   .Lx591_87
.Lx591_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx591_87:
                        lea              rcx, [rbp + 288]
.Lx591_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx591_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx591_89
                        cmp              esi, 1
                                                                                        jne   .Lx591_90
                        mov              rcx, rax
                                                                                        jmp   .Lx591_88
.Lx591_90:
                        cmp              esi, 2
                                                                                        jne   .Lx591_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_89
                        mov              rcx, rax
                                                                                        jmp   .Lx591_88
.Lx591_91:
                        cmp              eax, 72
                                                                                        jne   .Lx591_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx591_89
                        cmp              rax, rcx
                                                                                        je    .Lx591_89
                        mov              rcx, rax
                                                                                        jmp   .Lx591_88
.Lx591_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_92
                        cmp              eax, 104
                                                                                        je    .Lx591_92
                        cmp              eax, 72
                                                                                        jne   .Lx591_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx591_92
                                                                                        jmp   .Lx591_93
.Lx591_92:
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
                                                                                        jmp   .Lx591_94
.Lx591_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx591_94:
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
                                                                                        jmp   .Lx591_77
.Lx591_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx591_77
.Lx591_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx591_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n563_call_builtin_prolog_α
                                                                                        jmp   n559_var_ref_α
n558_call_builtin_prolog_β:
                                                                                        jmp   n563_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n560_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n561_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n561_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx597_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx597_21
.Lx597_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx597_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx597_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx597_23
.Lx597_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx597_23:
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx597_1
                        lea              rcx, [rip + .Lx597_3]
                        lea              rdx, [rip + .Lx597_4]
                                                                                        jmp   rax
.Lx597_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx597_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx597_2
.Lx597_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx597_2
.Lx597_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx597_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx597_2
.Lx597_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx597_2
.Lx597_1:
                        call             rt_faildescr@PLT
.Lx597_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n563_call_builtin_prolog_α
                                                                                        jmp   n562_suspend_α
n561_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n562_suspend_α:
                        lea              rax, [rip + n562_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n562_suspend_β:
                                                                                        jmp   n561_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n563_call_builtin_prolog_α:
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
n563_call_builtin_prolog_β:
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
                        .globl           proc_prev_day$2F2_α
proc_prev_day$2F2_α:
proc_prev_day$2F2_α_body:
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n601_call_builtin_prolog_α:
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
                                                                                        jne   .Lx642_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx642_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx642_101
.Lx642_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx642_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx642_240
                        add              rsp, 112
                                                                                        jmp   proc_prev_day$2F2_ω
.Lx642_240:
                                                                                        jmp   n602_var_ref_α
n601_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n603_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 7
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n604_call_builtin_prolog_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n604_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx646_2]
                                                                                        jmp   .Lx646_3
.Lx646_2:
                        .quad            .Lx646_2_s
.Lx646_2_s:
                        .string          "tuesday"
.Lx646_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n609_call_builtin_prolog_α
                                                                                        jmp   n605_var_ref_α
n604_call_builtin_prolog_β:
                                                                                        jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n606_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 6
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n607_call_builtin_prolog_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n607_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx650_2]
                                                                                        jmp   .Lx650_3
.Lx650_2:
                        .quad            .Lx650_2_s
.Lx650_2_s:
                        .string          "monday"
.Lx650_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n609_call_builtin_prolog_α
                                                                                        jmp   n608_suspend_α
n607_call_builtin_prolog_β:
                                                                                        jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n608_suspend_α:
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_prev_day$2F2_γ
n608_suspend_β:
                                                                                        jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n609_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n610_var_ref_α
n609_call_builtin_prolog_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n611_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 9
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n612_call_builtin_prolog_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx657_2]
                                                                                        jmp   .Lx657_3
.Lx657_2:
                        .quad            .Lx657_2_s
.Lx657_2_s:
                        .string          "wednesday"
.Lx657_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n617_call_builtin_prolog_α
                                                                                        jmp   n613_var_ref_α
n612_call_builtin_prolog_β:
                                                                                        jmp   n617_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n614_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 7
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n615_call_builtin_prolog_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n615_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx661_2]
                                                                                        jmp   .Lx661_3
.Lx661_2:
                        .quad            .Lx661_2_s
.Lx661_2_s:
                        .string          "tuesday"
.Lx661_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n617_call_builtin_prolog_α
                                                                                        jmp   n616_suspend_α
n615_call_builtin_prolog_β:
                                                                                        jmp   n617_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n616_suspend_α:
                        lea              rax, [rip + n616_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n616_suspend_β:
                                                                                        jmp   n617_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n617_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n618_var_ref_α
n617_call_builtin_prolog_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n619_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 8
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n620_call_builtin_prolog_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n620_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx668_2]
                                                                                        jmp   .Lx668_3
.Lx668_2:
                        .quad            .Lx668_2_s
.Lx668_2_s:
                        .string          "thursday"
.Lx668_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n625_call_builtin_prolog_α
                                                                                        jmp   n621_var_ref_α
n620_call_builtin_prolog_β:
                                                                                        jmp   n625_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n622_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 9
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n623_call_builtin_prolog_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n623_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx672_2]
                                                                                        jmp   .Lx672_3
.Lx672_2:
                        .quad            .Lx672_2_s
.Lx672_2_s:
                        .string          "wednesday"
.Lx672_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n625_call_builtin_prolog_α
                                                                                        jmp   n624_suspend_α
n623_call_builtin_prolog_β:
                                                                                        jmp   n625_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n624_suspend_α:
                        lea              rax, [rip + n624_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n624_suspend_β:
                                                                                        jmp   n625_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n625_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n626_var_ref_α
n625_call_builtin_prolog_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n627_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 6
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n628_call_builtin_prolog_α
.Lx678_0:
                        .quad            .Lx678_0_s
.Lx678_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx679_2]
                                                                                        jmp   .Lx679_3
.Lx679_2:
                        .quad            .Lx679_2_s
.Lx679_2_s:
                        .string          "friday"
.Lx679_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n633_call_builtin_prolog_α
                                                                                        jmp   n629_var_ref_α
n628_call_builtin_prolog_β:
                                                                                        jmp   n633_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n630_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 8
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n631_call_builtin_prolog_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n631_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx683_2]
                                                                                        jmp   .Lx683_3
.Lx683_2:
                        .quad            .Lx683_2_s
.Lx683_2_s:
                        .string          "thursday"
.Lx683_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n633_call_builtin_prolog_α
                                                                                        jmp   n632_suspend_α
n631_call_builtin_prolog_β:
                                                                                        jmp   n633_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n632_suspend_α:
                        lea              rax, [rip + n632_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n632_suspend_β:
                                                                                        jmp   n633_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n633_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n634_var_ref_α
n633_call_builtin_prolog_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n635_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 8
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n636_call_builtin_prolog_α
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n636_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx690_2]
                                                                                        jmp   .Lx690_3
.Lx690_2:
                        .quad            .Lx690_2_s
.Lx690_2_s:
                        .string          "saturday"
.Lx690_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n641_call_builtin_prolog_α
                                                                                        jmp   n637_var_ref_α
n636_call_builtin_prolog_β:
                                                                                        jmp   n641_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n638_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 6
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n639_call_builtin_prolog_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n639_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx694_2]
                                                                                        jmp   .Lx694_3
.Lx694_2:
                        .quad            .Lx694_2_s
.Lx694_2_s:
                        .string          "friday"
.Lx694_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n641_call_builtin_prolog_α
                                                                                        jmp   n640_suspend_α
n639_call_builtin_prolog_β:
                                                                                        jmp   n641_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n640_suspend_α:
                        lea              rax, [rip + n640_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n640_suspend_β:
                                                                                        jmp   n641_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n641_call_builtin_prolog_α:
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
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   proc_prev_day$2F2_ω
n641_call_builtin_prolog_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_open$2F2_α
proc_open$2F2_α:
proc_open$2F2_α_body:
                        lea              rax, [rip + n705_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
#-----------------------------------------------------------------------------------------------------------------------
n698_call_builtin_prolog_α:
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
                                                                                        jne   .Lx843_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx843_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx843_101
.Lx843_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx843_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx843_240
                        add              rsp, 112
                                                                                        jmp   proc_open$2F2_ω
.Lx843_240:
                                                                                        jmp   n699_var_ref_α
n698_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n699_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                                                                                        jmp   n700_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_string_α:
                        mov              qword ptr [rbp + 3808], 2                      # result
                        mov              dword ptr [rbp + 3812], 4
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n701_call_builtin_prolog_α
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n701_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rdi, [rbp + 3760]
                        mov              rsi, qword ptr [rip + .Lx847_2]
                                                                                        jmp   .Lx847_3
.Lx847_2:
                        .quad            .Lx847_2_s
.Lx847_2_s:
                        .string          "shoe"
.Lx847_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 104
                                                                                        je    n706_call_builtin_prolog_α
                                                                                        jmp   n702_var_ref_α
n701_call_builtin_prolog_β:
                                                                                        jmp   n706_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n703_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_string_α:
                        mov              qword ptr [rbp + 3728], 2                      # result
                        mov              dword ptr [rbp + 3732], 7
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n704_call_builtin_prolog_α
.Lx850_0:
                        .quad            .Lx850_0_s
.Lx850_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n704_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rdi, [rbp + 3680]
                        mov              rsi, qword ptr [rip + .Lx851_2]
                                                                                        jmp   .Lx851_3
.Lx851_2:
                        .quad            .Lx851_2_s
.Lx851_2_s:
                        .string          "tuesday"
.Lx851_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 104
                                                                                        je    n706_call_builtin_prolog_α
                                                                                        jmp   n705_suspend_α
n704_call_builtin_prolog_β:
                                                                                        jmp   n706_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n705_suspend_α:
                        lea              rax, [rip + n705_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_open$2F2_γ
n705_suspend_β:
                                                                                        jmp   n706_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n706_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n707_var_ref_α
n706_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n707_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n708_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:
                        mov              qword ptr [rbp + 3600], 2                      # result
                        mov              dword ptr [rbp + 3604], 4
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n709_call_builtin_prolog_α
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n709_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3552]
                        mov              rsi, qword ptr [rip + .Lx858_2]
                                                                                        jmp   .Lx858_3
.Lx858_2:
                        .quad            .Lx858_2_s
.Lx858_2_s:
                        .string          "shoe"
.Lx858_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 104
                                                                                        je    n714_call_builtin_prolog_α
                                                                                        jmp   n710_var_ref_α
n709_call_builtin_prolog_β:
                                                                                        jmp   n714_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n710_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n711_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_string_α:
                        mov              qword ptr [rbp + 3520], 2                      # result
                        mov              dword ptr [rbp + 3524], 9
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n712_call_builtin_prolog_α
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n712_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3472]
                        mov              rsi, qword ptr [rip + .Lx862_2]
                                                                                        jmp   .Lx862_3
.Lx862_2:
                        .quad            .Lx862_2_s
.Lx862_2_s:
                        .string          "wednesday"
.Lx862_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 104
                                                                                        je    n714_call_builtin_prolog_α
                                                                                        jmp   n713_suspend_α
n712_call_builtin_prolog_β:
                                                                                        jmp   n714_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n713_suspend_α:
                        lea              rax, [rip + n713_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n713_suspend_β:
                                                                                        jmp   n714_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n714_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n715_var_ref_α
n714_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n715_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n716_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:
                        mov              qword ptr [rbp + 3392], 2                      # result
                        mov              dword ptr [rbp + 3396], 4
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n717_call_builtin_prolog_α
.Lx868_0:
                        .quad            .Lx868_0_s
.Lx868_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n717_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              rsi, qword ptr [rip + .Lx869_2]
                                                                                        jmp   .Lx869_3
.Lx869_2:
                        .quad            .Lx869_2_s
.Lx869_2_s:
                        .string          "shoe"
.Lx869_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n722_call_builtin_prolog_α
                                                                                        jmp   n718_var_ref_α
n717_call_builtin_prolog_β:
                                                                                        jmp   n722_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n718_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n719_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:
                        mov              qword ptr [rbp + 3312], 2                      # result
                        mov              dword ptr [rbp + 3316], 8
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n720_call_builtin_prolog_α
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n720_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3264]
                        mov              rsi, qword ptr [rip + .Lx873_2]
                                                                                        jmp   .Lx873_3
.Lx873_2:
                        .quad            .Lx873_2_s
.Lx873_2_s:
                        .string          "thursday"
.Lx873_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 104
                                                                                        je    n722_call_builtin_prolog_α
                                                                                        jmp   n721_suspend_α
n720_call_builtin_prolog_β:
                                                                                        jmp   n722_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n721_suspend_α:
                        lea              rax, [rip + n721_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n721_suspend_β:
                                                                                        jmp   n722_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n722_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n723_var_ref_α
n722_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n723_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n724_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:
                        mov              qword ptr [rbp + 3184], 2                      # result
                        mov              dword ptr [rbp + 3188], 4
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n725_call_builtin_prolog_α
.Lx879_0:
                        .quad            .Lx879_0_s
.Lx879_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n725_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        mov              rsi, qword ptr [rip + .Lx880_2]
                                                                                        jmp   .Lx880_3
.Lx880_2:
                        .quad            .Lx880_2_s
.Lx880_2_s:
                        .string          "shoe"
.Lx880_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 104
                                                                                        je    n730_call_builtin_prolog_α
                                                                                        jmp   n726_var_ref_α
n725_call_builtin_prolog_β:
                                                                                        jmp   n730_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n727_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_string_α:
                        mov              qword ptr [rbp + 3104], 2                      # result
                        mov              dword ptr [rbp + 3108], 6
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n728_call_builtin_prolog_α
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n728_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        mov              rsi, qword ptr [rip + .Lx884_2]
                                                                                        jmp   .Lx884_3
.Lx884_2:
                        .quad            .Lx884_2_s
.Lx884_2_s:
                        .string          "friday"
.Lx884_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 104
                                                                                        je    n730_call_builtin_prolog_α
                                                                                        jmp   n729_suspend_α
n728_call_builtin_prolog_β:
                                                                                        jmp   n730_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n729_suspend_α:
                        lea              rax, [rip + n729_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n729_suspend_β:
                                                                                        jmp   n730_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n730_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n731_var_ref_α
n730_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n731_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n732_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:
                        mov              qword ptr [rbp + 2976], 2                      # result
                        mov              dword ptr [rbp + 2980], 4
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n733_call_builtin_prolog_α
.Lx890_0:
                        .quad            .Lx890_0_s
.Lx890_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n733_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              rsi, qword ptr [rip + .Lx891_2]
                                                                                        jmp   .Lx891_3
.Lx891_2:
                        .quad            .Lx891_2_s
.Lx891_2_s:
                        .string          "shoe"
.Lx891_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 104
                                                                                        je    n738_call_builtin_prolog_α
                                                                                        jmp   n734_var_ref_α
n733_call_builtin_prolog_β:
                                                                                        jmp   n738_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n734_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n735_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:
                        mov              qword ptr [rbp + 2896], 2                      # result
                        mov              dword ptr [rbp + 2900], 8
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n736_call_builtin_prolog_α
.Lx894_0:
                        .quad            .Lx894_0_s
.Lx894_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n736_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              rsi, qword ptr [rip + .Lx895_2]
                                                                                        jmp   .Lx895_3
.Lx895_2:
                        .quad            .Lx895_2_s
.Lx895_2_s:
                        .string          "saturday"
.Lx895_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 104
                                                                                        je    n738_call_builtin_prolog_α
                                                                                        jmp   n737_suspend_α
n736_call_builtin_prolog_β:
                                                                                        jmp   n738_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n737_suspend_α:
                        lea              rax, [rip + n737_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n737_suspend_β:
                                                                                        jmp   n738_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n738_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n739_var_ref_α
n738_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n739_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n740_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_string_α:
                        mov              qword ptr [rbp + 2768], 2                      # result
                        mov              dword ptr [rbp + 2772], 8
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n741_call_builtin_prolog_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n741_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2720]
                        mov              rsi, qword ptr [rip + .Lx902_2]
                                                                                        jmp   .Lx902_3
.Lx902_2:
                        .quad            .Lx902_2_s
.Lx902_2_s:
                        .string          "hardware"
.Lx902_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 104
                                                                                        je    n746_call_builtin_prolog_α
                                                                                        jmp   n742_var_ref_α
n741_call_builtin_prolog_β:
                                                                                        jmp   n746_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n743_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:
                        mov              qword ptr [rbp + 2688], 2                      # result
                        mov              dword ptr [rbp + 2692], 6
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n744_call_builtin_prolog_α
.Lx905_0:
                        .quad            .Lx905_0_s
.Lx905_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n744_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        mov              rsi, qword ptr [rip + .Lx906_2]
                                                                                        jmp   .Lx906_3
.Lx906_2:
                        .quad            .Lx906_2_s
.Lx906_2_s:
                        .string          "monday"
.Lx906_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 104
                                                                                        je    n746_call_builtin_prolog_α
                                                                                        jmp   n745_suspend_α
n744_call_builtin_prolog_β:
                                                                                        jmp   n746_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n745_suspend_α:
                        lea              rax, [rip + n745_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n745_suspend_β:
                                                                                        jmp   n746_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n746_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n747_var_ref_α
n746_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n747_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n748_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:
                        mov              qword ptr [rbp + 2560], 2                      # result
                        mov              dword ptr [rbp + 2564], 8
                        mov              rax, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n749_call_builtin_prolog_α
.Lx912_0:
                        .quad            .Lx912_0_s
.Lx912_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n749_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              rsi, qword ptr [rip + .Lx913_2]
                                                                                        jmp   .Lx913_3
.Lx913_2:
                        .quad            .Lx913_2_s
.Lx913_2_s:
                        .string          "hardware"
.Lx913_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n754_call_builtin_prolog_α
                                                                                        jmp   n750_var_ref_α
n749_call_builtin_prolog_β:
                                                                                        jmp   n754_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n750_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n751_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_string_α:
                        mov              qword ptr [rbp + 2480], 2                      # result
                        mov              dword ptr [rbp + 2484], 9
                        mov              rax, qword ptr [rip + .Lx916_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n752_call_builtin_prolog_α
.Lx916_0:
                        .quad            .Lx916_0_s
.Lx916_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n752_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2432]
                        mov              rsi, qword ptr [rip + .Lx917_2]
                                                                                        jmp   .Lx917_3
.Lx917_2:
                        .quad            .Lx917_2_s
.Lx917_2_s:
                        .string          "wednesday"
.Lx917_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 104
                                                                                        je    n754_call_builtin_prolog_α
                                                                                        jmp   n753_suspend_α
n752_call_builtin_prolog_β:
                                                                                        jmp   n754_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n753_suspend_α:
                        lea              rax, [rip + n753_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n753_suspend_β:
                                                                                        jmp   n754_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n754_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n755_var_ref_α
n754_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n755_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n756_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_string_α:
                        mov              qword ptr [rbp + 2352], 2                      # result
                        mov              dword ptr [rbp + 2356], 8
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n757_call_builtin_prolog_α
.Lx923_0:
                        .quad            .Lx923_0_s
.Lx923_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n757_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2304]
                        mov              rsi, qword ptr [rip + .Lx924_2]
                                                                                        jmp   .Lx924_3
.Lx924_2:
                        .quad            .Lx924_2_s
.Lx924_2_s:
                        .string          "hardware"
.Lx924_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 104
                                                                                        je    n762_call_builtin_prolog_α
                                                                                        jmp   n758_var_ref_α
n757_call_builtin_prolog_β:
                                                                                        jmp   n762_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n758_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_string_α:
                        mov              qword ptr [rbp + 2272], 2                      # result
                        mov              dword ptr [rbp + 2276], 8
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n760_call_builtin_prolog_α
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n760_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        mov              rsi, qword ptr [rip + .Lx928_2]
                                                                                        jmp   .Lx928_3
.Lx928_2:
                        .quad            .Lx928_2_s
.Lx928_2_s:
                        .string          "thursday"
.Lx928_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 104
                                                                                        je    n762_call_builtin_prolog_α
                                                                                        jmp   n761_suspend_α
n760_call_builtin_prolog_β:
                                                                                        jmp   n762_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n761_suspend_α:
                        lea              rax, [rip + n761_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n761_suspend_β:
                                                                                        jmp   n762_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n762_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n763_var_ref_α
n762_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n763_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_string_α:
                        mov              qword ptr [rbp + 2144], 2                      # result
                        mov              dword ptr [rbp + 2148], 8
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n765_call_builtin_prolog_α
.Lx934_0:
                        .quad            .Lx934_0_s
.Lx934_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n765_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              rsi, qword ptr [rip + .Lx935_2]
                                                                                        jmp   .Lx935_3
.Lx935_2:
                        .quad            .Lx935_2_s
.Lx935_2_s:
                        .string          "hardware"
.Lx935_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 104
                                                                                        je    n770_call_builtin_prolog_α
                                                                                        jmp   n766_var_ref_α
n765_call_builtin_prolog_β:
                                                                                        jmp   n770_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n766_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n767_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_string_α:
                        mov              qword ptr [rbp + 2064], 2                      # result
                        mov              dword ptr [rbp + 2068], 6
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n768_call_builtin_prolog_α
.Lx938_0:
                        .quad            .Lx938_0_s
.Lx938_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n768_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              rsi, qword ptr [rip + .Lx939_2]
                                                                                        jmp   .Lx939_3
.Lx939_2:
                        .quad            .Lx939_2_s
.Lx939_2_s:
                        .string          "friday"
.Lx939_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 104
                                                                                        je    n770_call_builtin_prolog_α
                                                                                        jmp   n769_suspend_α
n768_call_builtin_prolog_β:
                                                                                        jmp   n770_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n769_suspend_α:
                        lea              rax, [rip + n769_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n769_suspend_β:
                                                                                        jmp   n770_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n770_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n771_var_ref_α
n770_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n771_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:
                        mov              qword ptr [rbp + 1936], 2                      # result
                        mov              dword ptr [rbp + 1940], 8
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n773_call_builtin_prolog_α
.Lx945_0:
                        .quad            .Lx945_0_s
.Lx945_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n773_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              rsi, qword ptr [rip + .Lx946_2]
                                                                                        jmp   .Lx946_3
.Lx946_2:
                        .quad            .Lx946_2_s
.Lx946_2_s:
                        .string          "hardware"
.Lx946_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n778_call_builtin_prolog_α
                                                                                        jmp   n774_var_ref_α
n773_call_builtin_prolog_β:
                                                                                        jmp   n778_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n774_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 8
                        mov              rax, qword ptr [rip + .Lx949_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n776_call_builtin_prolog_α
.Lx949_0:
                        .quad            .Lx949_0_s
.Lx949_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n776_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        mov              rsi, qword ptr [rip + .Lx950_2]
                                                                                        jmp   .Lx950_3
.Lx950_2:
                        .quad            .Lx950_2_s
.Lx950_2_s:
                        .string          "saturday"
.Lx950_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 104
                                                                                        je    n778_call_builtin_prolog_α
                                                                                        jmp   n777_suspend_α
n776_call_builtin_prolog_β:
                                                                                        jmp   n778_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n777_suspend_α:
                        lea              rax, [rip + n777_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n777_suspend_β:
                                                                                        jmp   n778_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n778_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n779_var_ref_α
n778_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n779_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n780_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 7
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n781_call_builtin_prolog_α
.Lx956_0:
                        .quad            .Lx956_0_s
.Lx956_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx957_2]
                                                                                        jmp   .Lx957_3
.Lx957_2:
                        .quad            .Lx957_2_s
.Lx957_2_s:
                        .string          "grocery"
.Lx957_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n786_call_builtin_prolog_α
                                                                                        jmp   n782_var_ref_α
n781_call_builtin_prolog_β:
                                                                                        jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n782_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n783_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_string_α:
                        mov              qword ptr [rbp + 1648], 2                      # result
                        mov              dword ptr [rbp + 1652], 6
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n784_call_builtin_prolog_α
.Lx960_0:
                        .quad            .Lx960_0_s
.Lx960_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n784_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              rsi, qword ptr [rip + .Lx961_2]
                                                                                        jmp   .Lx961_3
.Lx961_2:
                        .quad            .Lx961_2_s
.Lx961_2_s:
                        .string          "monday"
.Lx961_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n786_call_builtin_prolog_α
                                                                                        jmp   n785_suspend_α
n784_call_builtin_prolog_β:
                                                                                        jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n785_suspend_α:
                        lea              rax, [rip + n785_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n785_suspend_β:
                                                                                        jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n786_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n787_var_ref_α
n786_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n788_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_string_α:
                        mov              qword ptr [rbp + 1520], 2                      # result
                        mov              dword ptr [rbp + 1524], 7
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n789_call_builtin_prolog_α
.Lx967_0:
                        .quad            .Lx967_0_s
.Lx967_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n789_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              rsi, qword ptr [rip + .Lx968_2]
                                                                                        jmp   .Lx968_3
.Lx968_2:
                        .quad            .Lx968_2_s
.Lx968_2_s:
                        .string          "grocery"
.Lx968_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n794_call_builtin_prolog_α
                                                                                        jmp   n790_var_ref_α
n789_call_builtin_prolog_β:
                                                                                        jmp   n794_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n791_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_string_α:
                        mov              qword ptr [rbp + 1440], 2                      # result
                        mov              dword ptr [rbp + 1444], 7
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n792_call_builtin_prolog_α
.Lx971_0:
                        .quad            .Lx971_0_s
.Lx971_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              rsi, qword ptr [rip + .Lx972_2]
                                                                                        jmp   .Lx972_3
.Lx972_2:
                        .quad            .Lx972_2_s
.Lx972_2_s:
                        .string          "tuesday"
.Lx972_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n794_call_builtin_prolog_α
                                                                                        jmp   n793_suspend_α
n792_call_builtin_prolog_β:
                                                                                        jmp   n794_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n793_suspend_α:
                        lea              rax, [rip + n793_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n793_suspend_β:
                                                                                        jmp   n794_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n794_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n795_var_ref_α
n794_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n795_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n796_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 7
                        mov              rax, qword ptr [rip + .Lx978_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n797_call_builtin_prolog_α
.Lx978_0:
                        .quad            .Lx978_0_s
.Lx978_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              rsi, qword ptr [rip + .Lx979_2]
                                                                                        jmp   .Lx979_3
.Lx979_2:
                        .quad            .Lx979_2_s
.Lx979_2_s:
                        .string          "grocery"
.Lx979_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n802_call_builtin_prolog_α
                                                                                        jmp   n798_var_ref_α
n797_call_builtin_prolog_β:
                                                                                        jmp   n802_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n799_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n799_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 9
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n800_call_builtin_prolog_α
.Lx982_0:
                        .quad            .Lx982_0_s
.Lx982_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n800_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              rsi, qword ptr [rip + .Lx983_2]
                                                                                        jmp   .Lx983_3
.Lx983_2:
                        .quad            .Lx983_2_s
.Lx983_2_s:
                        .string          "wednesday"
.Lx983_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n802_call_builtin_prolog_α
                                                                                        jmp   n801_suspend_α
n800_call_builtin_prolog_β:
                                                                                        jmp   n802_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n801_suspend_α:
                        lea              rax, [rip + n801_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n801_suspend_β:
                                                                                        jmp   n802_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n802_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n803_var_ref_α
n802_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n803_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n804_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 7
                        mov              rax, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n805_call_builtin_prolog_α
.Lx989_0:
                        .quad            .Lx989_0_s
.Lx989_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n805_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx990_2]
                                                                                        jmp   .Lx990_3
.Lx990_2:
                        .quad            .Lx990_2_s
.Lx990_2_s:
                        .string          "grocery"
.Lx990_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n810_call_builtin_prolog_α
                                                                                        jmp   n806_var_ref_α
n805_call_builtin_prolog_β:
                                                                                        jmp   n810_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n806_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n807_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n807_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 6
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n808_call_builtin_prolog_α
.Lx993_0:
                        .quad            .Lx993_0_s
.Lx993_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n808_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx994_2]
                                                                                        jmp   .Lx994_3
.Lx994_2:
                        .quad            .Lx994_2_s
.Lx994_2_s:
                        .string          "friday"
.Lx994_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n810_call_builtin_prolog_α
                                                                                        jmp   n809_suspend_α
n808_call_builtin_prolog_β:
                                                                                        jmp   n810_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n809_suspend_α:
                        lea              rax, [rip + n809_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n809_suspend_β:
                                                                                        jmp   n810_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n810_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n811_var_ref_α
n810_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n811_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n812_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n812_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 7
                        mov              rax, qword ptr [rip + .Lx1000_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n813_call_builtin_prolog_α
.Lx1000_0:
                        .quad            .Lx1000_0_s
.Lx1000_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n813_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx1001_2]
                                                                                        jmp   .Lx1001_3
.Lx1001_2:
                        .quad            .Lx1001_2_s
.Lx1001_2_s:
                        .string          "grocery"
.Lx1001_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n818_call_builtin_prolog_α
                                                                                        jmp   n814_var_ref_α
n813_call_builtin_prolog_β:
                                                                                        jmp   n818_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n814_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 8
                        mov              rax, qword ptr [rip + .Lx1004_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n816_call_builtin_prolog_α
.Lx1004_0:
                        .quad            .Lx1004_0_s
.Lx1004_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n816_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx1005_2]
                                                                                        jmp   .Lx1005_3
.Lx1005_2:
                        .quad            .Lx1005_2_s
.Lx1005_2_s:
                        .string          "saturday"
.Lx1005_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n818_call_builtin_prolog_α
                                                                                        jmp   n817_suspend_α
n816_call_builtin_prolog_β:
                                                                                        jmp   n818_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n817_suspend_α:
                        lea              rax, [rip + n817_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n817_suspend_β:
                                                                                        jmp   n818_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n818_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n819_var_ref_α
n818_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n819_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n820_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n820_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 4
                        mov              rax, qword ptr [rip + .Lx1011_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n821_call_builtin_prolog_α
.Lx1011_0:
                        .quad            .Lx1011_0_s
.Lx1011_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n821_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx1012_2]
                                                                                        jmp   .Lx1012_3
.Lx1012_2:
                        .quad            .Lx1012_2_s
.Lx1012_2_s:
                        .string          "bank"
.Lx1012_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n826_call_builtin_prolog_α
                                                                                        jmp   n822_var_ref_α
n821_call_builtin_prolog_β:
                                                                                        jmp   n826_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n822_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n823_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n823_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 6
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n824_call_builtin_prolog_α
.Lx1015_0:
                        .quad            .Lx1015_0_s
.Lx1015_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n824_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx1016_2]
                                                                                        jmp   .Lx1016_3
.Lx1016_2:
                        .quad            .Lx1016_2_s
.Lx1016_2_s:
                        .string          "monday"
.Lx1016_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n826_call_builtin_prolog_α
                                                                                        jmp   n825_suspend_α
n824_call_builtin_prolog_β:
                                                                                        jmp   n826_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n825_suspend_α:
                        lea              rax, [rip + n825_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n825_suspend_β:
                                                                                        jmp   n826_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n826_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n827_var_ref_α
n826_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n827_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n828_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n828_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 4
                        mov              rax, qword ptr [rip + .Lx1022_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n829_call_builtin_prolog_α
.Lx1022_0:
                        .quad            .Lx1022_0_s
.Lx1022_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n829_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx1023_2]
                                                                                        jmp   .Lx1023_3
.Lx1023_2:
                        .quad            .Lx1023_2_s
.Lx1023_2_s:
                        .string          "bank"
.Lx1023_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n834_call_builtin_prolog_α
                                                                                        jmp   n830_var_ref_α
n829_call_builtin_prolog_β:
                                                                                        jmp   n834_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n830_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n831_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 9
                        mov              rax, qword ptr [rip + .Lx1026_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n832_call_builtin_prolog_α
.Lx1026_0:
                        .quad            .Lx1026_0_s
.Lx1026_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n832_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx1027_2]
                                                                                        jmp   .Lx1027_3
.Lx1027_2:
                        .quad            .Lx1027_2_s
.Lx1027_2_s:
                        .string          "wednesday"
.Lx1027_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n834_call_builtin_prolog_α
                                                                                        jmp   n833_suspend_α
n832_call_builtin_prolog_β:
                                                                                        jmp   n834_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n833_suspend_α:
                        lea              rax, [rip + n833_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n833_suspend_β:
                                                                                        jmp   n834_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n834_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n835_var_ref_α
n834_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n835_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n836_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n836_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 4
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n837_call_builtin_prolog_α
.Lx1033_0:
                        .quad            .Lx1033_0_s
.Lx1033_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n837_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx1034_2]
                                                                                        jmp   .Lx1034_3
.Lx1034_2:
                        .quad            .Lx1034_2_s
.Lx1034_2_s:
                        .string          "bank"
.Lx1034_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n842_call_builtin_prolog_α
                                                                                        jmp   n838_var_ref_α
n837_call_builtin_prolog_β:
                                                                                        jmp   n842_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n838_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n839_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 6
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n840_call_builtin_prolog_α
.Lx1037_0:
                        .quad            .Lx1037_0_s
.Lx1037_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n840_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx1038_2]
                                                                                        jmp   .Lx1038_3
.Lx1038_2:
                        .quad            .Lx1038_2_s
.Lx1038_2_s:
                        .string          "friday"
.Lx1038_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n842_call_builtin_prolog_α
                                                                                        jmp   n841_suspend_α
n840_call_builtin_prolog_β:
                                                                                        jmp   n842_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n841_suspend_α:
                        lea              rax, [rip + n841_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n841_suspend_β:
                                                                                        jmp   n842_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n842_call_builtin_prolog_α:
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
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   proc_open$2F2_ω
n842_call_builtin_prolog_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_β:
                                                                                        jmp   qword ptr [rbp + 3824]
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_display$2F5_α
proc_display$2F5_α:
proc_display$2F5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1042_call_builtin_prolog_α:
                        sub              rsp, 1024
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
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1083_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1083_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1083_101
.Lx1083_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1083_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1083_240
                        add              rsp, 1024
                                                                                        jmp   proc_display$2F5_ω
.Lx1083_240:
                                                                                        jmp   n1043_var_ref_α
n1042_call_builtin_prolog_β:
                        add              rsp, 1024
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n1043_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n1044_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n1045_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_call_builtin_prolog_α:
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
.Lx1088_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1088_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1088_41
                        cmp              esi, 1
                                                                                        jne   .Lx1088_55
                        mov              r8, rax
                                                                                        jmp   .Lx1088_40
.Lx1088_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1088_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1088_41
                        mov              r8, rax
                                                                                        jmp   .Lx1088_40
.Lx1088_56:
                        cmp              eax, 72
                                                                                        jne   .Lx1088_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1088_41
                        cmp              rax, r8
                                                                                        je    .Lx1088_41
                        mov              r8, rax
                                                                                        jmp   .Lx1088_40
.Lx1088_41:
                        lea              r9, [rbp + 1072]
.Lx1088_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1088_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1088_43
                        cmp              esi, 1
                                                                                        jne   .Lx1088_57
                        mov              r9, rax
                                                                                        jmp   .Lx1088_42
.Lx1088_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1088_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1088_43
                        mov              r9, rax
                                                                                        jmp   .Lx1088_42
.Lx1088_58:
                        cmp              eax, 72
                                                                                        jne   .Lx1088_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1088_43
                        cmp              rax, r9
                                                                                        je    .Lx1088_43
                        mov              r9, rax
                                                                                        jmp   .Lx1088_42
.Lx1088_43:
                        cmp              r8, r9
                                                                                        je    .Lx1088_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1088_44
                        cmp              eax, 104
                                                                                        je    .Lx1088_44
                        cmp              eax, 72
                                                                                        jne   .Lx1088_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1088_44
                                                                                        jmp   .Lx1088_45
.Lx1088_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1088_53
                        cmp              eax, 104
                                                                                        je    .Lx1088_53
                        cmp              eax, 72
                                                                                        jne   .Lx1088_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1088_53
                                                                                        jmp   .Lx1088_46
.Lx1088_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1088_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1088_53
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
                                                                                        jmp   .Lx1088_51
.Lx1088_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1088_47
                        cmp              eax, 104
                                                                                        je    .Lx1088_47
                        cmp              eax, 72
                                                                                        jne   .Lx1088_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1088_47
                                                                                        jmp   .Lx1088_48
.Lx1088_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1088_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1088_53
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
                                                                                        jmp   .Lx1088_51
.Lx1088_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx1088_49
                        cmp              edx, 80
                                                                                        je    .Lx1088_53
                                                                                        jmp   .Lx1088_52
.Lx1088_49:
                        cmp              edx, 80
                                                                                        je    .Lx1088_52
                        cmp              ecx, 5
                                                                                        je    .Lx1088_53
                        cmp              edx, 5
                                                                                        je    .Lx1088_53
                        cmp              ecx, 3
                                                                                        jne   .Lx1088_50
                        cmp              edx, 3
                                                                                        jne   .Lx1088_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1088_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1088_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1088_51
                                                                                        jmp   .Lx1088_52
.Lx1088_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1088_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1088_53
.Lx1088_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1088_54
.Lx1088_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx1088_54
.Lx1088_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1088_54:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1046_var_ref_α
n1045_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n1047_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n1048_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1048_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 976]
                        lea              r8, [rbp + 976]
.Lx1093_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1093_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1093_41
                        cmp              esi, 1
                                                                                        jne   .Lx1093_55
                        mov              r8, rax
                                                                                        jmp   .Lx1093_40
.Lx1093_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1093_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1093_41
                        mov              r8, rax
                                                                                        jmp   .Lx1093_40
.Lx1093_56:
                        cmp              eax, 72
                                                                                        jne   .Lx1093_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1093_41
                        cmp              rax, r8
                                                                                        je    .Lx1093_41
                        mov              r8, rax
                                                                                        jmp   .Lx1093_40
.Lx1093_41:
                        lea              r9, [rbp + 992]
.Lx1093_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1093_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1093_43
                        cmp              esi, 1
                                                                                        jne   .Lx1093_57
                        mov              r9, rax
                                                                                        jmp   .Lx1093_42
.Lx1093_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1093_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1093_43
                        mov              r9, rax
                                                                                        jmp   .Lx1093_42
.Lx1093_58:
                        cmp              eax, 72
                                                                                        jne   .Lx1093_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1093_43
                        cmp              rax, r9
                                                                                        je    .Lx1093_43
                        mov              r9, rax
                                                                                        jmp   .Lx1093_42
.Lx1093_43:
                        cmp              r8, r9
                                                                                        je    .Lx1093_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1093_44
                        cmp              eax, 104
                                                                                        je    .Lx1093_44
                        cmp              eax, 72
                                                                                        jne   .Lx1093_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1093_44
                                                                                        jmp   .Lx1093_45
.Lx1093_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1093_53
                        cmp              eax, 104
                                                                                        je    .Lx1093_53
                        cmp              eax, 72
                                                                                        jne   .Lx1093_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1093_53
                                                                                        jmp   .Lx1093_46
.Lx1093_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1093_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1093_53
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
                                                                                        jmp   .Lx1093_51
.Lx1093_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1093_47
                        cmp              eax, 104
                                                                                        je    .Lx1093_47
                        cmp              eax, 72
                                                                                        jne   .Lx1093_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1093_47
                                                                                        jmp   .Lx1093_48
.Lx1093_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1093_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1093_53
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
                                                                                        jmp   .Lx1093_51
.Lx1093_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx1093_49
                        cmp              edx, 80
                                                                                        je    .Lx1093_53
                                                                                        jmp   .Lx1093_52
.Lx1093_49:
                        cmp              edx, 80
                                                                                        je    .Lx1093_52
                        cmp              ecx, 5
                                                                                        je    .Lx1093_53
                        cmp              edx, 5
                                                                                        je    .Lx1093_53
                        cmp              ecx, 3
                                                                                        jne   .Lx1093_50
                        cmp              edx, 3
                                                                                        jne   .Lx1093_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1093_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1093_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1093_51
                                                                                        jmp   .Lx1093_52
.Lx1093_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1093_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1093_53
.Lx1093_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1093_54
.Lx1093_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx1093_54
.Lx1093_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1093_54:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1049_var_ref_α
n1048_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1049_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n1050_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1050_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n1051_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1051_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        lea              r8, [rbp + 896]
.Lx1098_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1098_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1098_41
                        cmp              esi, 1
                                                                                        jne   .Lx1098_55
                        mov              r8, rax
                                                                                        jmp   .Lx1098_40
.Lx1098_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1098_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1098_41
                        mov              r8, rax
                                                                                        jmp   .Lx1098_40
.Lx1098_56:
                        cmp              eax, 72
                                                                                        jne   .Lx1098_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1098_41
                        cmp              rax, r8
                                                                                        je    .Lx1098_41
                        mov              r8, rax
                                                                                        jmp   .Lx1098_40
.Lx1098_41:
                        lea              r9, [rbp + 912]
.Lx1098_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1098_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1098_43
                        cmp              esi, 1
                                                                                        jne   .Lx1098_57
                        mov              r9, rax
                                                                                        jmp   .Lx1098_42
.Lx1098_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1098_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1098_43
                        mov              r9, rax
                                                                                        jmp   .Lx1098_42
.Lx1098_58:
                        cmp              eax, 72
                                                                                        jne   .Lx1098_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1098_43
                        cmp              rax, r9
                                                                                        je    .Lx1098_43
                        mov              r9, rax
                                                                                        jmp   .Lx1098_42
.Lx1098_43:
                        cmp              r8, r9
                                                                                        je    .Lx1098_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1098_44
                        cmp              eax, 104
                                                                                        je    .Lx1098_44
                        cmp              eax, 72
                                                                                        jne   .Lx1098_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1098_44
                                                                                        jmp   .Lx1098_45
.Lx1098_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1098_53
                        cmp              eax, 104
                                                                                        je    .Lx1098_53
                        cmp              eax, 72
                                                                                        jne   .Lx1098_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1098_53
                                                                                        jmp   .Lx1098_46
.Lx1098_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1098_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1098_53
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
                                                                                        jmp   .Lx1098_51
.Lx1098_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1098_47
                        cmp              eax, 104
                                                                                        je    .Lx1098_47
                        cmp              eax, 72
                                                                                        jne   .Lx1098_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1098_47
                                                                                        jmp   .Lx1098_48
.Lx1098_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1098_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1098_53
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
                                                                                        jmp   .Lx1098_51
.Lx1098_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx1098_49
                        cmp              edx, 80
                                                                                        je    .Lx1098_53
                                                                                        jmp   .Lx1098_52
.Lx1098_49:
                        cmp              edx, 80
                                                                                        je    .Lx1098_52
                        cmp              ecx, 5
                                                                                        je    .Lx1098_53
                        cmp              edx, 5
                                                                                        je    .Lx1098_53
                        cmp              ecx, 3
                                                                                        jne   .Lx1098_50
                        cmp              edx, 3
                                                                                        jne   .Lx1098_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1098_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1098_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1098_51
                                                                                        jmp   .Lx1098_52
.Lx1098_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1098_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1098_53
.Lx1098_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1098_54
.Lx1098_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx1098_54
.Lx1098_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1098_54:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1052_var_ref_α
n1051_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n1053_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1053_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n1054_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 816]
                        lea              r8, [rbp + 816]
.Lx1103_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1103_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1103_41
                        cmp              esi, 1
                                                                                        jne   .Lx1103_55
                        mov              r8, rax
                                                                                        jmp   .Lx1103_40
.Lx1103_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1103_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1103_41
                        mov              r8, rax
                                                                                        jmp   .Lx1103_40
.Lx1103_56:
                        cmp              eax, 72
                                                                                        jne   .Lx1103_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1103_41
                        cmp              rax, r8
                                                                                        je    .Lx1103_41
                        mov              r8, rax
                                                                                        jmp   .Lx1103_40
.Lx1103_41:
                        lea              r9, [rbp + 832]
.Lx1103_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1103_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1103_43
                        cmp              esi, 1
                                                                                        jne   .Lx1103_57
                        mov              r9, rax
                                                                                        jmp   .Lx1103_42
.Lx1103_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1103_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1103_43
                        mov              r9, rax
                                                                                        jmp   .Lx1103_42
.Lx1103_58:
                        cmp              eax, 72
                                                                                        jne   .Lx1103_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1103_43
                        cmp              rax, r9
                                                                                        je    .Lx1103_43
                        mov              r9, rax
                                                                                        jmp   .Lx1103_42
.Lx1103_43:
                        cmp              r8, r9
                                                                                        je    .Lx1103_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1103_44
                        cmp              eax, 104
                                                                                        je    .Lx1103_44
                        cmp              eax, 72
                                                                                        jne   .Lx1103_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1103_44
                                                                                        jmp   .Lx1103_45
.Lx1103_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1103_53
                        cmp              eax, 104
                                                                                        je    .Lx1103_53
                        cmp              eax, 72
                                                                                        jne   .Lx1103_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1103_53
                                                                                        jmp   .Lx1103_46
.Lx1103_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1103_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1103_53
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
                                                                                        jmp   .Lx1103_51
.Lx1103_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1103_47
                        cmp              eax, 104
                                                                                        je    .Lx1103_47
                        cmp              eax, 72
                                                                                        jne   .Lx1103_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1103_47
                                                                                        jmp   .Lx1103_48
.Lx1103_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1103_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1103_53
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
                                                                                        jmp   .Lx1103_51
.Lx1103_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx1103_49
                        cmp              edx, 80
                                                                                        je    .Lx1103_53
                                                                                        jmp   .Lx1103_52
.Lx1103_49:
                        cmp              edx, 80
                                                                                        je    .Lx1103_52
                        cmp              ecx, 5
                                                                                        je    .Lx1103_53
                        cmp              edx, 5
                                                                                        je    .Lx1103_53
                        cmp              ecx, 3
                                                                                        jne   .Lx1103_50
                        cmp              edx, 3
                                                                                        jne   .Lx1103_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1103_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1103_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1103_51
                                                                                        jmp   .Lx1103_52
.Lx1103_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1103_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1103_53
.Lx1103_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1103_54
.Lx1103_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx1103_54
.Lx1103_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1103_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1055_var_ref_α
n1054_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n1056_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1057_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1057_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx1108_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1108_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1108_41
                        cmp              esi, 1
                                                                                        jne   .Lx1108_55
                        mov              r8, rax
                                                                                        jmp   .Lx1108_40
.Lx1108_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1108_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1108_41
                        mov              r8, rax
                                                                                        jmp   .Lx1108_40
.Lx1108_56:
                        cmp              eax, 72
                                                                                        jne   .Lx1108_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1108_41
                        cmp              rax, r8
                                                                                        je    .Lx1108_41
                        mov              r8, rax
                                                                                        jmp   .Lx1108_40
.Lx1108_41:
                        lea              r9, [rbp + 752]
.Lx1108_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1108_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1108_43
                        cmp              esi, 1
                                                                                        jne   .Lx1108_57
                        mov              r9, rax
                                                                                        jmp   .Lx1108_42
.Lx1108_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1108_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1108_43
                        mov              r9, rax
                                                                                        jmp   .Lx1108_42
.Lx1108_58:
                        cmp              eax, 72
                                                                                        jne   .Lx1108_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1108_43
                        cmp              rax, r9
                                                                                        je    .Lx1108_43
                        mov              r9, rax
                                                                                        jmp   .Lx1108_42
.Lx1108_43:
                        cmp              r8, r9
                                                                                        je    .Lx1108_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1108_44
                        cmp              eax, 104
                                                                                        je    .Lx1108_44
                        cmp              eax, 72
                                                                                        jne   .Lx1108_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1108_44
                                                                                        jmp   .Lx1108_45
.Lx1108_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1108_53
                        cmp              eax, 104
                                                                                        je    .Lx1108_53
                        cmp              eax, 72
                                                                                        jne   .Lx1108_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1108_53
                                                                                        jmp   .Lx1108_46
.Lx1108_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1108_53
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
                                                                                        jmp   .Lx1108_51
.Lx1108_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1108_47
                        cmp              eax, 104
                                                                                        je    .Lx1108_47
                        cmp              eax, 72
                                                                                        jne   .Lx1108_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1108_47
                                                                                        jmp   .Lx1108_48
.Lx1108_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1108_53
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
                                                                                        jmp   .Lx1108_51
.Lx1108_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx1108_49
                        cmp              edx, 80
                                                                                        je    .Lx1108_53
                                                                                        jmp   .Lx1108_52
.Lx1108_49:
                        cmp              edx, 80
                                                                                        je    .Lx1108_52
                        cmp              ecx, 5
                                                                                        je    .Lx1108_53
                        cmp              edx, 5
                                                                                        je    .Lx1108_53
                        cmp              ecx, 3
                                                                                        jne   .Lx1108_50
                        cmp              edx, 3
                                                                                        jne   .Lx1108_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1108_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1108_51
                                                                                        jmp   .Lx1108_52
.Lx1108_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1108_53
.Lx1108_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1108_54
.Lx1108_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx1108_54
.Lx1108_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1108_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1058_lit_string_α
n1057_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 4
                        mov              rax, qword ptr [rip + .Lx1109_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1059_call_builtin_prolog_α
.Lx1109_0:
                        .quad            .Lx1109_0_s
.Lx1109_0_s:
                        .string          "Day="
#-----------------------------------------------------------------------------------------------------------------------
n1059_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn1111:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1111]                        # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1060_var_α
n1059_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1061_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1061_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn1115:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1115]                        # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1062_lit_string_α
n1061_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 8
                        mov              rax, qword ptr [rip + .Lx1116_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n1063_call_builtin_prolog_α
.Lx1116_0:
                        .quad            .Lx1116_0_s
.Lx1116_0_s:
                        .string          " Abbott="
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn1118:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1118]                        # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1064_var_α
n1063_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1065_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1065_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn1122:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]                        # fn
                        lea              rsi, [rbp + 544]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1066_lit_string_α
n1065_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 8
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1067_call_builtin_prolog_α
.Lx1123_0:
                        .quad            .Lx1123_0_s
.Lx1123_0_s:
                        .string          " Briggs="
#-----------------------------------------------------------------------------------------------------------------------
n1067_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn1125:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1125]                        # fn
                        lea              rsi, [rbp + 496]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1068_var_α
n1067_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1069_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1129:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1129]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1070_lit_string_α
n1069_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1070_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 8
                        mov              rax, qword ptr [rip + .Lx1130_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1071_call_builtin_prolog_α
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          " Culver="
#-----------------------------------------------------------------------------------------------------------------------
n1071_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1132:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1132]                        # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1072_var_α
n1071_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1072_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1073_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1073_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn1136:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1136]                        # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1074_lit_string_α
n1073_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 7
                        mov              rax, qword ptr [rip + .Lx1137_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1075_call_builtin_prolog_α
.Lx1137_0:
                        .quad            .Lx1137_0_s
.Lx1137_0_s:
                        .string          " Denny="
#-----------------------------------------------------------------------------------------------------------------------
n1075_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1139:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1139]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1076_var_α
n1075_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1076_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1077_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1077_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn1143:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1143]                        # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1078_lit_string_α
n1077_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1078_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1079_call_builtin_prolog_α
.Lx1144_0:
                        .quad            .Lx1144_0_s
.Lx1144_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1079_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn1146:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1146]                        # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n1082_call_builtin_prolog_α
                                                                                        jmp   n1080_move_label_α
n1079_call_builtin_prolog_β:
                                                                                        jmp   n1082_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1080_move_label_α:
                        lea              rax, [rip + n1082_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 112], rax
                        add              rsp, 1024
                                                                                        jmp   proc_display$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
n1081_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 112]
n1081_disjunction_β:
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n1082_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    proc_display$2F5_ω
                                                                                        jmp   proc_display$2F5_ω
n1082_call_builtin_prolog_β:
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_β:
                                                                                        jmp   n1081_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_day_num$2F2_α
proc_day_num$2F2_α:
proc_day_num$2F2_α_body:
                        lea              rax, [rip + n1159_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
#-----------------------------------------------------------------------------------------------------------------------
n1152_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1201_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1201_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1201_101
.Lx1201_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1201_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1201_240
                        add              rsp, 112
                                                                                        jmp   proc_day_num$2F2_ω
.Lx1201_240:
                                                                                        jmp   n1153_var_ref_α
n1152_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n1154_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 6
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n1155_call_builtin_prolog_α
.Lx1204_0:
                        .quad            .Lx1204_0_s
.Lx1204_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n1155_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              rsi, qword ptr [rip + .Lx1205_2]
                                                                                        jmp   .Lx1205_3
.Lx1205_2:
                        .quad            .Lx1205_2_s
.Lx1205_2_s:
                        .string          "monday"
.Lx1205_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n1160_call_builtin_prolog_α
                                                                                        jmp   n1156_var_ref_α
n1155_call_builtin_prolog_β:
                                                                                        jmp   n1160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n1157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1157_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1208_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n1158_call_builtin_prolog_α
.Lx1208_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]                              # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n1160_call_builtin_prolog_α
                                                                                        jmp   n1159_suspend_α
n1158_call_builtin_prolog_β:
                                                                                        jmp   n1160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1159_suspend_α:
                        lea              rax, [rip + n1159_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_day_num$2F2_γ
n1159_suspend_β:
                                                                                        jmp   n1160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1160_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1161_var_ref_α
n1160_call_builtin_prolog_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n1162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1162_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 7
                        mov              rax, qword ptr [rip + .Lx1215_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1163_call_builtin_prolog_α
.Lx1215_0:
                        .quad            .Lx1215_0_s
.Lx1215_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n1163_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx1216_2]
                                                                                        jmp   .Lx1216_3
.Lx1216_2:
                        .quad            .Lx1216_2_s
.Lx1216_2_s:
                        .string          "tuesday"
.Lx1216_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n1168_call_builtin_prolog_α
                                                                                        jmp   n1164_var_ref_α
n1163_call_builtin_prolog_β:
                                                                                        jmp   n1168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n1165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1165_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx1219_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1166_call_builtin_prolog_α
.Lx1219_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1166_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]                               # args
                        movabs           rsi, 2                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n1168_call_builtin_prolog_α
                                                                                        jmp   n1167_suspend_α
n1166_call_builtin_prolog_β:
                                                                                        jmp   n1168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1167_suspend_α:
                        lea              rax, [rip + n1167_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1167_suspend_β:
                                                                                        jmp   n1168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1168_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1169_var_ref_α
n1168_call_builtin_prolog_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n1170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1170_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 9
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1171_call_builtin_prolog_α
.Lx1226_0:
                        .quad            .Lx1226_0_s
.Lx1226_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n1171_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx1227_2]
                                                                                        jmp   .Lx1227_3
.Lx1227_2:
                        .quad            .Lx1227_2_s
.Lx1227_2_s:
                        .string          "wednesday"
.Lx1227_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n1176_call_builtin_prolog_α
                                                                                        jmp   n1172_var_ref_α
n1171_call_builtin_prolog_β:
                                                                                        jmp   n1176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n1173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1173_lit_integer_α:
                        mov              qword ptr [rbp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1174_call_builtin_prolog_α
.Lx1230_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1174_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]                               # args
                        movabs           rsi, 3                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n1176_call_builtin_prolog_α
                                                                                        jmp   n1175_suspend_α
n1174_call_builtin_prolog_β:
                                                                                        jmp   n1176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1175_suspend_α:
                        lea              rax, [rip + n1175_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1175_suspend_β:
                                                                                        jmp   n1176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1176_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1177_var_ref_α
n1176_call_builtin_prolog_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n1178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 8
                        mov              rax, qword ptr [rip + .Lx1237_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1179_call_builtin_prolog_α
.Lx1237_0:
                        .quad            .Lx1237_0_s
.Lx1237_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n1179_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx1238_2]
                                                                                        jmp   .Lx1238_3
.Lx1238_2:
                        .quad            .Lx1238_2_s
.Lx1238_2_s:
                        .string          "thursday"
.Lx1238_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n1184_call_builtin_prolog_α
                                                                                        jmp   n1180_var_ref_α
n1179_call_builtin_prolog_β:
                                                                                        jmp   n1184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n1181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1181_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1241_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n1182_call_builtin_prolog_α
.Lx1241_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1182_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]                               # args
                        movabs           rsi, 4                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n1184_call_builtin_prolog_α
                                                                                        jmp   n1183_suspend_α
n1182_call_builtin_prolog_β:
                                                                                        jmp   n1184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1183_suspend_α:
                        lea              rax, [rip + n1183_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1183_suspend_β:
                                                                                        jmp   n1184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1185_var_ref_α
n1184_call_builtin_prolog_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n1186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1186_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 6
                        mov              rax, qword ptr [rip + .Lx1248_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1187_call_builtin_prolog_α
.Lx1248_0:
                        .quad            .Lx1248_0_s
.Lx1248_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n1187_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx1249_2]
                                                                                        jmp   .Lx1249_3
.Lx1249_2:
                        .quad            .Lx1249_2_s
.Lx1249_2_s:
                        .string          "friday"
.Lx1249_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n1192_call_builtin_prolog_α
                                                                                        jmp   n1188_var_ref_α
n1187_call_builtin_prolog_β:
                                                                                        jmp   n1192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n1189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1252_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n1190_call_builtin_prolog_α
.Lx1252_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1190_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]                               # args
                        movabs           rsi, 5                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n1192_call_builtin_prolog_α
                                                                                        jmp   n1191_suspend_α
n1190_call_builtin_prolog_β:
                                                                                        jmp   n1192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1191_suspend_α:
                        lea              rax, [rip + n1191_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1191_suspend_β:
                                                                                        jmp   n1192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1192_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1193_var_ref_α
n1192_call_builtin_prolog_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 8
                        mov              rax, qword ptr [rip + .Lx1259_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1195_call_builtin_prolog_α
.Lx1259_0:
                        .quad            .Lx1259_0_s
.Lx1259_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n1195_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx1260_2]
                                                                                        jmp   .Lx1260_3
.Lx1260_2:
                        .quad            .Lx1260_2_s
.Lx1260_2_s:
                        .string          "saturday"
.Lx1260_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n1200_call_builtin_prolog_α
                                                                                        jmp   n1196_var_ref_α
n1195_call_builtin_prolog_β:
                                                                                        jmp   n1200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n1197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1263_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1198_call_builtin_prolog_α
.Lx1263_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1198_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]                               # args
                        movabs           rsi, 6                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n1200_call_builtin_prolog_α
                                                                                        jmp   n1199_suspend_α
n1198_call_builtin_prolog_β:
                                                                                        jmp   n1200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_suspend_α:
                        lea              rax, [rip + n1199_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1199_suspend_β:
                                                                                        jmp   n1200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1200_call_builtin_prolog_α:
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
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   proc_day_num$2F2_ω
n1200_call_builtin_prolog_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1328]
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "differ/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_differ$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "next_day/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_next_day$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "store/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_store$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "puzzle/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_puzzle$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4896
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "$disj0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_$disj0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "member/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_member$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "prev_day/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_prev_day$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "open/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_open$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3840
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "display/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_display$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "day_num/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_day_num$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1344
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
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
n1268_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1273_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1273_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1273_101
.Lx1273_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1273_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1273_240
                        add              rsp, 32
                                                                                        jmp   main_ω
.Lx1273_240:
                                                                                        jmp   n1269_call_proc_staged_α
n1268_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1269_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 4                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1275_1
                        lea              rcx, [rip + .Lx1275_3]
                        lea              rdx, [rip + .Lx1275_4]
                                                                                        jmp   rax
.Lx1275_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx1275_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1275_2
.Lx1275_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1275_2
.Lx1275_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx1275_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1275_2
.Lx1275_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1275_2
.Lx1275_1:
                        call             rt_faildescr@PLT
.Lx1275_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1275_240
                        add              rsp, 32
                                                                                        jmp   n1272_call_builtin_prolog_α
.Lx1275_240:
                                                                                        jmp   n1270_move_label_α
n1269_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx1275_0:
                        .quad            .Lx1275_0_s
.Lx1275_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n1270_move_label_α:
                        lea              rax, [rip + n1269_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1271_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n1271_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1272_call_builtin_prolog_α:
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
n1272_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n1271_disjunction_α
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
