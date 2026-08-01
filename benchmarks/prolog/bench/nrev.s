                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse$2F2_α
proc_reverse$2F2_α:
                        .global          proc_reverse$2F2_α
                        .global          proc_reverse$2F2_β
                        .global          proc_reverse$2F2_γ
                        .global          proc_reverse$2F2_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse$2F2_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx13_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx13_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx13_101
.Lx13_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx13_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        add              rsp, 16
                                                                                        jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
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
.Lx18_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx18_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_41
                        cmp              esi, 1
                                                                                        jne   .Lx18_55
                        mov              r8, rax
                                                                                        jmp   .Lx18_40
.Lx18_55:
                        cmp              esi, 2
                                                                                        jne   .Lx18_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx18_41
                        mov              r8, rax
                                                                                        jmp   .Lx18_40
.Lx18_56:
                        cmp              eax, 13
                                                                                        jne   .Lx18_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_41
                        cmp              rax, r8
                                                                                        je    .Lx18_41
                        mov              r8, rax
                                                                                        jmp   .Lx18_40
.Lx18_41:
                        lea              r9, [rbp + 368]
.Lx18_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx18_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_43
                        cmp              esi, 1
                                                                                        jne   .Lx18_57
                        mov              r9, rax
                                                                                        jmp   .Lx18_42
.Lx18_57:
                        cmp              esi, 2
                                                                                        jne   .Lx18_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx18_43
                        mov              r9, rax
                                                                                        jmp   .Lx18_42
.Lx18_58:
                        cmp              eax, 13
                                                                                        jne   .Lx18_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_43
                        cmp              rax, r9
                                                                                        je    .Lx18_43
                        mov              r9, rax
                                                                                        jmp   .Lx18_42
.Lx18_43:
                        cmp              r8, r9
                                                                                        je    .Lx18_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx18_44
                        cmp              eax, 99
                                                                                        je    .Lx18_44
                        cmp              eax, 13
                                                                                        jne   .Lx18_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx18_44
                                                                                        jmp   .Lx18_45
.Lx18_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx18_53
                        cmp              eax, 99
                                                                                        je    .Lx18_53
                        cmp              eax, 13
                                                                                        jne   .Lx18_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx18_53
                                                                                        jmp   .Lx18_46
.Lx18_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx18_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx18_53
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
                                                                                        jmp   .Lx18_51
.Lx18_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx18_47
                        cmp              eax, 99
                                                                                        je    .Lx18_47
                        cmp              eax, 13
                                                                                        jne   .Lx18_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx18_47
                                                                                        jmp   .Lx18_48
.Lx18_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx18_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx18_53
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
                                                                                        jmp   .Lx18_51
.Lx18_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx18_49
                        cmp              edx, 14
                                                                                        je    .Lx18_53
                                                                                        jmp   .Lx18_52
.Lx18_49:
                        cmp              edx, 14
                                                                                        je    .Lx18_52
                        cmp              ecx, 7
                                                                                        je    .Lx18_53
                        cmp              edx, 7
                                                                                        je    .Lx18_53
                        cmp              ecx, 6
                                                                                        jne   .Lx18_50
                        cmp              edx, 6
                                                                                        jne   .Lx18_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx18_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx18_51
                                                                                        jmp   .Lx18_52
.Lx18_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx18_53
.Lx18_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx18_54
.Lx18_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx18_54
.Lx18_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx18_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n12_call_builtin_prolog_α
                                                                                        jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                                        jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        add              rsp, 16
                                                                                        jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
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
.Lx23_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx23_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx23_41
                        cmp              esi, 1
                                                                                        jne   .Lx23_55
                        mov              r8, rax
                                                                                        jmp   .Lx23_40
.Lx23_55:
                        cmp              esi, 2
                                                                                        jne   .Lx23_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx23_41
                        mov              r8, rax
                                                                                        jmp   .Lx23_40
.Lx23_56:
                        cmp              eax, 13
                                                                                        jne   .Lx23_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx23_41
                        cmp              rax, r8
                                                                                        je    .Lx23_41
                        mov              r8, rax
                                                                                        jmp   .Lx23_40
.Lx23_41:
                        lea              r9, [rbp + 288]
.Lx23_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx23_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx23_43
                        cmp              esi, 1
                                                                                        jne   .Lx23_57
                        mov              r9, rax
                                                                                        jmp   .Lx23_42
.Lx23_57:
                        cmp              esi, 2
                                                                                        jne   .Lx23_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx23_43
                        mov              r9, rax
                                                                                        jmp   .Lx23_42
.Lx23_58:
                        cmp              eax, 13
                                                                                        jne   .Lx23_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx23_43
                        cmp              rax, r9
                                                                                        je    .Lx23_43
                        mov              r9, rax
                                                                                        jmp   .Lx23_42
.Lx23_43:
                        cmp              r8, r9
                                                                                        je    .Lx23_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx23_44
                        cmp              eax, 99
                                                                                        je    .Lx23_44
                        cmp              eax, 13
                                                                                        jne   .Lx23_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx23_44
                                                                                        jmp   .Lx23_45
.Lx23_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx23_53
                        cmp              eax, 99
                                                                                        je    .Lx23_53
                        cmp              eax, 13
                                                                                        jne   .Lx23_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx23_53
                                                                                        jmp   .Lx23_46
.Lx23_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx23_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx23_53
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
                                                                                        jmp   .Lx23_51
.Lx23_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx23_47
                        cmp              eax, 99
                                                                                        je    .Lx23_47
                        cmp              eax, 13
                                                                                        jne   .Lx23_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx23_47
                                                                                        jmp   .Lx23_48
.Lx23_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx23_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx23_53
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
                                                                                        jmp   .Lx23_51
.Lx23_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx23_49
                        cmp              edx, 14
                                                                                        je    .Lx23_53
                                                                                        jmp   .Lx23_52
.Lx23_49:
                        cmp              edx, 14
                                                                                        je    .Lx23_52
                        cmp              ecx, 7
                                                                                        je    .Lx23_53
                        cmp              edx, 7
                                                                                        je    .Lx23_53
                        cmp              ecx, 6
                                                                                        jne   .Lx23_50
                        cmp              edx, 6
                                                                                        jne   .Lx23_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx23_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx23_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx23_51
                                                                                        jmp   .Lx23_52
.Lx23_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx23_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx23_53
.Lx23_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx23_54
.Lx23_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx23_54
.Lx23_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx23_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n12_call_builtin_prolog_α
                                                                                        jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                                                                                        jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n9_var_ref_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n10_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx30_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx30_21
.Lx30_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx30_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx30_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx30_23
.Lx30_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx30_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx30_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx30_25
.Lx30_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx30_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx30_1
                        lea              rcx, [rip + .Lx30_3]
                        lea              rdx, [rip + .Lx30_4]
                                                                                        jmp   rax
.Lx30_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx30_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx30_2
.Lx30_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx30_2
.Lx30_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx30_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx30_2
.Lx30_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx30_2
.Lx30_1:
                        call             rt_faildescr@PLT
.Lx30_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n12_call_builtin_prolog_α
                                                                                        jmp   n11_suspend_α
n10_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n11_suspend_β:
                                                                                        jmp   n10_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
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
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   proc_reverse$2F2_ω
n12_call_builtin_prolog_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse$2F2_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$reverse_$2F3_α
proc_$reverse_$2F3_α:
                        .global          proc_$reverse_$2F3_α
                        .global          proc_$reverse_$2F3_β
                        .global          proc_$reverse_$2F3_γ
                        .global          proc_$reverse_$2F3_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
proc_$reverse_$2F3_α_body:
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx73_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx73_101
.Lx73_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx73_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        add              rsp, 16
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n37_lit_string_α
.Lx76_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              dword ptr [rbp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n38_call_builtin_prolog_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx78_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        cmp              esi, 1
                                                                                        jne   .Lx78_112
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_112:
                        cmp              esi, 2
                                                                                        jne   .Lx78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_113:
                        cmp              eax, 13
                                                                                        jne   .Lx78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        cmp              rax, r8
                                                                                        je    .Lx78_111
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_114
                        cmp              eax, 99
                                                                                        je    .Lx78_114
                        cmp              eax, 13
                                                                                        jne   .Lx78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx78_114
                                                                                        jmp   .Lx78_118
.Lx78_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx78_115
                        cmp              eax, 6
                                                                                        je    .Lx78_114
                        cmp              eax, 1
                                                                                        jne   .Lx78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx78_114
                                                                                        jmp   .Lx78_116
.Lx78_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx78_117
.Lx78_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx78_117
.Lx78_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx78_117:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n50_var_ref_α
                                                                                        jmp   n39_var_ref_α
n38_call_builtin_prolog_β:
                                                                                        jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        add              rsp, 16
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              dword ptr [rbp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n41_call_builtin_prolog_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx82_2]
                                                                                        jmp   .Lx82_3
.Lx82_2:
                        .quad            .Lx82_2_s
.Lx82_2_s:
                        .string          "[]"
.Lx82_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_builtin_prolog_α
                                                                                        jmp   n42_var_ref_α
n41_call_builtin_prolog_β:
                                                                                        jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx87_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              esi, 1
                                                                                        jne   .Lx87_55
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_55:
                        cmp              esi, 2
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_56:
                        cmp              eax, 13
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              rax, r8
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_41:
                        lea              r9, [rbp + 928]
.Lx87_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              esi, 1
                                                                                        jne   .Lx87_57
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_57:
                        cmp              esi, 2
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_58:
                        cmp              eax, 13
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              rax, r9
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_43:
                        cmp              r8, r9
                                                                                        je    .Lx87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_44
                        cmp              eax, 99
                                                                                        je    .Lx87_44
                        cmp              eax, 13
                                                                                        jne   .Lx87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx87_44
                                                                                        jmp   .Lx87_45
.Lx87_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_53
                        cmp              eax, 99
                                                                                        je    .Lx87_53
                        cmp              eax, 13
                                                                                        jne   .Lx87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_46
.Lx87_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_47
                        cmp              eax, 99
                                                                                        je    .Lx87_47
                        cmp              eax, 13
                                                                                        jne   .Lx87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_47
                                                                                        jmp   .Lx87_48
.Lx87_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx87_49
                        cmp              edx, 14
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_52
.Lx87_49:
                        cmp              edx, 14
                                                                                        je    .Lx87_52
                        cmp              ecx, 7
                                                                                        je    .Lx87_53
                        cmp              edx, 7
                                                                                        je    .Lx87_53
                        cmp              ecx, 6
                                                                                        jne   .Lx87_50
                        cmp              edx, 6
                                                                                        jne   .Lx87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx87_51
                                                                                        jmp   .Lx87_52
.Lx87_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
.Lx87_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx87_54
.Lx87_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx87_54
.Lx87_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx87_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_builtin_prolog_α
                                                                                        jmp   n45_var_ref_α
n44_call_builtin_prolog_β:
                                                                                        jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx92_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx92_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        cmp              esi, 1
                                                                                        jne   .Lx92_55
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_55:
                        cmp              esi, 2
                                                                                        jne   .Lx92_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_56:
                        cmp              eax, 13
                                                                                        jne   .Lx92_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        cmp              rax, r8
                                                                                        je    .Lx92_41
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_41:
                        lea              r9, [rbp + 848]
.Lx92_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx92_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        cmp              esi, 1
                                                                                        jne   .Lx92_57
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_57:
                        cmp              esi, 2
                                                                                        jne   .Lx92_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_58:
                        cmp              eax, 13
                                                                                        jne   .Lx92_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        cmp              rax, r9
                                                                                        je    .Lx92_43
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_43:
                        cmp              r8, r9
                                                                                        je    .Lx92_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_44
                        cmp              eax, 99
                                                                                        je    .Lx92_44
                        cmp              eax, 13
                                                                                        jne   .Lx92_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx92_44
                                                                                        jmp   .Lx92_45
.Lx92_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_53
                        cmp              eax, 99
                                                                                        je    .Lx92_53
                        cmp              eax, 13
                                                                                        jne   .Lx92_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx92_53
                                                                                        jmp   .Lx92_46
.Lx92_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx92_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx92_53
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
                                                                                        jmp   .Lx92_51
.Lx92_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_47
                        cmp              eax, 99
                                                                                        je    .Lx92_47
                        cmp              eax, 13
                                                                                        jne   .Lx92_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx92_47
                                                                                        jmp   .Lx92_48
.Lx92_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx92_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx92_53
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
                                                                                        jmp   .Lx92_51
.Lx92_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx92_49
                        cmp              edx, 14
                                                                                        je    .Lx92_53
                                                                                        jmp   .Lx92_52
.Lx92_49:
                        cmp              edx, 14
                                                                                        je    .Lx92_52
                        cmp              ecx, 7
                                                                                        je    .Lx92_53
                        cmp              edx, 7
                                                                                        je    .Lx92_53
                        cmp              ecx, 6
                                                                                        jne   .Lx92_50
                        cmp              edx, 6
                                                                                        jne   .Lx92_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx92_51
                                                                                        jmp   .Lx92_52
.Lx92_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx92_53
.Lx92_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx92_54
.Lx92_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx92_54
.Lx92_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx92_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_builtin_prolog_α
                                                                                        jmp   n48_suspend_α
n47_call_builtin_prolog_β:
                                                                                        jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_suspend_α:
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$reverse_$2F3_γ
n48_suspend_β:
                                                                                        jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   n50_var_ref_α
n49_call_builtin_prolog_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        add              rsp, 16
                                                                                        jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n52_lit_integer_α
.Lx98_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n53_call_builtin_prolog_α
.Lx99_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx100_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx100_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx100_111
                        cmp              esi, 1
                                                                                        jne   .Lx100_112
                        mov              r8, rax
                                                                                        jmp   .Lx100_110
.Lx100_112:
                        cmp              esi, 2
                                                                                        jne   .Lx100_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx100_111
                        mov              r8, rax
                                                                                        jmp   .Lx100_110
.Lx100_113:
                        cmp              eax, 13
                                                                                        jne   .Lx100_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx100_111
                        cmp              rax, r8
                                                                                        je    .Lx100_111
                        mov              r8, rax
                                                                                        jmp   .Lx100_110
.Lx100_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx100_114
                        cmp              eax, 99
                                                                                        je    .Lx100_114
                        cmp              eax, 13
                                                                                        jne   .Lx100_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx100_114
                                                                                        jmp   .Lx100_118
.Lx100_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx100_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx100_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx100_115
                                                                                        jmp   .Lx100_114
.Lx100_119:
                        cmp              eax, 6
                                                                                        jne   .Lx100_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx100_114
                                                                                        jmp   .Lx100_115
.Lx100_120:
                        cmp              eax, 1
                                                                                        jne   .Lx100_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx100_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx100_114
                                                                                        jmp   .Lx100_115
.Lx100_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx100_117
.Lx100_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx100_117
.Lx100_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx100_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n54_var_ref_α
n53_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx107_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx107_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_61
                        cmp              esi, 1
                                                                                        jne   .Lx107_62
                        mov              r8, rax
                                                                                        jmp   .Lx107_60
.Lx107_62:
                        cmp              esi, 2
                                                                                        jne   .Lx107_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx107_61
                        mov              r8, rax
                                                                                        jmp   .Lx107_60
.Lx107_63:
                        cmp              eax, 13
                                                                                        jne   .Lx107_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_61
                        cmp              rax, r8
                                                                                        je    .Lx107_61
                        mov              r8, rax
                                                                                        jmp   .Lx107_60
.Lx107_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_80
                        cmp              eax, 99
                                                                                        je    .Lx107_80
                        cmp              eax, 13
                                                                                        jne   .Lx107_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx107_80
                                                                                        jmp   .Lx107_74
.Lx107_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx107_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx107_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx107_73
                        lea              r9, [rbp + 592]
.Lx107_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx107_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_65
                        cmp              esi, 1
                                                                                        jne   .Lx107_66
                        mov              r9, rax
                                                                                        jmp   .Lx107_64
.Lx107_66:
                        cmp              esi, 2
                                                                                        jne   .Lx107_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx107_65
                        mov              r9, rax
                                                                                        jmp   .Lx107_64
.Lx107_67:
                        cmp              eax, 13
                                                                                        jne   .Lx107_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_65
                        cmp              rax, r9
                                                                                        je    .Lx107_65
                        mov              r9, rax
                                                                                        jmp   .Lx107_64
.Lx107_65:
                        lea              rcx, [rbp + 608]
.Lx107_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx107_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx107_69
                        cmp              esi, 1
                                                                                        jne   .Lx107_70
                        mov              rcx, rax
                                                                                        jmp   .Lx107_68
.Lx107_70:
                        cmp              esi, 2
                                                                                        jne   .Lx107_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx107_69
                        mov              rcx, rax
                                                                                        jmp   .Lx107_68
.Lx107_71:
                        cmp              eax, 13
                                                                                        jne   .Lx107_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx107_69
                        cmp              rax, rcx
                                                                                        je    .Lx107_69
                        mov              rcx, rax
                                                                                        jmp   .Lx107_68
.Lx107_69:
                        cmp              r9, rcx
                                                                                        je    .Lx107_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_75
                        cmp              eax, 99
                                                                                        je    .Lx107_75
                        cmp              eax, 13
                                                                                        jne   .Lx107_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx107_75
                                                                                        jmp   .Lx107_72
.Lx107_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_76
                        cmp              eax, 99
                                                                                        je    .Lx107_76
                        cmp              eax, 13
                                                                                        jne   .Lx107_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx107_76
                                                                                        jmp   .Lx107_72
.Lx107_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx107_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx107_72
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
                                                                                        jmp   .Lx107_77
.Lx107_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx107_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx107_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx107_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx107_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx107_72
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
                        lea              r9, [rbp + 592]
.Lx107_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx107_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_82
                        cmp              esi, 1
                                                                                        jne   .Lx107_83
                        mov              r9, rax
                                                                                        jmp   .Lx107_81
.Lx107_83:
                        cmp              esi, 2
                                                                                        jne   .Lx107_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx107_82
                        mov              r9, rax
                                                                                        jmp   .Lx107_81
.Lx107_84:
                        cmp              eax, 13
                                                                                        jne   .Lx107_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_82
                        cmp              rax, r9
                                                                                        je    .Lx107_82
                        mov              r9, rax
                                                                                        jmp   .Lx107_81
.Lx107_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_85
                        cmp              eax, 99
                                                                                        je    .Lx107_85
                        cmp              eax, 13
                                                                                        jne   .Lx107_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx107_85
                                                                                        jmp   .Lx107_86
.Lx107_85:
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
                                                                                        jmp   .Lx107_87
.Lx107_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx107_87:
                        lea              rcx, [rbp + 608]
.Lx107_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx107_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx107_89
                        cmp              esi, 1
                                                                                        jne   .Lx107_90
                        mov              rcx, rax
                                                                                        jmp   .Lx107_88
.Lx107_90:
                        cmp              esi, 2
                                                                                        jne   .Lx107_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx107_89
                        mov              rcx, rax
                                                                                        jmp   .Lx107_88
.Lx107_91:
                        cmp              eax, 13
                                                                                        jne   .Lx107_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx107_89
                        cmp              rax, rcx
                                                                                        je    .Lx107_89
                        mov              rcx, rax
                                                                                        jmp   .Lx107_88
.Lx107_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_92
                        cmp              eax, 99
                                                                                        je    .Lx107_92
                        cmp              eax, 13
                                                                                        jne   .Lx107_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx107_92
                                                                                        jmp   .Lx107_93
.Lx107_92:
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
                                                                                        jmp   .Lx107_94
.Lx107_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx107_94:
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
                                                                                        jmp   .Lx107_77
.Lx107_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx107_77
.Lx107_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx107_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n58_var_ref_α
n57_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        add              rsp, 16
                                                                                        jmp   n59_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        add              rsp, 16
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx112_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              esi, 1
                                                                                        jne   .Lx112_55
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_55:
                        cmp              esi, 2
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_56:
                        cmp              eax, 13
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              rax, r8
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_41:
                        lea              r9, [rbp + 496]
.Lx112_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              esi, 1
                                                                                        jne   .Lx112_57
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_57:
                        cmp              esi, 2
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_58:
                        cmp              eax, 13
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              rax, r9
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_43:
                        cmp              r8, r9
                                                                                        je    .Lx112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_44
                        cmp              eax, 99
                                                                                        je    .Lx112_44
                        cmp              eax, 13
                                                                                        jne   .Lx112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx112_44
                                                                                        jmp   .Lx112_45
.Lx112_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_53
                        cmp              eax, 99
                                                                                        je    .Lx112_53
                        cmp              eax, 13
                                                                                        jne   .Lx112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_46
.Lx112_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_47
                        cmp              eax, 99
                                                                                        je    .Lx112_47
                        cmp              eax, 13
                                                                                        jne   .Lx112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_47
                                                                                        jmp   .Lx112_48
.Lx112_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx112_49
                        cmp              edx, 14
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_52
.Lx112_49:
                        cmp              edx, 14
                                                                                        je    .Lx112_52
                        cmp              ecx, 7
                                                                                        je    .Lx112_53
                        cmp              edx, 7
                                                                                        je    .Lx112_53
                        cmp              ecx, 6
                                                                                        jne   .Lx112_50
                        cmp              edx, 6
                                                                                        jne   .Lx112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx112_51
                                                                                        jmp   .Lx112_52
.Lx112_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
.Lx112_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx112_54
.Lx112_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx112_54
.Lx112_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx112_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n61_var_ref_α
n60_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        add              rsp, 16
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n63_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx117_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx117_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_41
                        cmp              esi, 1
                                                                                        jne   .Lx117_55
                        mov              r8, rax
                                                                                        jmp   .Lx117_40
.Lx117_55:
                        cmp              esi, 2
                                                                                        jne   .Lx117_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx117_41
                        mov              r8, rax
                                                                                        jmp   .Lx117_40
.Lx117_56:
                        cmp              eax, 13
                                                                                        jne   .Lx117_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_41
                        cmp              rax, r8
                                                                                        je    .Lx117_41
                        mov              r8, rax
                                                                                        jmp   .Lx117_40
.Lx117_41:
                        lea              r9, [rbp + 416]
.Lx117_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx117_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_43
                        cmp              esi, 1
                                                                                        jne   .Lx117_57
                        mov              r9, rax
                                                                                        jmp   .Lx117_42
.Lx117_57:
                        cmp              esi, 2
                                                                                        jne   .Lx117_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx117_43
                        mov              r9, rax
                                                                                        jmp   .Lx117_42
.Lx117_58:
                        cmp              eax, 13
                                                                                        jne   .Lx117_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx117_43
                        cmp              rax, r9
                                                                                        je    .Lx117_43
                        mov              r9, rax
                                                                                        jmp   .Lx117_42
.Lx117_43:
                        cmp              r8, r9
                                                                                        je    .Lx117_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx117_44
                        cmp              eax, 99
                                                                                        je    .Lx117_44
                        cmp              eax, 13
                                                                                        jne   .Lx117_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx117_44
                                                                                        jmp   .Lx117_45
.Lx117_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx117_53
                        cmp              eax, 99
                                                                                        je    .Lx117_53
                        cmp              eax, 13
                                                                                        jne   .Lx117_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx117_53
                                                                                        jmp   .Lx117_46
.Lx117_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx117_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx117_53
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
                                                                                        jmp   .Lx117_51
.Lx117_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx117_47
                        cmp              eax, 99
                                                                                        je    .Lx117_47
                        cmp              eax, 13
                                                                                        jne   .Lx117_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx117_47
                                                                                        jmp   .Lx117_48
.Lx117_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx117_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx117_53
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
                                                                                        jmp   .Lx117_51
.Lx117_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx117_49
                        cmp              edx, 14
                                                                                        je    .Lx117_53
                                                                                        jmp   .Lx117_52
.Lx117_49:
                        cmp              edx, 14
                                                                                        je    .Lx117_52
                        cmp              ecx, 7
                                                                                        je    .Lx117_53
                        cmp              edx, 7
                                                                                        je    .Lx117_53
                        cmp              ecx, 6
                                                                                        jne   .Lx117_50
                        cmp              edx, 6
                                                                                        jne   .Lx117_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx117_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx117_51
                                                                                        jmp   .Lx117_52
.Lx117_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx117_53
.Lx117_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx117_54
.Lx117_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx117_54
.Lx117_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx117_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n66_var_ref_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n69_var_ref_α
n68_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n70_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx129_21
.Lx129_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx129_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx129_23
.Lx129_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx129_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx129_25
.Lx129_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx129_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx129_1
                        lea              rcx, [rip + .Lx129_3]
                        lea              rdx, [rip + .Lx129_4]
                                                                                        jmp   rax
.Lx129_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx129_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx129_2
.Lx129_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx129_2
.Lx129_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx129_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx129_2
.Lx129_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx129_2
.Lx129_1:
                        call             rt_faildescr@PLT
.Lx129_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n71_suspend_α
n70_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:
                        lea              rax, [rip + n71_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$reverse_$2F3_γ
n71_suspend_β:
                                                                                        jmp   n70_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
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
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   proc_$reverse_$2F3_ω
n72_call_builtin_prolog_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1168]
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$reverse_$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1272]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_append$2F3_α
proc_append$2F3_α:
                        .global          proc_append$2F3_α
                        .global          proc_append$2F3_β
                        .global          proc_append$2F3_γ
                        .global          proc_append$2F3_ω
                        sub              rsp, 1216
                        mov              [rsp + 1192], rcx
                        mov              [rsp + 1200], rdx
                        mov              [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
proc_append$2F3_α_body:
                        lea              rax, [rip + n147_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx170_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx170_101
.Lx170_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx170_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        add              rsp, 16
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n136_lit_string_α
.Lx173_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n137_call_builtin_prolog_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx175_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx175_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx175_111
                        cmp              esi, 1
                                                                                        jne   .Lx175_112
                        mov              r8, rax
                                                                                        jmp   .Lx175_110
.Lx175_112:
                        cmp              esi, 2
                                                                                        jne   .Lx175_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx175_111
                        mov              r8, rax
                                                                                        jmp   .Lx175_110
.Lx175_113:
                        cmp              eax, 13
                                                                                        jne   .Lx175_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx175_111
                        cmp              rax, r8
                                                                                        je    .Lx175_111
                        mov              r8, rax
                                                                                        jmp   .Lx175_110
.Lx175_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx175_114
                        cmp              eax, 99
                                                                                        je    .Lx175_114
                        cmp              eax, 13
                                                                                        jne   .Lx175_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx175_114
                                                                                        jmp   .Lx175_118
.Lx175_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx175_115
                        cmp              eax, 6
                                                                                        je    .Lx175_114
                        cmp              eax, 1
                                                                                        jne   .Lx175_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx175_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx175_114
                                                                                        jmp   .Lx175_116
.Lx175_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx175_117
.Lx175_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx175_117
.Lx175_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx175_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n149_var_ref_α
                                                                                        jmp   n138_var_ref_α
n137_call_builtin_prolog_β:
                                                                                        jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 2
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n140_call_builtin_prolog_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx179_2]
                                                                                        jmp   .Lx179_3
.Lx179_2:
                        .quad            .Lx179_2_s
.Lx179_2_s:
                        .string          "[]"
.Lx179_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n148_call_builtin_prolog_α
                                                                                        jmp   n141_var_ref_α
n140_call_builtin_prolog_β:
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx184_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx184_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx184_41
                        cmp              esi, 1
                                                                                        jne   .Lx184_55
                        mov              r8, rax
                                                                                        jmp   .Lx184_40
.Lx184_55:
                        cmp              esi, 2
                                                                                        jne   .Lx184_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx184_41
                        mov              r8, rax
                                                                                        jmp   .Lx184_40
.Lx184_56:
                        cmp              eax, 13
                                                                                        jne   .Lx184_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx184_41
                        cmp              rax, r8
                                                                                        je    .Lx184_41
                        mov              r8, rax
                                                                                        jmp   .Lx184_40
.Lx184_41:
                        lea              r9, [rbp + 848]
.Lx184_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx184_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx184_43
                        cmp              esi, 1
                                                                                        jne   .Lx184_57
                        mov              r9, rax
                                                                                        jmp   .Lx184_42
.Lx184_57:
                        cmp              esi, 2
                                                                                        jne   .Lx184_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx184_43
                        mov              r9, rax
                                                                                        jmp   .Lx184_42
.Lx184_58:
                        cmp              eax, 13
                                                                                        jne   .Lx184_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx184_43
                        cmp              rax, r9
                                                                                        je    .Lx184_43
                        mov              r9, rax
                                                                                        jmp   .Lx184_42
.Lx184_43:
                        cmp              r8, r9
                                                                                        je    .Lx184_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx184_44
                        cmp              eax, 99
                                                                                        je    .Lx184_44
                        cmp              eax, 13
                                                                                        jne   .Lx184_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx184_44
                                                                                        jmp   .Lx184_45
.Lx184_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx184_53
                        cmp              eax, 99
                                                                                        je    .Lx184_53
                        cmp              eax, 13
                                                                                        jne   .Lx184_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx184_53
                                                                                        jmp   .Lx184_46
.Lx184_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx184_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx184_53
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
                                                                                        jmp   .Lx184_51
.Lx184_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx184_47
                        cmp              eax, 99
                                                                                        je    .Lx184_47
                        cmp              eax, 13
                                                                                        jne   .Lx184_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx184_47
                                                                                        jmp   .Lx184_48
.Lx184_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx184_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx184_53
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
                                                                                        jmp   .Lx184_51
.Lx184_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx184_49
                        cmp              edx, 14
                                                                                        je    .Lx184_53
                                                                                        jmp   .Lx184_52
.Lx184_49:
                        cmp              edx, 14
                                                                                        je    .Lx184_52
                        cmp              ecx, 7
                                                                                        je    .Lx184_53
                        cmp              edx, 7
                                                                                        je    .Lx184_53
                        cmp              ecx, 6
                                                                                        jne   .Lx184_50
                        cmp              edx, 6
                                                                                        jne   .Lx184_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx184_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx184_51
                                                                                        jmp   .Lx184_52
.Lx184_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx184_53
.Lx184_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx184_54
.Lx184_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx184_54
.Lx184_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx184_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n148_call_builtin_prolog_α
                                                                                        jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n146_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx189_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx189_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx189_41
                        cmp              esi, 1
                                                                                        jne   .Lx189_55
                        mov              r8, rax
                                                                                        jmp   .Lx189_40
.Lx189_55:
                        cmp              esi, 2
                                                                                        jne   .Lx189_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx189_41
                        mov              r8, rax
                                                                                        jmp   .Lx189_40
.Lx189_56:
                        cmp              eax, 13
                                                                                        jne   .Lx189_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx189_41
                        cmp              rax, r8
                                                                                        je    .Lx189_41
                        mov              r8, rax
                                                                                        jmp   .Lx189_40
.Lx189_41:
                        lea              r9, [rbp + 768]
.Lx189_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx189_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx189_43
                        cmp              esi, 1
                                                                                        jne   .Lx189_57
                        mov              r9, rax
                                                                                        jmp   .Lx189_42
.Lx189_57:
                        cmp              esi, 2
                                                                                        jne   .Lx189_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx189_43
                        mov              r9, rax
                                                                                        jmp   .Lx189_42
.Lx189_58:
                        cmp              eax, 13
                                                                                        jne   .Lx189_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx189_43
                        cmp              rax, r9
                                                                                        je    .Lx189_43
                        mov              r9, rax
                                                                                        jmp   .Lx189_42
.Lx189_43:
                        cmp              r8, r9
                                                                                        je    .Lx189_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx189_44
                        cmp              eax, 99
                                                                                        je    .Lx189_44
                        cmp              eax, 13
                                                                                        jne   .Lx189_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx189_44
                                                                                        jmp   .Lx189_45
.Lx189_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx189_53
                        cmp              eax, 99
                                                                                        je    .Lx189_53
                        cmp              eax, 13
                                                                                        jne   .Lx189_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx189_53
                                                                                        jmp   .Lx189_46
.Lx189_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx189_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx189_53
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
                                                                                        jmp   .Lx189_51
.Lx189_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx189_47
                        cmp              eax, 99
                                                                                        je    .Lx189_47
                        cmp              eax, 13
                                                                                        jne   .Lx189_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx189_47
                                                                                        jmp   .Lx189_48
.Lx189_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx189_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx189_53
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
                                                                                        jmp   .Lx189_51
.Lx189_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx189_49
                        cmp              edx, 14
                                                                                        je    .Lx189_53
                                                                                        jmp   .Lx189_52
.Lx189_49:
                        cmp              edx, 14
                                                                                        je    .Lx189_52
                        cmp              ecx, 7
                                                                                        je    .Lx189_53
                        cmp              edx, 7
                                                                                        je    .Lx189_53
                        cmp              ecx, 6
                                                                                        jne   .Lx189_50
                        cmp              edx, 6
                                                                                        jne   .Lx189_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx189_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx189_51
                                                                                        jmp   .Lx189_52
.Lx189_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx189_53
.Lx189_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx189_54
.Lx189_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx189_54
.Lx189_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx189_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n148_call_builtin_prolog_α
                                                                                        jmp   n147_suspend_α
n146_call_builtin_prolog_β:
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_suspend_α:
                        lea              rax, [rip + n147_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n147_suspend_β:
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n149_var_ref_α
n148_call_builtin_prolog_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n151_lit_integer_α
.Lx195_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n152_call_builtin_prolog_α
.Lx196_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx197_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_111
                        cmp              esi, 1
                                                                                        jne   .Lx197_112
                        mov              r8, rax
                                                                                        jmp   .Lx197_110
.Lx197_112:
                        cmp              esi, 2
                                                                                        jne   .Lx197_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_111
                        mov              r8, rax
                                                                                        jmp   .Lx197_110
.Lx197_113:
                        cmp              eax, 13
                                                                                        jne   .Lx197_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_111
                        cmp              rax, r8
                                                                                        je    .Lx197_111
                        mov              r8, rax
                                                                                        jmp   .Lx197_110
.Lx197_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_114
                        cmp              eax, 99
                                                                                        je    .Lx197_114
                        cmp              eax, 13
                                                                                        jne   .Lx197_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx197_114
                                                                                        jmp   .Lx197_118
.Lx197_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx197_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx197_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx197_115
                                                                                        jmp   .Lx197_114
.Lx197_119:
                        cmp              eax, 6
                                                                                        jne   .Lx197_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx197_114
                                                                                        jmp   .Lx197_115
.Lx197_120:
                        cmp              eax, 1
                                                                                        jne   .Lx197_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx197_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx197_114
                                                                                        jmp   .Lx197_115
.Lx197_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx197_117
.Lx197_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx197_117
.Lx197_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx197_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n153_var_ref_α
n152_call_builtin_prolog_β:
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        add              rsp, 16
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n155_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n156_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_prolog_α:
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
.Lx204_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_61
                        cmp              esi, 1
                                                                                        jne   .Lx204_62
                        mov              r8, rax
                                                                                        jmp   .Lx204_60
.Lx204_62:
                        cmp              esi, 2
                                                                                        jne   .Lx204_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_61
                        mov              r8, rax
                                                                                        jmp   .Lx204_60
.Lx204_63:
                        cmp              eax, 13
                                                                                        jne   .Lx204_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_61
                        cmp              rax, r8
                                                                                        je    .Lx204_61
                        mov              r8, rax
                                                                                        jmp   .Lx204_60
.Lx204_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_80
                        cmp              eax, 99
                                                                                        je    .Lx204_80
                        cmp              eax, 13
                                                                                        jne   .Lx204_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx204_80
                                                                                        jmp   .Lx204_74
.Lx204_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx204_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx204_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx204_73
                        lea              r9, [rbp + 512]
.Lx204_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_65
                        cmp              esi, 1
                                                                                        jne   .Lx204_66
                        mov              r9, rax
                                                                                        jmp   .Lx204_64
.Lx204_66:
                        cmp              esi, 2
                                                                                        jne   .Lx204_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_65
                        mov              r9, rax
                                                                                        jmp   .Lx204_64
.Lx204_67:
                        cmp              eax, 13
                                                                                        jne   .Lx204_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_65
                        cmp              rax, r9
                                                                                        je    .Lx204_65
                        mov              r9, rax
                                                                                        jmp   .Lx204_64
.Lx204_65:
                        lea              rcx, [rbp + 528]
.Lx204_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx204_69
                        cmp              esi, 1
                                                                                        jne   .Lx204_70
                        mov              rcx, rax
                                                                                        jmp   .Lx204_68
.Lx204_70:
                        cmp              esi, 2
                                                                                        jne   .Lx204_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_69
                        mov              rcx, rax
                                                                                        jmp   .Lx204_68
.Lx204_71:
                        cmp              eax, 13
                                                                                        jne   .Lx204_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx204_69
                        cmp              rax, rcx
                                                                                        je    .Lx204_69
                        mov              rcx, rax
                                                                                        jmp   .Lx204_68
.Lx204_69:
                        cmp              r9, rcx
                                                                                        je    .Lx204_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_75
                        cmp              eax, 99
                                                                                        je    .Lx204_75
                        cmp              eax, 13
                                                                                        jne   .Lx204_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_75
                                                                                        jmp   .Lx204_72
.Lx204_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_76
                        cmp              eax, 99
                                                                                        je    .Lx204_76
                        cmp              eax, 13
                                                                                        jne   .Lx204_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx204_76
                                                                                        jmp   .Lx204_72
.Lx204_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx204_72
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
                                                                                        jmp   .Lx204_77
.Lx204_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx204_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx204_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx204_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx204_72
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
.Lx204_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_82
                        cmp              esi, 1
                                                                                        jne   .Lx204_83
                        mov              r9, rax
                                                                                        jmp   .Lx204_81
.Lx204_83:
                        cmp              esi, 2
                                                                                        jne   .Lx204_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_82
                        mov              r9, rax
                                                                                        jmp   .Lx204_81
.Lx204_84:
                        cmp              eax, 13
                                                                                        jne   .Lx204_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_82
                        cmp              rax, r9
                                                                                        je    .Lx204_82
                        mov              r9, rax
                                                                                        jmp   .Lx204_81
.Lx204_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_85
                        cmp              eax, 99
                                                                                        je    .Lx204_85
                        cmp              eax, 13
                                                                                        jne   .Lx204_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_85
                                                                                        jmp   .Lx204_86
.Lx204_85:
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
                                                                                        jmp   .Lx204_87
.Lx204_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx204_87:
                        lea              rcx, [rbp + 528]
.Lx204_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx204_89
                        cmp              esi, 1
                                                                                        jne   .Lx204_90
                        mov              rcx, rax
                                                                                        jmp   .Lx204_88
.Lx204_90:
                        cmp              esi, 2
                                                                                        jne   .Lx204_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_89
                        mov              rcx, rax
                                                                                        jmp   .Lx204_88
.Lx204_91:
                        cmp              eax, 13
                                                                                        jne   .Lx204_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx204_89
                        cmp              rax, rcx
                                                                                        je    .Lx204_89
                        mov              rcx, rax
                                                                                        jmp   .Lx204_88
.Lx204_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_92
                        cmp              eax, 99
                                                                                        je    .Lx204_92
                        cmp              eax, 13
                                                                                        jne   .Lx204_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx204_92
                                                                                        jmp   .Lx204_93
.Lx204_92:
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
                                                                                        jmp   .Lx204_94
.Lx204_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx204_94:
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
                                                                                        jmp   .Lx204_77
.Lx204_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx204_77
.Lx204_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx204_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n157_var_ref_α
n156_call_builtin_prolog_β:
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        add              rsp, 16
                                                                                        jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx209_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx209_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        cmp              esi, 1
                                                                                        jne   .Lx209_55
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_55:
                        cmp              esi, 2
                                                                                        jne   .Lx209_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_56:
                        cmp              eax, 13
                                                                                        jne   .Lx209_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        cmp              rax, r8
                                                                                        je    .Lx209_41
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_41:
                        lea              r9, [rbp + 416]
.Lx209_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx209_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        cmp              esi, 1
                                                                                        jne   .Lx209_57
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_57:
                        cmp              esi, 2
                                                                                        jne   .Lx209_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_58:
                        cmp              eax, 13
                                                                                        jne   .Lx209_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        cmp              rax, r9
                                                                                        je    .Lx209_43
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_43:
                        cmp              r8, r9
                                                                                        je    .Lx209_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_44
                        cmp              eax, 99
                                                                                        je    .Lx209_44
                        cmp              eax, 13
                                                                                        jne   .Lx209_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx209_44
                                                                                        jmp   .Lx209_45
.Lx209_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_53
                        cmp              eax, 99
                                                                                        je    .Lx209_53
                        cmp              eax, 13
                                                                                        jne   .Lx209_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx209_53
                                                                                        jmp   .Lx209_46
.Lx209_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx209_53
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
                                                                                        jmp   .Lx209_51
.Lx209_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_47
                        cmp              eax, 99
                                                                                        je    .Lx209_47
                        cmp              eax, 13
                                                                                        jne   .Lx209_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx209_47
                                                                                        jmp   .Lx209_48
.Lx209_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx209_53
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
                                                                                        jmp   .Lx209_51
.Lx209_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx209_49
                        cmp              edx, 14
                                                                                        je    .Lx209_53
                                                                                        jmp   .Lx209_52
.Lx209_49:
                        cmp              edx, 14
                                                                                        je    .Lx209_52
                        cmp              ecx, 7
                                                                                        je    .Lx209_53
                        cmp              edx, 7
                                                                                        je    .Lx209_53
                        cmp              ecx, 6
                                                                                        jne   .Lx209_50
                        cmp              edx, 6
                                                                                        jne   .Lx209_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx209_51
                                                                                        jmp   .Lx209_52
.Lx209_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx209_53
.Lx209_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx209_54
.Lx209_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx209_54
.Lx209_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx209_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n160_var_ref_α
n159_call_builtin_prolog_β:
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n163_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx216_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_61
                        cmp              esi, 1
                                                                                        jne   .Lx216_62
                        mov              r8, rax
                                                                                        jmp   .Lx216_60
.Lx216_62:
                        cmp              esi, 2
                                                                                        jne   .Lx216_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_61
                        mov              r8, rax
                                                                                        jmp   .Lx216_60
.Lx216_63:
                        cmp              eax, 13
                                                                                        jne   .Lx216_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_61
                        cmp              rax, r8
                                                                                        je    .Lx216_61
                        mov              r8, rax
                                                                                        jmp   .Lx216_60
.Lx216_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_80
                        cmp              eax, 99
                                                                                        je    .Lx216_80
                        cmp              eax, 13
                                                                                        jne   .Lx216_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx216_80
                                                                                        jmp   .Lx216_74
.Lx216_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx216_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx216_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx216_73
                        lea              r9, [rbp + 320]
.Lx216_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_65
                        cmp              esi, 1
                                                                                        jne   .Lx216_66
                        mov              r9, rax
                                                                                        jmp   .Lx216_64
.Lx216_66:
                        cmp              esi, 2
                                                                                        jne   .Lx216_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_65
                        mov              r9, rax
                                                                                        jmp   .Lx216_64
.Lx216_67:
                        cmp              eax, 13
                                                                                        jne   .Lx216_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_65
                        cmp              rax, r9
                                                                                        je    .Lx216_65
                        mov              r9, rax
                                                                                        jmp   .Lx216_64
.Lx216_65:
                        lea              rcx, [rbp + 336]
.Lx216_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx216_69
                        cmp              esi, 1
                                                                                        jne   .Lx216_70
                        mov              rcx, rax
                                                                                        jmp   .Lx216_68
.Lx216_70:
                        cmp              esi, 2
                                                                                        jne   .Lx216_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_69
                        mov              rcx, rax
                                                                                        jmp   .Lx216_68
.Lx216_71:
                        cmp              eax, 13
                                                                                        jne   .Lx216_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx216_69
                        cmp              rax, rcx
                                                                                        je    .Lx216_69
                        mov              rcx, rax
                                                                                        jmp   .Lx216_68
.Lx216_69:
                        cmp              r9, rcx
                                                                                        je    .Lx216_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_75
                        cmp              eax, 99
                                                                                        je    .Lx216_75
                        cmp              eax, 13
                                                                                        jne   .Lx216_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_75
                                                                                        jmp   .Lx216_72
.Lx216_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_76
                        cmp              eax, 99
                                                                                        je    .Lx216_76
                        cmp              eax, 13
                                                                                        jne   .Lx216_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx216_76
                                                                                        jmp   .Lx216_72
.Lx216_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx216_72
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
                                                                                        jmp   .Lx216_77
.Lx216_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx216_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx216_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx216_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx216_72
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
                        lea              r9, [rbp + 320]
.Lx216_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_82
                        cmp              esi, 1
                                                                                        jne   .Lx216_83
                        mov              r9, rax
                                                                                        jmp   .Lx216_81
.Lx216_83:
                        cmp              esi, 2
                                                                                        jne   .Lx216_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_82
                        mov              r9, rax
                                                                                        jmp   .Lx216_81
.Lx216_84:
                        cmp              eax, 13
                                                                                        jne   .Lx216_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_82
                        cmp              rax, r9
                                                                                        je    .Lx216_82
                        mov              r9, rax
                                                                                        jmp   .Lx216_81
.Lx216_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_85
                        cmp              eax, 99
                                                                                        je    .Lx216_85
                        cmp              eax, 13
                                                                                        jne   .Lx216_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_85
                                                                                        jmp   .Lx216_86
.Lx216_85:
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
                                                                                        jmp   .Lx216_87
.Lx216_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx216_87:
                        lea              rcx, [rbp + 336]
.Lx216_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx216_89
                        cmp              esi, 1
                                                                                        jne   .Lx216_90
                        mov              rcx, rax
                                                                                        jmp   .Lx216_88
.Lx216_90:
                        cmp              esi, 2
                                                                                        jne   .Lx216_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_89
                        mov              rcx, rax
                                                                                        jmp   .Lx216_88
.Lx216_91:
                        cmp              eax, 13
                                                                                        jne   .Lx216_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx216_89
                        cmp              rax, rcx
                                                                                        je    .Lx216_89
                        mov              rcx, rax
                                                                                        jmp   .Lx216_88
.Lx216_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_92
                        cmp              eax, 99
                                                                                        je    .Lx216_92
                        cmp              eax, 13
                                                                                        jne   .Lx216_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx216_92
                                                                                        jmp   .Lx216_93
.Lx216_92:
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
                                                                                        jmp   .Lx216_94
.Lx216_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx216_94:
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
                                                                                        jmp   .Lx216_77
.Lx216_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx216_77
.Lx216_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx216_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n164_var_ref_α
n163_call_builtin_prolog_β:
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n167_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx224_21
.Lx224_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx224_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx224_23
.Lx224_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx224_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx224_25
.Lx224_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx224_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx224_1
                        lea              rcx, [rip + .Lx224_3]
                        lea              rdx, [rip + .Lx224_4]
                                                                                        jmp   rax
.Lx224_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx224_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx224_2
.Lx224_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx224_2
.Lx224_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx224_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx224_2
.Lx224_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx224_2
.Lx224_1:
                        call             rt_faildescr@PLT
.Lx224_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n168_suspend_α
n167_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n168_suspend_α:
                        lea              rax, [rip + n168_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n168_suspend_β:
                                                                                        jmp   n167_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
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
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   proc_append$2F3_ω
n169_call_builtin_prolog_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_append$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1192]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_ω:
                        mov              rax, [rbp + 1200]
                        lea              rsp, [rbp + 1216]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_nrev$2F2_α
proc_nrev$2F2_α:
                        .global          proc_nrev$2F2_α
                        .global          proc_nrev$2F2_β
                        .global          proc_nrev$2F2_γ
                        .global          proc_nrev$2F2_ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_nrev$2F2_α_body:
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_prolog_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx264_101
.Lx264_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx264_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_nrev$2F2_ω
                                                                                        jmp   n229_var_ref_α
n228_call_builtin_prolog_β:
                                                                                        jmp   proc_nrev$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        add              rsp, 16
                                                                                        jmp   n230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n231_lit_string_α
.Lx267_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              dword ptr [rbp + 1092], 2
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n232_call_builtin_prolog_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lx269_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx269_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx269_111
                        cmp              esi, 1
                                                                                        jne   .Lx269_112
                        mov              r8, rax
                                                                                        jmp   .Lx269_110
.Lx269_112:
                        cmp              esi, 2
                                                                                        jne   .Lx269_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx269_111
                        mov              r8, rax
                                                                                        jmp   .Lx269_110
.Lx269_113:
                        cmp              eax, 13
                                                                                        jne   .Lx269_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx269_111
                        cmp              rax, r8
                                                                                        je    .Lx269_111
                        mov              r8, rax
                                                                                        jmp   .Lx269_110
.Lx269_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx269_114
                        cmp              eax, 99
                                                                                        je    .Lx269_114
                        cmp              eax, 13
                                                                                        jne   .Lx269_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx269_114
                                                                                        jmp   .Lx269_118
.Lx269_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx269_115
                        cmp              eax, 6
                                                                                        je    .Lx269_114
                        cmp              eax, 1
                                                                                        jne   .Lx269_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx269_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx269_114
                                                                                        jmp   .Lx269_116
.Lx269_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx269_117
.Lx269_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx269_117
.Lx269_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx269_117:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n241_var_ref_α
                                                                                        jmp   n233_var_ref_α
n232_call_builtin_prolog_β:
                                                                                        jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              dword ptr [rbp + 980], 2
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n235_call_builtin_prolog_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lx273_2]
                                                                                        jmp   .Lx273_3
.Lx273_2:
                        .quad            .Lx273_2_s
.Lx273_2_s:
                        .string          "[]"
.Lx273_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n240_call_builtin_prolog_α
                                                                                        jmp   n236_var_ref_α
n235_call_builtin_prolog_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n237_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              dword ptr [rbp + 900], 2
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n238_call_builtin_prolog_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx277_2]
                                                                                        jmp   .Lx277_3
.Lx277_2:
                        .quad            .Lx277_2_s
.Lx277_2_s:
                        .string          "[]"
.Lx277_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n240_call_builtin_prolog_α
                                                                                        jmp   n239_suspend_α
n238_call_builtin_prolog_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_suspend_α:
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_nrev$2F2_γ
n239_suspend_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_nrev$2F2_ω
                                                                                        jmp   n241_var_ref_α
n240_call_builtin_prolog_β:
                                                                                        jmp   proc_nrev$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        add              rsp, 16
                                                                                        jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n243_lit_integer_α
.Lx283_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n244_call_builtin_prolog_α
.Lx284_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
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
.Lx285_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx285_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx285_111
                        cmp              esi, 1
                                                                                        jne   .Lx285_112
                        mov              r8, rax
                                                                                        jmp   .Lx285_110
.Lx285_112:
                        cmp              esi, 2
                                                                                        jne   .Lx285_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx285_111
                        mov              r8, rax
                                                                                        jmp   .Lx285_110
.Lx285_113:
                        cmp              eax, 13
                                                                                        jne   .Lx285_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx285_111
                        cmp              rax, r8
                                                                                        je    .Lx285_111
                        mov              r8, rax
                                                                                        jmp   .Lx285_110
.Lx285_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx285_114
                        cmp              eax, 99
                                                                                        je    .Lx285_114
                        cmp              eax, 13
                                                                                        jne   .Lx285_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx285_114
                                                                                        jmp   .Lx285_118
.Lx285_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx285_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx285_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx285_115
                                                                                        jmp   .Lx285_114
.Lx285_119:
                        cmp              eax, 6
                                                                                        jne   .Lx285_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx285_114
                                                                                        jmp   .Lx285_115
.Lx285_120:
                        cmp              eax, 1
                                                                                        jne   .Lx285_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx285_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx285_114
                                                                                        jmp   .Lx285_115
.Lx285_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx285_117
.Lx285_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx285_117
.Lx285_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx285_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n245_var_ref_α
n244_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n246_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n247_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        add              rsp, 16
                                                                                        jmp   n248_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx292_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx292_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_61
                        cmp              esi, 1
                                                                                        jne   .Lx292_62
                        mov              r8, rax
                                                                                        jmp   .Lx292_60
.Lx292_62:
                        cmp              esi, 2
                                                                                        jne   .Lx292_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_61
                        mov              r8, rax
                                                                                        jmp   .Lx292_60
.Lx292_63:
                        cmp              eax, 13
                                                                                        jne   .Lx292_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_61
                        cmp              rax, r8
                                                                                        je    .Lx292_61
                        mov              r8, rax
                                                                                        jmp   .Lx292_60
.Lx292_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_80
                        cmp              eax, 99
                                                                                        je    .Lx292_80
                        cmp              eax, 13
                                                                                        jne   .Lx292_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx292_80
                                                                                        jmp   .Lx292_74
.Lx292_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx292_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx292_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx292_73
                        lea              r9, [rbp + 608]
.Lx292_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx292_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_65
                        cmp              esi, 1
                                                                                        jne   .Lx292_66
                        mov              r9, rax
                                                                                        jmp   .Lx292_64
.Lx292_66:
                        cmp              esi, 2
                                                                                        jne   .Lx292_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_65
                        mov              r9, rax
                                                                                        jmp   .Lx292_64
.Lx292_67:
                        cmp              eax, 13
                                                                                        jne   .Lx292_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_65
                        cmp              rax, r9
                                                                                        je    .Lx292_65
                        mov              r9, rax
                                                                                        jmp   .Lx292_64
.Lx292_65:
                        lea              rcx, [rbp + 624]
.Lx292_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx292_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx292_69
                        cmp              esi, 1
                                                                                        jne   .Lx292_70
                        mov              rcx, rax
                                                                                        jmp   .Lx292_68
.Lx292_70:
                        cmp              esi, 2
                                                                                        jne   .Lx292_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_69
                        mov              rcx, rax
                                                                                        jmp   .Lx292_68
.Lx292_71:
                        cmp              eax, 13
                                                                                        jne   .Lx292_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx292_69
                        cmp              rax, rcx
                                                                                        je    .Lx292_69
                        mov              rcx, rax
                                                                                        jmp   .Lx292_68
.Lx292_69:
                        cmp              r9, rcx
                                                                                        je    .Lx292_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_75
                        cmp              eax, 99
                                                                                        je    .Lx292_75
                        cmp              eax, 13
                                                                                        jne   .Lx292_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_75
                                                                                        jmp   .Lx292_72
.Lx292_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_76
                        cmp              eax, 99
                                                                                        je    .Lx292_76
                        cmp              eax, 13
                                                                                        jne   .Lx292_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx292_76
                                                                                        jmp   .Lx292_72
.Lx292_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx292_72
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
                                                                                        jmp   .Lx292_77
.Lx292_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx292_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx292_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx292_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx292_72
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
                        lea              r9, [rbp + 608]
.Lx292_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx292_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_82
                        cmp              esi, 1
                                                                                        jne   .Lx292_83
                        mov              r9, rax
                                                                                        jmp   .Lx292_81
.Lx292_83:
                        cmp              esi, 2
                                                                                        jne   .Lx292_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_82
                        mov              r9, rax
                                                                                        jmp   .Lx292_81
.Lx292_84:
                        cmp              eax, 13
                                                                                        jne   .Lx292_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_82
                        cmp              rax, r9
                                                                                        je    .Lx292_82
                        mov              r9, rax
                                                                                        jmp   .Lx292_81
.Lx292_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_85
                        cmp              eax, 99
                                                                                        je    .Lx292_85
                        cmp              eax, 13
                                                                                        jne   .Lx292_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_85
                                                                                        jmp   .Lx292_86
.Lx292_85:
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
                                                                                        jmp   .Lx292_87
.Lx292_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx292_87:
                        lea              rcx, [rbp + 624]
.Lx292_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx292_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx292_89
                        cmp              esi, 1
                                                                                        jne   .Lx292_90
                        mov              rcx, rax
                                                                                        jmp   .Lx292_88
.Lx292_90:
                        cmp              esi, 2
                                                                                        jne   .Lx292_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_89
                        mov              rcx, rax
                                                                                        jmp   .Lx292_88
.Lx292_91:
                        cmp              eax, 13
                                                                                        jne   .Lx292_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx292_89
                        cmp              rax, rcx
                                                                                        je    .Lx292_89
                        mov              rcx, rax
                                                                                        jmp   .Lx292_88
.Lx292_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_92
                        cmp              eax, 99
                                                                                        je    .Lx292_92
                        cmp              eax, 13
                                                                                        jne   .Lx292_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx292_92
                                                                                        jmp   .Lx292_93
.Lx292_92:
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
                                                                                        jmp   .Lx292_94
.Lx292_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx292_94:
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
                                                                                        jmp   .Lx292_77
.Lx292_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx292_77
.Lx292_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx292_77:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n249_var_ref_α
n248_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        add              rsp, 16
                                                                                        jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n251_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_prolog_α:
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
.Lx297_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx297_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx297_41
                        cmp              esi, 1
                                                                                        jne   .Lx297_55
                        mov              r8, rax
                                                                                        jmp   .Lx297_40
.Lx297_55:
                        cmp              esi, 2
                                                                                        jne   .Lx297_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx297_41
                        mov              r8, rax
                                                                                        jmp   .Lx297_40
.Lx297_56:
                        cmp              eax, 13
                                                                                        jne   .Lx297_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx297_41
                        cmp              rax, r8
                                                                                        je    .Lx297_41
                        mov              r8, rax
                                                                                        jmp   .Lx297_40
.Lx297_41:
                        lea              r9, [rbp + 512]
.Lx297_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx297_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx297_43
                        cmp              esi, 1
                                                                                        jne   .Lx297_57
                        mov              r9, rax
                                                                                        jmp   .Lx297_42
.Lx297_57:
                        cmp              esi, 2
                                                                                        jne   .Lx297_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx297_43
                        mov              r9, rax
                                                                                        jmp   .Lx297_42
.Lx297_58:
                        cmp              eax, 13
                                                                                        jne   .Lx297_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx297_43
                        cmp              rax, r9
                                                                                        je    .Lx297_43
                        mov              r9, rax
                                                                                        jmp   .Lx297_42
.Lx297_43:
                        cmp              r8, r9
                                                                                        je    .Lx297_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx297_44
                        cmp              eax, 99
                                                                                        je    .Lx297_44
                        cmp              eax, 13
                                                                                        jne   .Lx297_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx297_44
                                                                                        jmp   .Lx297_45
.Lx297_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx297_53
                        cmp              eax, 99
                                                                                        je    .Lx297_53
                        cmp              eax, 13
                                                                                        jne   .Lx297_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx297_53
                                                                                        jmp   .Lx297_46
.Lx297_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx297_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx297_53
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
                                                                                        jmp   .Lx297_51
.Lx297_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx297_47
                        cmp              eax, 99
                                                                                        je    .Lx297_47
                        cmp              eax, 13
                                                                                        jne   .Lx297_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx297_47
                                                                                        jmp   .Lx297_48
.Lx297_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx297_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx297_53
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
                                                                                        jmp   .Lx297_51
.Lx297_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx297_49
                        cmp              edx, 14
                                                                                        je    .Lx297_53
                                                                                        jmp   .Lx297_52
.Lx297_49:
                        cmp              edx, 14
                                                                                        je    .Lx297_52
                        cmp              ecx, 7
                                                                                        je    .Lx297_53
                        cmp              edx, 7
                                                                                        je    .Lx297_53
                        cmp              ecx, 6
                                                                                        jne   .Lx297_50
                        cmp              edx, 6
                                                                                        jne   .Lx297_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx297_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx297_51
                                                                                        jmp   .Lx297_52
.Lx297_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx297_53
.Lx297_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx297_54
.Lx297_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx297_54
.Lx297_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx297_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n252_var_ref_α
n251_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        add              rsp, 16
                                                                                        jmp   n254_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx303_21
.Lx303_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx303_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx303_22
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx303_23
.Lx303_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx303_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx303_1
                        lea              rcx, [rip + .Lx303_3]
                        lea              rdx, [rip + .Lx303_4]
                                                                                        jmp   rax
.Lx303_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx303_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx303_2
.Lx303_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx303_2
.Lx303_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx303_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx303_2
.Lx303_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx303_2
.Lx303_1:
                        call             rt_faildescr@PLT
.Lx303_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n255_var_ref_α
n254_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "nrev/2"
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n257_var_ref_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n259_call_builtin_prolog_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n260_var_ref_α
n259_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n261_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx314_21
.Lx314_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx314_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx314_23
.Lx314_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx314_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_24
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx314_25
.Lx314_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx314_25:
                        mov              edi, 6
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx314_1
                        lea              rcx, [rip + .Lx314_3]
                        lea              rdx, [rip + .Lx314_4]
                                                                                        jmp   rax
.Lx314_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx314_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx314_2
.Lx314_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx314_2
.Lx314_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx314_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx314_2
.Lx314_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx314_2
.Lx314_1:
                        call             rt_faildescr@PLT
.Lx314_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n254_call_proc_staged_β
                                                                                        jmp   n262_suspend_α
n261_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "app/3"
#-----------------------------------------------------------------------------------------------------------------------
n262_suspend_α:
                        lea              rax, [rip + n262_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_nrev$2F2_γ
n262_suspend_β:
                                                                                        jmp   n261_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
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
                                                                                        je    proc_nrev$2F2_ω
                                                                                        jmp   proc_nrev$2F2_ω
n263_call_builtin_prolog_β:
                                                                                        jmp   proc_nrev$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_nrev$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_nrev$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1104]
#-----------------------------------------------------------------------------------------------------------------------
proc_nrev$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_nrev$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1208]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_nrev$2F2_ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_data$2F2_α
proc_data$2F2_α:
                        .global          proc_data$2F2_α
                        .global          proc_data$2F2_β
                        .global          proc_data$2F2_γ
                        .global          proc_data$2F2_ω
                        sub              rsp, 1200
                        mov              [rsp + 1176], rcx
                        mov              [rsp + 1184], rdx
                        mov              [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
proc_data$2F2_α_body:
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx355_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx355_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx355_101
.Lx355_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx355_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_data$2F2_ω
                                                                                        jmp   n319_var_ref_α
n318_call_builtin_prolog_β:
                                                                                        jmp   proc_data$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        add              rsp, 16
                                                                                        jmp   n320_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n321_lit_string_α
.Lx358_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n322_call_builtin_prolog_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx360_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx360_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx360_111
                        cmp              esi, 1
                                                                                        jne   .Lx360_112
                        mov              r8, rax
                                                                                        jmp   .Lx360_110
.Lx360_112:
                        cmp              esi, 2
                                                                                        jne   .Lx360_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx360_111
                        mov              r8, rax
                                                                                        jmp   .Lx360_110
.Lx360_113:
                        cmp              eax, 13
                                                                                        jne   .Lx360_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx360_111
                        cmp              rax, r8
                                                                                        je    .Lx360_111
                        mov              r8, rax
                                                                                        jmp   .Lx360_110
.Lx360_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx360_114
                        cmp              eax, 99
                                                                                        je    .Lx360_114
                        cmp              eax, 13
                                                                                        jne   .Lx360_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx360_114
                                                                                        jmp   .Lx360_118
.Lx360_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx360_115
                        cmp              eax, 6
                                                                                        je    .Lx360_114
                        cmp              eax, 1
                                                                                        jne   .Lx360_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx360_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx360_114
                                                                                        jmp   .Lx360_116
.Lx360_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx360_117
.Lx360_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx360_117
.Lx360_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx360_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n331_var_ref_α
                                                                                        jmp   n323_var_ref_α
n322_call_builtin_prolog_β:
                                                                                        jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 2
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n325_call_builtin_prolog_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx364_2]
                                                                                        jmp   .Lx364_3
.Lx364_2:
                        .quad            .Lx364_2_s
.Lx364_2_s:
                        .string          "[]"
.Lx364_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n330_call_builtin_prolog_α
                                                                                        jmp   n326_var_ref_α
n325_call_builtin_prolog_β:
                                                                                        jmp   n330_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n327_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n328_call_builtin_prolog_α
.Lx367_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n330_call_builtin_prolog_α
                                                                                        jmp   n329_suspend_α
n328_call_builtin_prolog_β:
                                                                                        jmp   n330_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n329_suspend_α:
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_data$2F2_γ
n329_suspend_β:
                                                                                        jmp   n330_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_data$2F2_ω
                                                                                        jmp   n331_var_ref_α
n330_call_builtin_prolog_β:
                                                                                        jmp   proc_data$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        add              rsp, 16
                                                                                        jmp   n332_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n333_lit_integer_α
.Lx374_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n334_call_builtin_prolog_α
.Lx375_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx376_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx376_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_111
                        cmp              esi, 1
                                                                                        jne   .Lx376_112
                        mov              r8, rax
                                                                                        jmp   .Lx376_110
.Lx376_112:
                        cmp              esi, 2
                                                                                        jne   .Lx376_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_111
                        mov              r8, rax
                                                                                        jmp   .Lx376_110
.Lx376_113:
                        cmp              eax, 13
                                                                                        jne   .Lx376_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_111
                        cmp              rax, r8
                                                                                        je    .Lx376_111
                        mov              r8, rax
                                                                                        jmp   .Lx376_110
.Lx376_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_114
                        cmp              eax, 99
                                                                                        je    .Lx376_114
                        cmp              eax, 13
                                                                                        jne   .Lx376_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx376_114
                                                                                        jmp   .Lx376_118
.Lx376_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx376_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx376_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx376_115
                                                                                        jmp   .Lx376_114
.Lx376_119:
                        cmp              eax, 6
                                                                                        jne   .Lx376_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx376_114
                                                                                        jmp   .Lx376_115
.Lx376_120:
                        cmp              eax, 1
                                                                                        jne   .Lx376_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx376_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx376_114
                                                                                        jmp   .Lx376_115
.Lx376_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx376_117
.Lx376_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx376_117
.Lx376_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx376_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n354_call_builtin_prolog_α
                                                                                        jmp   n335_var_ref_α
n334_call_builtin_prolog_β:
                                                                                        jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n337_var_ref_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx382_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_61
                        cmp              esi, 1
                                                                                        jne   .Lx382_62
                        mov              r8, rax
                                                                                        jmp   .Lx382_60
.Lx382_62:
                        cmp              esi, 2
                                                                                        jne   .Lx382_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_61
                        mov              r8, rax
                                                                                        jmp   .Lx382_60
.Lx382_63:
                        cmp              eax, 13
                                                                                        jne   .Lx382_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_61
                        cmp              rax, r8
                                                                                        je    .Lx382_61
                        mov              r8, rax
                                                                                        jmp   .Lx382_60
.Lx382_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_80
                        cmp              eax, 99
                                                                                        je    .Lx382_80
                        cmp              eax, 13
                                                                                        jne   .Lx382_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx382_80
                                                                                        jmp   .Lx382_74
.Lx382_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx382_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx382_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx382_73
                        lea              r9, [rbp + 592]
.Lx382_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_65
                        cmp              esi, 1
                                                                                        jne   .Lx382_66
                        mov              r9, rax
                                                                                        jmp   .Lx382_64
.Lx382_66:
                        cmp              esi, 2
                                                                                        jne   .Lx382_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_65
                        mov              r9, rax
                                                                                        jmp   .Lx382_64
.Lx382_67:
                        cmp              eax, 13
                                                                                        jne   .Lx382_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_65
                        cmp              rax, r9
                                                                                        je    .Lx382_65
                        mov              r9, rax
                                                                                        jmp   .Lx382_64
.Lx382_65:
                        lea              rcx, [rbp + 608]
.Lx382_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx382_69
                        cmp              esi, 1
                                                                                        jne   .Lx382_70
                        mov              rcx, rax
                                                                                        jmp   .Lx382_68
.Lx382_70:
                        cmp              esi, 2
                                                                                        jne   .Lx382_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_69
                        mov              rcx, rax
                                                                                        jmp   .Lx382_68
.Lx382_71:
                        cmp              eax, 13
                                                                                        jne   .Lx382_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx382_69
                        cmp              rax, rcx
                                                                                        je    .Lx382_69
                        mov              rcx, rax
                                                                                        jmp   .Lx382_68
.Lx382_69:
                        cmp              r9, rcx
                                                                                        je    .Lx382_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_75
                        cmp              eax, 99
                                                                                        je    .Lx382_75
                        cmp              eax, 13
                                                                                        jne   .Lx382_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_75
                                                                                        jmp   .Lx382_72
.Lx382_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_76
                        cmp              eax, 99
                                                                                        je    .Lx382_76
                        cmp              eax, 13
                                                                                        jne   .Lx382_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx382_76
                                                                                        jmp   .Lx382_72
.Lx382_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx382_72
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
                                                                                        jmp   .Lx382_77
.Lx382_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx382_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx382_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx382_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx382_72
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
                        lea              r9, [rbp + 592]
.Lx382_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_82
                        cmp              esi, 1
                                                                                        jne   .Lx382_83
                        mov              r9, rax
                                                                                        jmp   .Lx382_81
.Lx382_83:
                        cmp              esi, 2
                                                                                        jne   .Lx382_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_82
                        mov              r9, rax
                                                                                        jmp   .Lx382_81
.Lx382_84:
                        cmp              eax, 13
                                                                                        jne   .Lx382_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_82
                        cmp              rax, r9
                                                                                        je    .Lx382_82
                        mov              r9, rax
                                                                                        jmp   .Lx382_81
.Lx382_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_85
                        cmp              eax, 99
                                                                                        je    .Lx382_85
                        cmp              eax, 13
                                                                                        jne   .Lx382_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_85
                                                                                        jmp   .Lx382_86
.Lx382_85:
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
                                                                                        jmp   .Lx382_87
.Lx382_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx382_87:
                        lea              rcx, [rbp + 608]
.Lx382_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx382_89
                        cmp              esi, 1
                                                                                        jne   .Lx382_90
                        mov              rcx, rax
                                                                                        jmp   .Lx382_88
.Lx382_90:
                        cmp              esi, 2
                                                                                        jne   .Lx382_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_89
                        mov              rcx, rax
                                                                                        jmp   .Lx382_88
.Lx382_91:
                        cmp              eax, 13
                                                                                        jne   .Lx382_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx382_89
                        cmp              rax, rcx
                                                                                        je    .Lx382_89
                        mov              rcx, rax
                                                                                        jmp   .Lx382_88
.Lx382_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_92
                        cmp              eax, 99
                                                                                        je    .Lx382_92
                        cmp              eax, 13
                                                                                        jne   .Lx382_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx382_92
                                                                                        jmp   .Lx382_93
.Lx382_92:
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
                                                                                        jmp   .Lx382_94
.Lx382_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx382_94:
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
                                                                                        jmp   .Lx382_77
.Lx382_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx382_77
.Lx382_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx382_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n354_call_builtin_prolog_α
                                                                                        jmp   n339_var_ref_α
n338_call_builtin_prolog_β:
                                                                                        jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        add              rsp, 16
                                                                                        jmp   n340_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        add              rsp, 16
                                                                                        jmp   n341_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx387_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx387_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        cmp              esi, 1
                                                                                        jne   .Lx387_55
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_55:
                        cmp              esi, 2
                                                                                        jne   .Lx387_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_56:
                        cmp              eax, 13
                                                                                        jne   .Lx387_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        cmp              rax, r8
                                                                                        je    .Lx387_41
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_41:
                        lea              r9, [rbp + 496]
.Lx387_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx387_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        cmp              esi, 1
                                                                                        jne   .Lx387_57
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_57:
                        cmp              esi, 2
                                                                                        jne   .Lx387_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_58:
                        cmp              eax, 13
                                                                                        jne   .Lx387_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        cmp              rax, r9
                                                                                        je    .Lx387_43
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_43:
                        cmp              r8, r9
                                                                                        je    .Lx387_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_44
                        cmp              eax, 99
                                                                                        je    .Lx387_44
                        cmp              eax, 13
                                                                                        jne   .Lx387_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx387_44
                                                                                        jmp   .Lx387_45
.Lx387_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_53
                        cmp              eax, 99
                                                                                        je    .Lx387_53
                        cmp              eax, 13
                                                                                        jne   .Lx387_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx387_53
                                                                                        jmp   .Lx387_46
.Lx387_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx387_53
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
                                                                                        jmp   .Lx387_51
.Lx387_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_47
                        cmp              eax, 99
                                                                                        je    .Lx387_47
                        cmp              eax, 13
                                                                                        jne   .Lx387_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx387_47
                                                                                        jmp   .Lx387_48
.Lx387_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx387_53
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
                                                                                        jmp   .Lx387_51
.Lx387_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx387_49
                        cmp              edx, 14
                                                                                        je    .Lx387_53
                                                                                        jmp   .Lx387_52
.Lx387_49:
                        cmp              edx, 14
                                                                                        je    .Lx387_52
                        cmp              ecx, 7
                                                                                        je    .Lx387_53
                        cmp              edx, 7
                                                                                        je    .Lx387_53
                        cmp              ecx, 6
                                                                                        jne   .Lx387_50
                        cmp              edx, 6
                                                                                        jne   .Lx387_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx387_51
                                                                                        jmp   .Lx387_52
.Lx387_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx387_53
.Lx387_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx387_54
.Lx387_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx387_54
.Lx387_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx387_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n354_call_builtin_prolog_α
                                                                                        jmp   n342_var_α
n341_call_builtin_prolog_β:
                                                                                        jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n343_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n344_call_builtin_prolog_α
.Lx390_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n344_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n354_call_builtin_prolog_α
                                                                                        jmp   n345_var_ref_α
n344_call_builtin_prolog_β:
                                                                                        jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n347_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n348_call_builtin_prolog_α
.Lx396_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n348_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n354_call_builtin_prolog_α
                                                                                        jmp   n349_call_builtin_prolog_α
n348_call_builtin_prolog_β:
                                                                                        jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n354_call_builtin_prolog_α
                                                                                        jmp   n350_var_ref_α
n349_call_builtin_prolog_β:
                                                                                        jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        add              rsp, 16
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n352_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n352_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx404_21
.Lx404_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx404_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx404_23
.Lx404_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx404_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx404_1
                        lea              rcx, [rip + .Lx404_3]
                        lea              rdx, [rip + .Lx404_4]
                                                                                        jmp   rax
.Lx404_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx404_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx404_2
.Lx404_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx404_2
.Lx404_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx404_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx404_2
.Lx404_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx404_2
.Lx404_1:
                        call             rt_faildescr@PLT
.Lx404_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n354_call_builtin_prolog_α
                                                                                        jmp   n353_suspend_α
n352_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "data/2"
#-----------------------------------------------------------------------------------------------------------------------
n353_suspend_α:
                        lea              rax, [rip + n353_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_data$2F2_γ
n353_suspend_β:
                                                                                        jmp   n352_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
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
                                                                                        je    proc_data$2F2_ω
                                                                                        jmp   proc_data$2F2_ω
n354_call_builtin_prolog_β:
                                                                                        jmp   proc_data$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_data$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1176]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F2_ω:
                        mov              rax, [rbp + 1184]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_data$2F1_α
proc_data$2F1_α:
                        .global          proc_data$2F1_α
                        .global          proc_data$2F1_β
                        .global          proc_data$2F1_γ
                        .global          proc_data$2F1_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_data$2F1_α_body:
                        lea              rax, [rip + n415_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx417_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx417_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx417_101
.Lx417_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx417_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_data$2F1_ω
                                                                                        jmp   n409_var_ref_α
n408_call_builtin_prolog_β:
                                                                                        jmp   proc_data$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n410_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n411_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_builtin_prolog_α:
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
.Lx422_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx422_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_41
                        cmp              esi, 1
                                                                                        jne   .Lx422_55
                        mov              r8, rax
                                                                                        jmp   .Lx422_40
.Lx422_55:
                        cmp              esi, 2
                                                                                        jne   .Lx422_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx422_41
                        mov              r8, rax
                                                                                        jmp   .Lx422_40
.Lx422_56:
                        cmp              eax, 13
                                                                                        jne   .Lx422_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_41
                        cmp              rax, r8
                                                                                        je    .Lx422_41
                        mov              r8, rax
                                                                                        jmp   .Lx422_40
.Lx422_41:
                        lea              r9, [rbp + 240]
.Lx422_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx422_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_43
                        cmp              esi, 1
                                                                                        jne   .Lx422_57
                        mov              r9, rax
                                                                                        jmp   .Lx422_42
.Lx422_57:
                        cmp              esi, 2
                                                                                        jne   .Lx422_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx422_43
                        mov              r9, rax
                                                                                        jmp   .Lx422_42
.Lx422_58:
                        cmp              eax, 13
                                                                                        jne   .Lx422_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_43
                        cmp              rax, r9
                                                                                        je    .Lx422_43
                        mov              r9, rax
                                                                                        jmp   .Lx422_42
.Lx422_43:
                        cmp              r8, r9
                                                                                        je    .Lx422_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_44
                        cmp              eax, 99
                                                                                        je    .Lx422_44
                        cmp              eax, 13
                                                                                        jne   .Lx422_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx422_44
                                                                                        jmp   .Lx422_45
.Lx422_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_53
                        cmp              eax, 99
                                                                                        je    .Lx422_53
                        cmp              eax, 13
                                                                                        jne   .Lx422_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx422_53
                                                                                        jmp   .Lx422_46
.Lx422_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx422_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx422_53
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
                                                                                        jmp   .Lx422_51
.Lx422_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_47
                        cmp              eax, 99
                                                                                        je    .Lx422_47
                        cmp              eax, 13
                                                                                        jne   .Lx422_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx422_47
                                                                                        jmp   .Lx422_48
.Lx422_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx422_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx422_53
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
                                                                                        jmp   .Lx422_51
.Lx422_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx422_49
                        cmp              edx, 14
                                                                                        je    .Lx422_53
                                                                                        jmp   .Lx422_52
.Lx422_49:
                        cmp              edx, 14
                                                                                        je    .Lx422_52
                        cmp              ecx, 7
                                                                                        je    .Lx422_53
                        cmp              edx, 7
                                                                                        je    .Lx422_53
                        cmp              ecx, 6
                                                                                        jne   .Lx422_50
                        cmp              edx, 6
                                                                                        jne   .Lx422_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx422_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx422_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx422_51
                                                                                        jmp   .Lx422_52
.Lx422_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx422_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx422_53
.Lx422_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx422_54
.Lx422_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx422_54
.Lx422_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx422_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n416_call_builtin_prolog_α
                                                                                        jmp   n412_var_ref_α
n411_call_builtin_prolog_β:
                                                                                        jmp   n416_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        add              rsp, 16
                                                                                        jmp   n413_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n414_call_proc_staged_α
.Lx425_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n414_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx427_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx427_21
.Lx427_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx427_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx427_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx427_23
.Lx427_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx427_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx427_1
                        lea              rcx, [rip + .Lx427_3]
                        lea              rdx, [rip + .Lx427_4]
                                                                                        jmp   rax
.Lx427_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx427_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx427_2
.Lx427_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx427_2
.Lx427_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx427_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx427_2
.Lx427_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx427_2
.Lx427_1:
                        call             rt_faildescr@PLT
.Lx427_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n416_call_builtin_prolog_α
                                                                                        jmp   n415_suspend_α
n414_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "data/2"
#-----------------------------------------------------------------------------------------------------------------------
n415_suspend_α:
                        lea              rax, [rip + n415_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_data$2F1_γ
n415_suspend_β:
                                                                                        jmp   n414_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_prolog_α:
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
                                                                                        je    proc_data$2F1_ω
                                                                                        jmp   proc_data$2F1_ω
n416_call_builtin_prolog_β:
                                                                                        jmp   proc_data$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F1_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_data$2F1_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_data$2F1_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_app$2F3_α
proc_app$2F3_α:
                        .global          proc_app$2F3_α
                        .global          proc_app$2F3_β
                        .global          proc_app$2F3_γ
                        .global          proc_app$2F3_ω
                        sub              rsp, 1216
                        mov              [rsp + 1192], rcx
                        mov              [rsp + 1200], rdx
                        mov              [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
proc_app$2F3_α_body:
                        lea              rax, [rip + n445_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx468_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx468_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx468_101
.Lx468_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx468_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_app$2F3_ω
                                                                                        jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                                                                                        jmp   proc_app$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        add              rsp, 16
                                                                                        jmp   n433_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n434_lit_string_α
.Lx471_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n435_call_builtin_prolog_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx473_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx473_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_111
                        cmp              esi, 1
                                                                                        jne   .Lx473_112
                        mov              r8, rax
                                                                                        jmp   .Lx473_110
.Lx473_112:
                        cmp              esi, 2
                                                                                        jne   .Lx473_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx473_111
                        mov              r8, rax
                                                                                        jmp   .Lx473_110
.Lx473_113:
                        cmp              eax, 13
                                                                                        jne   .Lx473_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_111
                        cmp              rax, r8
                                                                                        je    .Lx473_111
                        mov              r8, rax
                                                                                        jmp   .Lx473_110
.Lx473_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx473_114
                        cmp              eax, 99
                                                                                        je    .Lx473_114
                        cmp              eax, 13
                                                                                        jne   .Lx473_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx473_114
                                                                                        jmp   .Lx473_118
.Lx473_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx473_115
                        cmp              eax, 6
                                                                                        je    .Lx473_114
                        cmp              eax, 1
                                                                                        jne   .Lx473_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx473_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx473_114
                                                                                        jmp   .Lx473_116
.Lx473_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx473_117
.Lx473_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx473_117
.Lx473_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx473_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n447_var_ref_α
                                                                                        jmp   n436_var_ref_α
n435_call_builtin_prolog_β:
                                                                                        jmp   n447_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 2
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n438_call_builtin_prolog_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx477_2]
                                                                                        jmp   .Lx477_3
.Lx477_2:
                        .quad            .Lx477_2_s
.Lx477_2_s:
                        .string          "[]"
.Lx477_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n446_call_builtin_prolog_α
                                                                                        jmp   n439_var_ref_α
n438_call_builtin_prolog_β:
                                                                                        jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n440_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx482_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx482_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              esi, 1
                                                                                        jne   .Lx482_55
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_55:
                        cmp              esi, 2
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_56:
                        cmp              eax, 13
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              rax, r8
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_41:
                        lea              r9, [rbp + 848]
.Lx482_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx482_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              esi, 1
                                                                                        jne   .Lx482_57
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_57:
                        cmp              esi, 2
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_58:
                        cmp              eax, 13
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              rax, r9
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_43:
                        cmp              r8, r9
                                                                                        je    .Lx482_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_44
                        cmp              eax, 99
                                                                                        je    .Lx482_44
                        cmp              eax, 13
                                                                                        jne   .Lx482_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx482_44
                                                                                        jmp   .Lx482_45
.Lx482_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_53
                        cmp              eax, 99
                                                                                        je    .Lx482_53
                        cmp              eax, 13
                                                                                        jne   .Lx482_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_46
.Lx482_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                                                                                        jmp   .Lx482_51
.Lx482_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_47
                        cmp              eax, 99
                                                                                        je    .Lx482_47
                        cmp              eax, 13
                                                                                        jne   .Lx482_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_47
                                                                                        jmp   .Lx482_48
.Lx482_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                                                                                        jmp   .Lx482_51
.Lx482_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx482_49
                        cmp              edx, 14
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_52
.Lx482_49:
                        cmp              edx, 14
                                                                                        je    .Lx482_52
                        cmp              ecx, 7
                                                                                        je    .Lx482_53
                        cmp              edx, 7
                                                                                        je    .Lx482_53
                        cmp              ecx, 6
                                                                                        jne   .Lx482_50
                        cmp              edx, 6
                                                                                        jne   .Lx482_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx482_51
                                                                                        jmp   .Lx482_52
.Lx482_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
.Lx482_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx482_54
.Lx482_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx482_54
.Lx482_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx482_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n446_call_builtin_prolog_α
                                                                                        jmp   n442_var_ref_α
n441_call_builtin_prolog_β:
                                                                                        jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n443_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n444_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx487_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_41
                        cmp              esi, 1
                                                                                        jne   .Lx487_55
                        mov              r8, rax
                                                                                        jmp   .Lx487_40
.Lx487_55:
                        cmp              esi, 2
                                                                                        jne   .Lx487_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_41
                        mov              r8, rax
                                                                                        jmp   .Lx487_40
.Lx487_56:
                        cmp              eax, 13
                                                                                        jne   .Lx487_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_41
                        cmp              rax, r8
                                                                                        je    .Lx487_41
                        mov              r8, rax
                                                                                        jmp   .Lx487_40
.Lx487_41:
                        lea              r9, [rbp + 768]
.Lx487_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_43
                        cmp              esi, 1
                                                                                        jne   .Lx487_57
                        mov              r9, rax
                                                                                        jmp   .Lx487_42
.Lx487_57:
                        cmp              esi, 2
                                                                                        jne   .Lx487_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_43
                        mov              r9, rax
                                                                                        jmp   .Lx487_42
.Lx487_58:
                        cmp              eax, 13
                                                                                        jne   .Lx487_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_43
                        cmp              rax, r9
                                                                                        je    .Lx487_43
                        mov              r9, rax
                                                                                        jmp   .Lx487_42
.Lx487_43:
                        cmp              r8, r9
                                                                                        je    .Lx487_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_44
                        cmp              eax, 99
                                                                                        je    .Lx487_44
                        cmp              eax, 13
                                                                                        jne   .Lx487_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx487_44
                                                                                        jmp   .Lx487_45
.Lx487_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_53
                        cmp              eax, 99
                                                                                        je    .Lx487_53
                        cmp              eax, 13
                                                                                        jne   .Lx487_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx487_53
                                                                                        jmp   .Lx487_46
.Lx487_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx487_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx487_53
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
                                                                                        jmp   .Lx487_51
.Lx487_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_47
                        cmp              eax, 99
                                                                                        je    .Lx487_47
                        cmp              eax, 13
                                                                                        jne   .Lx487_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx487_47
                                                                                        jmp   .Lx487_48
.Lx487_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx487_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx487_53
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
                                                                                        jmp   .Lx487_51
.Lx487_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx487_49
                        cmp              edx, 14
                                                                                        je    .Lx487_53
                                                                                        jmp   .Lx487_52
.Lx487_49:
                        cmp              edx, 14
                                                                                        je    .Lx487_52
                        cmp              ecx, 7
                                                                                        je    .Lx487_53
                        cmp              edx, 7
                                                                                        je    .Lx487_53
                        cmp              ecx, 6
                                                                                        jne   .Lx487_50
                        cmp              edx, 6
                                                                                        jne   .Lx487_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx487_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx487_51
                                                                                        jmp   .Lx487_52
.Lx487_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx487_53
.Lx487_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx487_54
.Lx487_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx487_54
.Lx487_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx487_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n446_call_builtin_prolog_α
                                                                                        jmp   n445_suspend_α
n444_call_builtin_prolog_β:
                                                                                        jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_suspend_α:
                        lea              rax, [rip + n445_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_app$2F3_γ
n445_suspend_β:
                                                                                        jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_app$2F3_ω
                                                                                        jmp   n447_var_ref_α
n446_call_builtin_prolog_β:
                                                                                        jmp   proc_app$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n448_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n449_lit_integer_α
.Lx493_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n450_call_builtin_prolog_α
.Lx494_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx495_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx495_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx495_111
                        cmp              esi, 1
                                                                                        jne   .Lx495_112
                        mov              r8, rax
                                                                                        jmp   .Lx495_110
.Lx495_112:
                        cmp              esi, 2
                                                                                        jne   .Lx495_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx495_111
                        mov              r8, rax
                                                                                        jmp   .Lx495_110
.Lx495_113:
                        cmp              eax, 13
                                                                                        jne   .Lx495_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx495_111
                        cmp              rax, r8
                                                                                        je    .Lx495_111
                        mov              r8, rax
                                                                                        jmp   .Lx495_110
.Lx495_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx495_114
                        cmp              eax, 99
                                                                                        je    .Lx495_114
                        cmp              eax, 13
                                                                                        jne   .Lx495_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx495_114
                                                                                        jmp   .Lx495_118
.Lx495_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx495_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx495_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx495_115
                                                                                        jmp   .Lx495_114
.Lx495_119:
                        cmp              eax, 6
                                                                                        jne   .Lx495_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx495_114
                                                                                        jmp   .Lx495_115
.Lx495_120:
                        cmp              eax, 1
                                                                                        jne   .Lx495_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx495_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx495_114
                                                                                        jmp   .Lx495_115
.Lx495_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx495_117
.Lx495_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx495_117
.Lx495_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx495_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n451_var_ref_α
n450_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        add              rsp, 16
                                                                                        jmp   n452_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
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
.Lx502_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_61
                        cmp              esi, 1
                                                                                        jne   .Lx502_62
                        mov              r8, rax
                                                                                        jmp   .Lx502_60
.Lx502_62:
                        cmp              esi, 2
                                                                                        jne   .Lx502_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_61
                        mov              r8, rax
                                                                                        jmp   .Lx502_60
.Lx502_63:
                        cmp              eax, 13
                                                                                        jne   .Lx502_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_61
                        cmp              rax, r8
                                                                                        je    .Lx502_61
                        mov              r8, rax
                                                                                        jmp   .Lx502_60
.Lx502_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_80
                        cmp              eax, 99
                                                                                        je    .Lx502_80
                        cmp              eax, 13
                                                                                        jne   .Lx502_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx502_80
                                                                                        jmp   .Lx502_74
.Lx502_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx502_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx502_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx502_73
                        lea              r9, [rbp + 512]
.Lx502_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_65
                        cmp              esi, 1
                                                                                        jne   .Lx502_66
                        mov              r9, rax
                                                                                        jmp   .Lx502_64
.Lx502_66:
                        cmp              esi, 2
                                                                                        jne   .Lx502_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_65
                        mov              r9, rax
                                                                                        jmp   .Lx502_64
.Lx502_67:
                        cmp              eax, 13
                                                                                        jne   .Lx502_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_65
                        cmp              rax, r9
                                                                                        je    .Lx502_65
                        mov              r9, rax
                                                                                        jmp   .Lx502_64
.Lx502_65:
                        lea              rcx, [rbp + 528]
.Lx502_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx502_69
                        cmp              esi, 1
                                                                                        jne   .Lx502_70
                        mov              rcx, rax
                                                                                        jmp   .Lx502_68
.Lx502_70:
                        cmp              esi, 2
                                                                                        jne   .Lx502_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_69
                        mov              rcx, rax
                                                                                        jmp   .Lx502_68
.Lx502_71:
                        cmp              eax, 13
                                                                                        jne   .Lx502_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx502_69
                        cmp              rax, rcx
                                                                                        je    .Lx502_69
                        mov              rcx, rax
                                                                                        jmp   .Lx502_68
.Lx502_69:
                        cmp              r9, rcx
                                                                                        je    .Lx502_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_75
                        cmp              eax, 99
                                                                                        je    .Lx502_75
                        cmp              eax, 13
                                                                                        jne   .Lx502_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx502_75
                                                                                        jmp   .Lx502_72
.Lx502_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_76
                        cmp              eax, 99
                                                                                        je    .Lx502_76
                        cmp              eax, 13
                                                                                        jne   .Lx502_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx502_76
                                                                                        jmp   .Lx502_72
.Lx502_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx502_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx502_72
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
                                                                                        jmp   .Lx502_77
.Lx502_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx502_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx502_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx502_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx502_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx502_72
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
.Lx502_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_82
                        cmp              esi, 1
                                                                                        jne   .Lx502_83
                        mov              r9, rax
                                                                                        jmp   .Lx502_81
.Lx502_83:
                        cmp              esi, 2
                                                                                        jne   .Lx502_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_82
                        mov              r9, rax
                                                                                        jmp   .Lx502_81
.Lx502_84:
                        cmp              eax, 13
                                                                                        jne   .Lx502_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_82
                        cmp              rax, r9
                                                                                        je    .Lx502_82
                        mov              r9, rax
                                                                                        jmp   .Lx502_81
.Lx502_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_85
                        cmp              eax, 99
                                                                                        je    .Lx502_85
                        cmp              eax, 13
                                                                                        jne   .Lx502_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx502_85
                                                                                        jmp   .Lx502_86
.Lx502_85:
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
                                                                                        jmp   .Lx502_87
.Lx502_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx502_87:
                        lea              rcx, [rbp + 528]
.Lx502_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx502_89
                        cmp              esi, 1
                                                                                        jne   .Lx502_90
                        mov              rcx, rax
                                                                                        jmp   .Lx502_88
.Lx502_90:
                        cmp              esi, 2
                                                                                        jne   .Lx502_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_89
                        mov              rcx, rax
                                                                                        jmp   .Lx502_88
.Lx502_91:
                        cmp              eax, 13
                                                                                        jne   .Lx502_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx502_89
                        cmp              rax, rcx
                                                                                        je    .Lx502_89
                        mov              rcx, rax
                                                                                        jmp   .Lx502_88
.Lx502_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_92
                        cmp              eax, 99
                                                                                        je    .Lx502_92
                        cmp              eax, 13
                                                                                        jne   .Lx502_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx502_92
                                                                                        jmp   .Lx502_93
.Lx502_92:
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
                                                                                        jmp   .Lx502_94
.Lx502_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx502_94:
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
                                                                                        jmp   .Lx502_77
.Lx502_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx502_77
.Lx502_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx502_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n455_var_ref_α
n454_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        add              rsp, 16
                                                                                        jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n457_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n457_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx507_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              esi, 1
                                                                                        jne   .Lx507_55
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_55:
                        cmp              esi, 2
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_56:
                        cmp              eax, 13
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              rax, r8
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_41:
                        lea              r9, [rbp + 416]
.Lx507_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              esi, 1
                                                                                        jne   .Lx507_57
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_57:
                        cmp              esi, 2
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_58:
                        cmp              eax, 13
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              rax, r9
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_43:
                        cmp              r8, r9
                                                                                        je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_44
                        cmp              eax, 99
                                                                                        je    .Lx507_44
                        cmp              eax, 13
                                                                                        jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx507_44
                                                                                        jmp   .Lx507_45
.Lx507_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_53
                        cmp              eax, 99
                                                                                        je    .Lx507_53
                        cmp              eax, 13
                                                                                        jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_46
.Lx507_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
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
                                                                                        jmp   .Lx507_51
.Lx507_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_47
                        cmp              eax, 99
                                                                                        je    .Lx507_47
                        cmp              eax, 13
                                                                                        jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_47
                                                                                        jmp   .Lx507_48
.Lx507_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
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
                                                                                        jmp   .Lx507_51
.Lx507_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx507_49
                        cmp              edx, 14
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_52
.Lx507_49:
                        cmp              edx, 14
                                                                                        je    .Lx507_52
                        cmp              ecx, 7
                                                                                        je    .Lx507_53
                        cmp              edx, 7
                                                                                        je    .Lx507_53
                        cmp              ecx, 6
                                                                                        jne   .Lx507_50
                        cmp              edx, 6
                                                                                        jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx507_51
                                                                                        jmp   .Lx507_52
.Lx507_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
.Lx507_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx507_54
.Lx507_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx507_54
.Lx507_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx507_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n458_var_ref_α
n457_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n459_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n460_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n461_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx514_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx514_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx514_61
                        cmp              esi, 1
                                                                                        jne   .Lx514_62
                        mov              r8, rax
                                                                                        jmp   .Lx514_60
.Lx514_62:
                        cmp              esi, 2
                                                                                        jne   .Lx514_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx514_61
                        mov              r8, rax
                                                                                        jmp   .Lx514_60
.Lx514_63:
                        cmp              eax, 13
                                                                                        jne   .Lx514_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx514_61
                        cmp              rax, r8
                                                                                        je    .Lx514_61
                        mov              r8, rax
                                                                                        jmp   .Lx514_60
.Lx514_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx514_80
                        cmp              eax, 99
                                                                                        je    .Lx514_80
                        cmp              eax, 13
                                                                                        jne   .Lx514_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx514_80
                                                                                        jmp   .Lx514_74
.Lx514_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx514_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx514_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx514_73
                        lea              r9, [rbp + 320]
.Lx514_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx514_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx514_65
                        cmp              esi, 1
                                                                                        jne   .Lx514_66
                        mov              r9, rax
                                                                                        jmp   .Lx514_64
.Lx514_66:
                        cmp              esi, 2
                                                                                        jne   .Lx514_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx514_65
                        mov              r9, rax
                                                                                        jmp   .Lx514_64
.Lx514_67:
                        cmp              eax, 13
                                                                                        jne   .Lx514_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx514_65
                        cmp              rax, r9
                                                                                        je    .Lx514_65
                        mov              r9, rax
                                                                                        jmp   .Lx514_64
.Lx514_65:
                        lea              rcx, [rbp + 336]
.Lx514_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx514_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx514_69
                        cmp              esi, 1
                                                                                        jne   .Lx514_70
                        mov              rcx, rax
                                                                                        jmp   .Lx514_68
.Lx514_70:
                        cmp              esi, 2
                                                                                        jne   .Lx514_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx514_69
                        mov              rcx, rax
                                                                                        jmp   .Lx514_68
.Lx514_71:
                        cmp              eax, 13
                                                                                        jne   .Lx514_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx514_69
                        cmp              rax, rcx
                                                                                        je    .Lx514_69
                        mov              rcx, rax
                                                                                        jmp   .Lx514_68
.Lx514_69:
                        cmp              r9, rcx
                                                                                        je    .Lx514_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx514_75
                        cmp              eax, 99
                                                                                        je    .Lx514_75
                        cmp              eax, 13
                                                                                        jne   .Lx514_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx514_75
                                                                                        jmp   .Lx514_72
.Lx514_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx514_76
                        cmp              eax, 99
                                                                                        je    .Lx514_76
                        cmp              eax, 13
                                                                                        jne   .Lx514_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx514_76
                                                                                        jmp   .Lx514_72
.Lx514_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx514_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx514_72
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
                                                                                        jmp   .Lx514_77
.Lx514_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx514_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx514_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx514_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx514_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx514_72
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
                        lea              r9, [rbp + 320]
.Lx514_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx514_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx514_82
                        cmp              esi, 1
                                                                                        jne   .Lx514_83
                        mov              r9, rax
                                                                                        jmp   .Lx514_81
.Lx514_83:
                        cmp              esi, 2
                                                                                        jne   .Lx514_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx514_82
                        mov              r9, rax
                                                                                        jmp   .Lx514_81
.Lx514_84:
                        cmp              eax, 13
                                                                                        jne   .Lx514_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx514_82
                        cmp              rax, r9
                                                                                        je    .Lx514_82
                        mov              r9, rax
                                                                                        jmp   .Lx514_81
.Lx514_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx514_85
                        cmp              eax, 99
                                                                                        je    .Lx514_85
                        cmp              eax, 13
                                                                                        jne   .Lx514_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx514_85
                                                                                        jmp   .Lx514_86
.Lx514_85:
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
                                                                                        jmp   .Lx514_87
.Lx514_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx514_87:
                        lea              rcx, [rbp + 336]
.Lx514_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx514_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx514_89
                        cmp              esi, 1
                                                                                        jne   .Lx514_90
                        mov              rcx, rax
                                                                                        jmp   .Lx514_88
.Lx514_90:
                        cmp              esi, 2
                                                                                        jne   .Lx514_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx514_89
                        mov              rcx, rax
                                                                                        jmp   .Lx514_88
.Lx514_91:
                        cmp              eax, 13
                                                                                        jne   .Lx514_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx514_89
                        cmp              rax, rcx
                                                                                        je    .Lx514_89
                        mov              rcx, rax
                                                                                        jmp   .Lx514_88
.Lx514_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx514_92
                        cmp              eax, 99
                                                                                        je    .Lx514_92
                        cmp              eax, 13
                                                                                        jne   .Lx514_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx514_92
                                                                                        jmp   .Lx514_93
.Lx514_92:
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
                                                                                        jmp   .Lx514_94
.Lx514_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx514_94:
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
                                                                                        jmp   .Lx514_77
.Lx514_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx514_77
.Lx514_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx514_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n462_var_ref_α
n461_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n463_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n464_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n465_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx522_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx522_21
.Lx522_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx522_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx522_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx522_23
.Lx522_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx522_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx522_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx522_25
.Lx522_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx522_25:
                        mov              edi, 6
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx522_1
                        lea              rcx, [rip + .Lx522_3]
                        lea              rdx, [rip + .Lx522_4]
                                                                                        jmp   rax
.Lx522_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx522_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx522_2
.Lx522_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx522_2
.Lx522_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx522_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx522_2
.Lx522_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx522_2
.Lx522_1:
                        call             rt_faildescr@PLT
.Lx522_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n466_suspend_α
n465_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "app/3"
#-----------------------------------------------------------------------------------------------------------------------
n466_suspend_α:
                        lea              rax, [rip + n466_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_app$2F3_γ
n466_suspend_β:
                                                                                        jmp   n465_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_prolog_α:
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
                                                                                        je    proc_app$2F3_ω
                                                                                        jmp   proc_app$2F3_ω
n467_call_builtin_prolog_β:
                                                                                        jmp   proc_app$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_app$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_app$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_app$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_app$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1192]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_app$2F3_ω:
                        mov              rax, [rbp + 1200]
                        lea              rsp, [rbp + 1216]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "reverse/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_reverse$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$reverse_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$reverse_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "append/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_append$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "nrev/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_nrev$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1184
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "data/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_data$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "data/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_data$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "app/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_app$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
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
                        sub              rsp, 424
                        mov              rdi, rsp
                        mov              ecx, 424
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 416], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n526_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx539_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx539_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx539_101
.Lx539_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx539_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n527_var_ref_α
n526_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n528_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n528_call_proc_staged_α:
                        mov              qword ptr [rbp + 336], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx543_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx543_21
.Lx543_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx543_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx543_1
                        lea              rcx, [rip + .Lx543_3]
                        lea              rdx, [rip + .Lx543_4]
                                                                                        jmp   rax
.Lx543_3:
                        mov              qword ptr [rbp + 344], rsp
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx543_5
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx543_2
.Lx543_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx543_2
.Lx543_4:
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx543_6
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx543_2
.Lx543_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx543_2
.Lx543_1:
                        call             rt_faildescr@PLT
.Lx543_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n538_call_builtin_prolog_α
                                                                                        jmp   n529_var_ref_α
n528_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 344]
                                                                                        jmp   qword ptr [rsp]
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "data/1"
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n530_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n531_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n531_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx549_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx549_21
.Lx549_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx549_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx549_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx549_23
.Lx549_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx549_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx549_1
                        lea              rcx, [rip + .Lx549_3]
                        lea              rdx, [rip + .Lx549_4]
                                                                                        jmp   rax
.Lx549_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx549_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx549_2
.Lx549_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx549_2
.Lx549_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx549_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx549_2
.Lx549_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx549_2
.Lx549_1:
                        call             rt_faildescr@PLT
.Lx549_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n528_call_proc_staged_β
                                                                                        jmp   n532_var_α
n531_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "nrev/2"
#-----------------------------------------------------------------------------------------------------------------------
n532_var_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n533_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n533_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn553:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn553]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n531_call_proc_staged_β
                                                                                        jmp   n534_lit_string_α
n533_call_builtin_prolog_β:
                                                                                        jmp   n531_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n535_call_builtin_prolog_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn556:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n531_call_proc_staged_β
                                                                                        jmp   n536_move_label_α
n535_call_builtin_prolog_β:
                                                                                        jmp   n531_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n536_move_label_α:
                        lea              rax, [rip + n531_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n537_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n537_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n538_call_builtin_prolog_α:
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
n538_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n537_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 416]
                        add              rsp, 424
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 416]
                        add              rsp, 424
                        ret
                        .section         .note.GNU-stack,"",@progbits
