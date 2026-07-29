                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_length$2F2_α
proc_length$2F2_α:
                        .global          proc_length$2F2_α
                        .global          proc_length$2F2_β
                        .global          proc_length$2F2_γ
                        .global          proc_length$2F2_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
proc_length$2F2_α_body:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
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
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   proc_length$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
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
.Lx24_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx24_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx24_41
                        cmp              esi, 1
                                                                                        jne   .Lx24_55
                        mov              r8, rax
                                                                                        jmp   .Lx24_40
.Lx24_55:
                        cmp              esi, 2
                                                                                        jne   .Lx24_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx24_41
                        mov              r8, rax
                                                                                        jmp   .Lx24_40
.Lx24_56:
                        cmp              eax, 13
                                                                                        jne   .Lx24_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx24_41
                        cmp              rax, r8
                                                                                        je    .Lx24_41
                        mov              r8, rax
                                                                                        jmp   .Lx24_40
.Lx24_41:
                        lea              r9, [rbp + 288]
.Lx24_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx24_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx24_43
                        cmp              esi, 1
                                                                                        jne   .Lx24_57
                        mov              r9, rax
                                                                                        jmp   .Lx24_42
.Lx24_57:
                        cmp              esi, 2
                                                                                        jne   .Lx24_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx24_43
                        mov              r9, rax
                                                                                        jmp   .Lx24_42
.Lx24_58:
                        cmp              eax, 13
                                                                                        jne   .Lx24_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx24_43
                        cmp              rax, r9
                                                                                        je    .Lx24_43
                        mov              r9, rax
                                                                                        jmp   .Lx24_42
.Lx24_43:
                        cmp              r8, r9
                                                                                        je    .Lx24_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx24_44
                        cmp              eax, 99
                                                                                        je    .Lx24_44
                        cmp              eax, 13
                                                                                        jne   .Lx24_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx24_44
                                                                                        jmp   .Lx24_45
.Lx24_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx24_53
                        cmp              eax, 99
                                                                                        je    .Lx24_53
                        cmp              eax, 13
                                                                                        jne   .Lx24_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx24_53
                                                                                        jmp   .Lx24_46
.Lx24_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx24_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx24_53
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
                                                                                        jmp   .Lx24_51
.Lx24_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx24_47
                        cmp              eax, 99
                                                                                        je    .Lx24_47
                        cmp              eax, 13
                                                                                        jne   .Lx24_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx24_47
                                                                                        jmp   .Lx24_48
.Lx24_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx24_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx24_53
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
                                                                                        jmp   .Lx24_51
.Lx24_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx24_49
                        cmp              edx, 14
                                                                                        je    .Lx24_53
                                                                                        jmp   .Lx24_52
.Lx24_49:
                        cmp              edx, 14
                                                                                        je    .Lx24_52
                        cmp              ecx, 7
                                                                                        je    .Lx24_53
                        cmp              edx, 7
                                                                                        je    .Lx24_53
                        cmp              ecx, 6
                                                                                        jne   .Lx24_50
                        cmp              edx, 6
                                                                                        jne   .Lx24_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx24_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx24_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx24_51
                                                                                        jmp   .Lx24_52
.Lx24_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx24_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx24_53
.Lx24_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx24_54
.Lx24_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx24_54
.Lx24_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx24_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_ref_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n10_var_ref_α
.Lx27_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n11_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx31_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx31_21
.Lx31_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx31_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx31_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx31_23
.Lx31_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx31_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx31_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx31_25
.Lx31_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx31_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx31_1
                        lea              rcx, [rip + .Lx31_3]
                        lea              rdx, [rip + .Lx31_4]
                                                                                        jmp   rax
.Lx31_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx31_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx31_2
.Lx31_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx31_2
.Lx31_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx31_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx31_2
.Lx31_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx31_2
.Lx31_1:
                        call             rt_faildescr@PLT
.Lx31_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n12_suspend_α
n11_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_length$2F2_γ
n12_suspend_β:
                                                                                        jmp   n11_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_length$2F2_res]
                        push             rax
                        mov              rax, [rbp + 472]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_ω:
                        mov              rax, [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$length_$2F3_α
proc_$length_$2F3_α:
                        .global          proc_$length_$2F3_α
                        .global          proc_$length_$2F3_β
                        .global          proc_$length_$2F3_γ
                        .global          proc_$length_$2F3_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_$length_$2F3_α_body:
                        lea              rax, [rip + n59_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx75_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx75_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx75_101
.Lx75_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx75_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n35_var_ref_α
n34_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n37_lit_string_α
.Lx78_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n38_op11_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
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
.Lx80_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx80_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx80_111
                        cmp              esi, 1
                                                                                        jne   .Lx80_112
                        mov              r8, rax
                                                                                        jmp   .Lx80_110
.Lx80_112:
                        cmp              esi, 2
                                                                                        jne   .Lx80_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx80_111
                        mov              r8, rax
                                                                                        jmp   .Lx80_110
.Lx80_113:
                        cmp              eax, 13
                                                                                        jne   .Lx80_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx80_111
                        cmp              rax, r8
                                                                                        je    .Lx80_111
                        mov              r8, rax
                                                                                        jmp   .Lx80_110
.Lx80_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx80_114
                        cmp              eax, 99
                                                                                        je    .Lx80_114
                        cmp              eax, 13
                                                                                        jne   .Lx80_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx80_114
                                                                                        jmp   .Lx80_118
.Lx80_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx80_115
                        cmp              eax, 6
                                                                                        je    .Lx80_114
                        cmp              eax, 1
                                                                                        jne   .Lx80_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx80_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx80_114
                                                                                        jmp   .Lx80_116
.Lx80_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx80_117
.Lx80_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx80_117
.Lx80_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx80_117:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n40_var_ref_α
                                                                                        jmp   n39_var_ref_α
n38_op11_β:
                                                                                        jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n43_op11_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n44_lit_integer_α
.Lx86_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx87_2]
                                                                                        jmp   .Lx87_3
.Lx87_2:
                        .quad            .Lx87_2_s
.Lx87_2_s:
                        .string          "[]"
.Lx87_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n46_op11_α
                                                                                        jmp   n45_var_ref_α
n43_op11_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n47_op11_α
.Lx88_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n40_var_ref_α
n46_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
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
.Lx92_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx92_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_111
                        cmp              esi, 1
                                                                                        jne   .Lx92_112
                        mov              r8, rax
                                                                                        jmp   .Lx92_110
.Lx92_112:
                        cmp              esi, 2
                                                                                        jne   .Lx92_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx92_111
                        mov              r8, rax
                                                                                        jmp   .Lx92_110
.Lx92_113:
                        cmp              eax, 13
                                                                                        jne   .Lx92_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_111
                        cmp              rax, r8
                                                                                        je    .Lx92_111
                        mov              r8, rax
                                                                                        jmp   .Lx92_110
.Lx92_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_114
                        cmp              eax, 99
                                                                                        je    .Lx92_114
                        cmp              eax, 13
                                                                                        jne   .Lx92_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx92_114
                                                                                        jmp   .Lx92_118
.Lx92_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx92_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx92_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx92_115
                                                                                        jmp   .Lx92_114
.Lx92_119:
                        cmp              eax, 6
                                                                                        jne   .Lx92_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx92_114
                                                                                        jmp   .Lx92_115
.Lx92_120:
                        cmp              eax, 1
                                                                                        jne   .Lx92_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx92_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx92_114
                                                                                        jmp   .Lx92_115
.Lx92_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx92_117
.Lx92_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx92_117
.Lx92_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx92_117:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n50_op11_α
                                                                                        jmp   n49_var_ref_α
n47_op11_β:
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n51_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
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
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   proc_$length_$2F3_ω
n50_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
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
.Lx98_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              esi, 1
                                                                                        jne   .Lx98_55
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_55:
                        cmp              esi, 2
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_56:
                        cmp              eax, 13
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              rax, r8
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_41:
                        lea              r9, [rbp + 976]
.Lx98_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              esi, 1
                                                                                        jne   .Lx98_57
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_57:
                        cmp              esi, 2
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_58:
                        cmp              eax, 13
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              rax, r9
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_43:
                        cmp              r8, r9
                                                                                        je    .Lx98_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_44
                        cmp              eax, 99
                                                                                        je    .Lx98_44
                        cmp              eax, 13
                                                                                        jne   .Lx98_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx98_44
                                                                                        jmp   .Lx98_45
.Lx98_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_53
                        cmp              eax, 99
                                                                                        je    .Lx98_53
                        cmp              eax, 13
                                                                                        jne   .Lx98_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_46
.Lx98_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_47
                        cmp              eax, 99
                                                                                        je    .Lx98_47
                        cmp              eax, 13
                                                                                        jne   .Lx98_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_47
                                                                                        jmp   .Lx98_48
.Lx98_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx98_49
                        cmp              edx, 14
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_52
.Lx98_49:
                        cmp              edx, 14
                                                                                        je    .Lx98_52
                        cmp              ecx, 7
                                                                                        je    .Lx98_53
                        cmp              edx, 7
                                                                                        je    .Lx98_53
                        cmp              ecx, 6
                                                                                        jne   .Lx98_50
                        cmp              edx, 6
                                                                                        jne   .Lx98_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx98_51
                                                                                        jmp   .Lx98_52
.Lx98_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
.Lx98_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx98_54
.Lx98_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx98_54
.Lx98_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx98_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n46_op11_α
                                                                                        jmp   n53_var_ref_α
n51_op11_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
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
                        lea              r9, [rbp + 640]
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
                        lea              rcx, [rbp + 656]
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
                        lea              r9, [rbp + 640]
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
                        lea              rcx, [rbp + 656]
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
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n50_op11_α
                                                                                        jmp   n58_var_ref_α
n56_op11_β:
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
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
.Lx108_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_41
                        cmp              esi, 1
                                                                                        jne   .Lx108_55
                        mov              r8, rax
                                                                                        jmp   .Lx108_40
.Lx108_55:
                        cmp              esi, 2
                                                                                        jne   .Lx108_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_41
                        mov              r8, rax
                                                                                        jmp   .Lx108_40
.Lx108_56:
                        cmp              eax, 13
                                                                                        jne   .Lx108_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_41
                        cmp              rax, r8
                                                                                        je    .Lx108_41
                        mov              r8, rax
                                                                                        jmp   .Lx108_40
.Lx108_41:
                        lea              r9, [rbp + 896]
.Lx108_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_43
                        cmp              esi, 1
                                                                                        jne   .Lx108_57
                        mov              r9, rax
                                                                                        jmp   .Lx108_42
.Lx108_57:
                        cmp              esi, 2
                                                                                        jne   .Lx108_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_43
                        mov              r9, rax
                                                                                        jmp   .Lx108_42
.Lx108_58:
                        cmp              eax, 13
                                                                                        jne   .Lx108_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_43
                        cmp              rax, r9
                                                                                        je    .Lx108_43
                        mov              r9, rax
                                                                                        jmp   .Lx108_42
.Lx108_43:
                        cmp              r8, r9
                                                                                        je    .Lx108_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_44
                        cmp              eax, 99
                                                                                        je    .Lx108_44
                        cmp              eax, 13
                                                                                        jne   .Lx108_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx108_44
                                                                                        jmp   .Lx108_45
.Lx108_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_53
                        cmp              eax, 99
                                                                                        je    .Lx108_53
                        cmp              eax, 13
                                                                                        jne   .Lx108_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx108_53
                                                                                        jmp   .Lx108_46
.Lx108_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx108_53
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
                                                                                        jmp   .Lx108_51
.Lx108_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_47
                        cmp              eax, 99
                                                                                        je    .Lx108_47
                        cmp              eax, 13
                                                                                        jne   .Lx108_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx108_47
                                                                                        jmp   .Lx108_48
.Lx108_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx108_53
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
                                                                                        jmp   .Lx108_51
.Lx108_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx108_49
                        cmp              edx, 14
                                                                                        je    .Lx108_53
                                                                                        jmp   .Lx108_52
.Lx108_49:
                        cmp              edx, 14
                                                                                        je    .Lx108_52
                        cmp              ecx, 7
                                                                                        je    .Lx108_53
                        cmp              edx, 7
                                                                                        je    .Lx108_53
                        cmp              ecx, 6
                                                                                        jne   .Lx108_50
                        cmp              edx, 6
                                                                                        jne   .Lx108_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx108_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx108_51
                                                                                        jmp   .Lx108_52
.Lx108_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx108_53
.Lx108_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx108_54
.Lx108_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx108_54
.Lx108_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx108_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n46_op11_α
                                                                                        jmp   n59_suspend_α
n57_op11_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_suspend_α:
                        lea              rax, [rip + n59_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n59_suspend_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
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
.Lx115_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx115_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_41
                        cmp              esi, 1
                                                                                        jne   .Lx115_55
                        mov              r8, rax
                                                                                        jmp   .Lx115_40
.Lx115_55:
                        cmp              esi, 2
                                                                                        jne   .Lx115_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx115_41
                        mov              r8, rax
                                                                                        jmp   .Lx115_40
.Lx115_56:
                        cmp              eax, 13
                                                                                        jne   .Lx115_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_41
                        cmp              rax, r8
                                                                                        je    .Lx115_41
                        mov              r8, rax
                                                                                        jmp   .Lx115_40
.Lx115_41:
                        lea              r9, [rbp + 544]
.Lx115_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx115_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_43
                        cmp              esi, 1
                                                                                        jne   .Lx115_57
                        mov              r9, rax
                                                                                        jmp   .Lx115_42
.Lx115_57:
                        cmp              esi, 2
                                                                                        jne   .Lx115_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx115_43
                        mov              r9, rax
                                                                                        jmp   .Lx115_42
.Lx115_58:
                        cmp              eax, 13
                                                                                        jne   .Lx115_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_43
                        cmp              rax, r9
                                                                                        je    .Lx115_43
                        mov              r9, rax
                                                                                        jmp   .Lx115_42
.Lx115_43:
                        cmp              r8, r9
                                                                                        je    .Lx115_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx115_44
                        cmp              eax, 99
                                                                                        je    .Lx115_44
                        cmp              eax, 13
                                                                                        jne   .Lx115_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx115_44
                                                                                        jmp   .Lx115_45
.Lx115_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx115_53
                        cmp              eax, 99
                                                                                        je    .Lx115_53
                        cmp              eax, 13
                                                                                        jne   .Lx115_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx115_53
                                                                                        jmp   .Lx115_46
.Lx115_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx115_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx115_53
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
                                                                                        jmp   .Lx115_51
.Lx115_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx115_47
                        cmp              eax, 99
                                                                                        je    .Lx115_47
                        cmp              eax, 13
                                                                                        jne   .Lx115_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx115_47
                                                                                        jmp   .Lx115_48
.Lx115_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx115_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx115_53
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
                                                                                        jmp   .Lx115_51
.Lx115_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx115_49
                        cmp              edx, 14
                                                                                        je    .Lx115_53
                                                                                        jmp   .Lx115_52
.Lx115_49:
                        cmp              edx, 14
                                                                                        je    .Lx115_52
                        cmp              ecx, 7
                                                                                        je    .Lx115_53
                        cmp              edx, 7
                                                                                        je    .Lx115_53
                        cmp              ecx, 6
                                                                                        jne   .Lx115_50
                        cmp              edx, 6
                                                                                        jne   .Lx115_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx115_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx115_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx115_51
                                                                                        jmp   .Lx115_52
.Lx115_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx115_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx115_53
.Lx115_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx115_54
.Lx115_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx115_54
.Lx115_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx115_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n50_op11_α
                                                                                        jmp   n62_var_ref_α
n61_op11_β:
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
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
.Lx120_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx120_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        cmp              esi, 1
                                                                                        jne   .Lx120_55
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_55:
                        cmp              esi, 2
                                                                                        jne   .Lx120_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_56:
                        cmp              eax, 13
                                                                                        jne   .Lx120_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        cmp              rax, r8
                                                                                        je    .Lx120_41
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_41:
                        lea              r9, [rbp + 464]
.Lx120_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx120_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        cmp              esi, 1
                                                                                        jne   .Lx120_57
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_57:
                        cmp              esi, 2
                                                                                        jne   .Lx120_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_58:
                        cmp              eax, 13
                                                                                        jne   .Lx120_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        cmp              rax, r9
                                                                                        je    .Lx120_43
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_43:
                        cmp              r8, r9
                                                                                        je    .Lx120_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_44
                        cmp              eax, 99
                                                                                        je    .Lx120_44
                        cmp              eax, 13
                                                                                        jne   .Lx120_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx120_44
                                                                                        jmp   .Lx120_45
.Lx120_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_53
                        cmp              eax, 99
                                                                                        je    .Lx120_53
                        cmp              eax, 13
                                                                                        jne   .Lx120_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx120_53
                                                                                        jmp   .Lx120_46
.Lx120_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx120_53
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
                                                                                        jmp   .Lx120_51
.Lx120_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_47
                        cmp              eax, 99
                                                                                        je    .Lx120_47
                        cmp              eax, 13
                                                                                        jne   .Lx120_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx120_47
                                                                                        jmp   .Lx120_48
.Lx120_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx120_53
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
                                                                                        jmp   .Lx120_51
.Lx120_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx120_49
                        cmp              edx, 14
                                                                                        je    .Lx120_53
                                                                                        jmp   .Lx120_52
.Lx120_49:
                        cmp              edx, 14
                                                                                        je    .Lx120_52
                        cmp              ecx, 7
                                                                                        je    .Lx120_53
                        cmp              edx, 7
                                                                                        je    .Lx120_53
                        cmp              ecx, 6
                                                                                        jne   .Lx120_50
                        cmp              edx, 6
                                                                                        jne   .Lx120_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx120_51
                                                                                        jmp   .Lx120_52
.Lx120_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx120_53
.Lx120_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx120_54
.Lx120_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx120_54
.Lx120_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx120_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n50_op11_α
                                                                                        jmp   n65_var_ref_α
n64_op11_β:
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n66_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n68_op11_α
.Lx125_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n50_op11_α
                                                                                        jmp   n69_op11_α
n68_op11_β:
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n50_op11_α
                                                                                        jmp   n70_var_ref_α
n69_op11_β:
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n73_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx135_21
.Lx135_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx135_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx135_23
.Lx135_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx135_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx135_25
.Lx135_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx135_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx135_1
                        lea              rcx, [rip + .Lx135_3]
                        lea              rdx, [rip + .Lx135_4]
                                                                                        jmp   rax
.Lx135_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx135_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx135_2
.Lx135_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx135_2
.Lx135_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx135_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx135_2
.Lx135_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx135_2
.Lx135_1:
                        call             rt_faildescr@PLT
.Lx135_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n50_op11_α
                                                                                        jmp   n74_suspend_α
n73_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n74_suspend_α:
                        lea              rax, [rip + n74_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n74_suspend_β:
                                                                                        jmp   n73_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1216]
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$length_$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1320]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "length/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_length$2F2_α]
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
.Lstartup_pname1:       .string          "$length_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$length_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1312
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
                        sub              rsp, 4440
                        mov              rdi, rsp
                        mov              ecx, 4440
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4432], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx274_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx274_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx274_101
.Lx274_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx274_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n139_lit_string_α
n138_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 4080], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n140_lit_string_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "/tmp/rung78_d.txt"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 4096], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n141_var_ref_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4072], rax
                        .section         .rodata
.Lrkfn280:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 4032]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n143_var_α
n142_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
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
n144_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 4000], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n146_op11_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "tree(node(A,leaf,B), C, A)."
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3976], rax
                        .section         .rodata
.Lrkfn286:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rbp + 3952]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n147_var_α
n146_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3912], rax
                        .section         .rodata
.Lrkfn290:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 3904]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n149_var_α
n148_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n151_op11_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "q(X, Y, X)."
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3848], rax
                        .section         .rodata
.Lrkfn295:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rbp + 3824]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n152_var_α
n151_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3784], rax
                        .section         .rodata
.Lrkfn299:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rbp + 3776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n154_var_ref_α
n153_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3736], rax
                        .section         .rodata
.Lrkfn303:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rbp + 3728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n156_lit_string_α
n155_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n157_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "/tmp/rung78_d.txt"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 3680], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n158_var_ref_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                                                                                        jmp   n159_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3656], rax
                        .section         .rodata
.Lrkfn309:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rbp + 3616]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n160_var_ref_α
n159_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4272]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 3584], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n163_lit_string_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n164_var_ref_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "variables"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n166_lit_string_α
n165_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n167_lit_string_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n168_var_ref_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "variable_names"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   n169_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3248]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n170_lit_string_α
n169_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n171_lit_string_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n172_var_ref_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 3056]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n174_lit_string_α
n173_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n175_op11_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n176_op11_α
n175_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3368], rax
                        lea              rdi, [rbp + 3328]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n177_op11_α
n176_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_op11_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3520]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n178_op11_α
n177_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn334:              .string          "$read_term3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n179_var_ref_α
n178_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        mov              qword ptr [rbp + 2848], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rbp + 2880]
                        mov              rdx, qword ptr [rbp + 2888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2880]
                        mov              rdx, qword ptr [rbp + 2888]
                        call             rt_arg_stage@PLT
.Lx340_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_22
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx340_23
.Lx340_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        call             rt_arg_stage@PLT
.Lx340_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        mov              qword ptr [rbp + 2856], rsp
                        mov              rax, qword ptr [rbp + 2848]
                        test             rax, rax
                                                                                        jne   .Lx340_5
                        mov              qword ptr [rbp + 2848], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        mov              rax, qword ptr [rbp + 2848]
                        test             rax, rax
                                                                                        jne   .Lx340_6
                        mov              qword ptr [rbp + 2848], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n182_lit_string_α
n181_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2856]
                                                                                        jmp   qword ptr [rsp]
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n183_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n184_var_ref_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "nvars"
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n185_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n186_op11_α
n185_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n186_op11_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        .section         .rodata
.Lrkfn347:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn347]
                        lea              rsi, [rbp + 2656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n181_call_proc_staged_β
                                                                                        jmp   n187_lit_string_α
n186_op11_β:
                                                                                        jmp   n181_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n188_op11_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n188_op11_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn350:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n181_call_proc_staged_β
                                                                                        jmp   n189_var_ref_α
n188_op11_β:
                                                                                        jmp   n181_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n191_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        mov              qword ptr [rbp + 2528], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx356_20
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx356_21
.Lx356_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        call             rt_arg_stage@PLT
.Lx356_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx356_22
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx356_23
.Lx356_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        call             rt_arg_stage@PLT
.Lx356_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx356_1
                        lea              rcx, [rip + .Lx356_3]
                        lea              rdx, [rip + .Lx356_4]
                                                                                        jmp   rax
.Lx356_3:
                        mov              qword ptr [rbp + 2536], rsp
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx356_5
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx356_2
.Lx356_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx356_2
.Lx356_4:
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx356_6
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx356_2
.Lx356_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx356_2
.Lx356_1:
                        call             rt_faildescr@PLT
.Lx356_2:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n181_call_proc_staged_β
                                                                                        jmp   n192_lit_string_α
n191_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2536]
                                                                                        jmp   qword ptr [rsp]
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n193_lit_string_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n194_var_ref_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "nnames"
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n195_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_op11_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n196_op11_α
n195_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_op11_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn363:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn363]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n191_call_proc_staged_β
                                                                                        jmp   n197_lit_string_α
n196_op11_β:
                                                                                        jmp   n191_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n198_op11_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n198_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn366:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn366]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n191_call_proc_staged_β
                                                                                        jmp   n199_var_ref_α
n198_op11_β:
                                                                                        jmp   n191_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4320]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n201_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_proc_staged_α:
                        mov              qword ptr [rbp + 2208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx372_20
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx372_21
.Lx372_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        call             rt_arg_stage@PLT
.Lx372_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx372_22
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx372_23
.Lx372_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx372_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx372_1
                        lea              rcx, [rip + .Lx372_3]
                        lea              rdx, [rip + .Lx372_4]
                                                                                        jmp   rax
.Lx372_3:
                        mov              qword ptr [rbp + 2216], rsp
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx372_5
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx372_2
.Lx372_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx372_2
.Lx372_4:
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx372_6
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx372_2
.Lx372_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx372_2
.Lx372_1:
                        call             rt_faildescr@PLT
.Lx372_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n191_call_proc_staged_β
                                                                                        jmp   n202_lit_string_α
n201_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2216]
                                                                                        jmp   qword ptr [rsp]
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n203_lit_string_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n204_var_ref_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "nsingletons"
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4320]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n205_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n206_op11_α
n205_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n206_op11_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn379:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn379]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n207_lit_string_α
n206_op11_β:
                                                                                        jmp   n201_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n208_op11_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n208_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn382:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n209_var_ref_α
n208_op11_β:
                                                                                        jmp   n201_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4272]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n211_lit_string_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "tree"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n212_var_ref_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "node"
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4240]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n214_var_ref_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "leaf"
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4288]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n215_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n215_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1712]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n216_var_ref_α
n215_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4304]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n217_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4256]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n218_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n218_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n220_lit_string_α
                                                                                        jmp   n219_op11_α
n218_op11_β:
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1600]
                        lea              r8, [rbp + 1600]
.Lx398_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx398_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx398_41
                        cmp              esi, 1
                                                                                        jne   .Lx398_55
                        mov              r8, rax
                                                                                        jmp   .Lx398_40
.Lx398_55:
                        cmp              esi, 2
                                                                                        jne   .Lx398_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx398_41
                        mov              r8, rax
                                                                                        jmp   .Lx398_40
.Lx398_56:
                        cmp              eax, 13
                                                                                        jne   .Lx398_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx398_41
                        cmp              rax, r8
                                                                                        je    .Lx398_41
                        mov              r8, rax
                                                                                        jmp   .Lx398_40
.Lx398_41:
                        lea              r9, [rbp + 1616]
.Lx398_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx398_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx398_43
                        cmp              esi, 1
                                                                                        jne   .Lx398_57
                        mov              r9, rax
                                                                                        jmp   .Lx398_42
.Lx398_57:
                        cmp              esi, 2
                                                                                        jne   .Lx398_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx398_43
                        mov              r9, rax
                                                                                        jmp   .Lx398_42
.Lx398_58:
                        cmp              eax, 13
                                                                                        jne   .Lx398_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx398_43
                        cmp              rax, r9
                                                                                        je    .Lx398_43
                        mov              r9, rax
                                                                                        jmp   .Lx398_42
.Lx398_43:
                        cmp              r8, r9
                                                                                        je    .Lx398_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx398_44
                        cmp              eax, 99
                                                                                        je    .Lx398_44
                        cmp              eax, 13
                                                                                        jne   .Lx398_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx398_44
                                                                                        jmp   .Lx398_45
.Lx398_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx398_53
                        cmp              eax, 99
                                                                                        je    .Lx398_53
                        cmp              eax, 13
                                                                                        jne   .Lx398_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx398_53
                                                                                        jmp   .Lx398_46
.Lx398_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx398_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx398_53
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
                                                                                        jmp   .Lx398_51
.Lx398_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx398_47
                        cmp              eax, 99
                                                                                        je    .Lx398_47
                        cmp              eax, 13
                                                                                        jne   .Lx398_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx398_47
                                                                                        jmp   .Lx398_48
.Lx398_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx398_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx398_53
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
                                                                                        jmp   .Lx398_51
.Lx398_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx398_49
                        cmp              edx, 14
                                                                                        je    .Lx398_53
                                                                                        jmp   .Lx398_52
.Lx398_49:
                        cmp              edx, 14
                                                                                        je    .Lx398_52
                        cmp              ecx, 7
                                                                                        je    .Lx398_53
                        cmp              edx, 7
                                                                                        je    .Lx398_53
                        cmp              ecx, 6
                                                                                        jne   .Lx398_50
                        cmp              edx, 6
                                                                                        jne   .Lx398_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx398_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx398_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx398_51
                                                                                        jmp   .Lx398_52
.Lx398_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx398_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx398_53
.Lx398_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx398_54
.Lx398_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx398_54
.Lx398_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx398_54:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n220_lit_string_α
                                                                                        jmp   n221_var_ref_α
n219_op11_β:
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n222_op11_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "a_bad"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4240]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n223_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn403:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn403]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n224_lit_string_α
n222_op11_β:
                                                                                        jmp   n201_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4256]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n225_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n226_op11_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n225_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn408:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n220_lit_string_α
                                                                                        jmp   n227_lit_string_α
n225_op11_β:
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n226_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn410:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n228_var_ref_α
n226_op11_β:
                                                                                        jmp   n201_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n229_op11_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "a_shared_ok"
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n230_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n229_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn415:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn415]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n224_lit_string_α
n229_op11_β:
                                                                                        jmp   n201_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n230_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn417:              .string          "$set_input"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n231_var_ref_α
n230_op11_β:
                                                                                        jmp   n201_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n233_lit_string_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n234_var_ref_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "singletons"
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4224]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n235_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   n236_lit_string_α
n235_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n237_op11_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n237_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n238_op11_α
n237_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n238_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn428:              .string          "$read_term2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n239_var_ref_α
n238_op11_β:
                                                                                        jmp   n201_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4224]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4208]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n241_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_proc_staged_α:
                        mov              qword ptr [rbp + 976], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx434_20
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx434_21
.Lx434_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx434_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx434_22
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx434_23
.Lx434_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx434_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx434_1
                        lea              rcx, [rip + .Lx434_3]
                        lea              rdx, [rip + .Lx434_4]
                                                                                        jmp   rax
.Lx434_3:
                        mov              qword ptr [rbp + 984], rsp
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx434_5
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx434_2
.Lx434_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx434_2
.Lx434_4:
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx434_6
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx434_2
.Lx434_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx434_2
.Lx434_1:
                        call             rt_faildescr@PLT
.Lx434_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_proc_staged_β
                                                                                        jmp   n242_lit_string_α
n241_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 984]
                                                                                        jmp   qword ptr [rsp]
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n243_lit_string_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n244_var_ref_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "rt2_singletons"
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4208]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n245_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n245_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n246_op11_α
n245_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn441:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n247_lit_string_α
n246_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n248_op11_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn444:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n249_var_ref_α
n248_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4176]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n251_var_ref_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4192]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4160]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n254_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n256_lit_string_α
                                                                                        jmp   n255_op11_α
n254_op11_β:
                                                                                        jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx455_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx455_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx455_41
                        cmp              esi, 1
                                                                                        jne   .Lx455_55
                        mov              r8, rax
                                                                                        jmp   .Lx455_40
.Lx455_55:
                        cmp              esi, 2
                                                                                        jne   .Lx455_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx455_41
                        mov              r8, rax
                                                                                        jmp   .Lx455_40
.Lx455_56:
                        cmp              eax, 13
                                                                                        jne   .Lx455_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx455_41
                        cmp              rax, r8
                                                                                        je    .Lx455_41
                        mov              r8, rax
                                                                                        jmp   .Lx455_40
.Lx455_41:
                        lea              r9, [rbp + 528]
.Lx455_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx455_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx455_43
                        cmp              esi, 1
                                                                                        jne   .Lx455_57
                        mov              r9, rax
                                                                                        jmp   .Lx455_42
.Lx455_57:
                        cmp              esi, 2
                                                                                        jne   .Lx455_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx455_43
                        mov              r9, rax
                                                                                        jmp   .Lx455_42
.Lx455_58:
                        cmp              eax, 13
                                                                                        jne   .Lx455_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx455_43
                        cmp              rax, r9
                                                                                        je    .Lx455_43
                        mov              r9, rax
                                                                                        jmp   .Lx455_42
.Lx455_43:
                        cmp              r8, r9
                                                                                        je    .Lx455_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx455_44
                        cmp              eax, 99
                                                                                        je    .Lx455_44
                        cmp              eax, 13
                                                                                        jne   .Lx455_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx455_44
                                                                                        jmp   .Lx455_45
.Lx455_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx455_53
                        cmp              eax, 99
                                                                                        je    .Lx455_53
                        cmp              eax, 13
                                                                                        jne   .Lx455_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx455_53
                                                                                        jmp   .Lx455_46
.Lx455_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx455_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx455_53
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
                                                                                        jmp   .Lx455_51
.Lx455_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx455_47
                        cmp              eax, 99
                                                                                        je    .Lx455_47
                        cmp              eax, 13
                                                                                        jne   .Lx455_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx455_47
                                                                                        jmp   .Lx455_48
.Lx455_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx455_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx455_53
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
                                                                                        jmp   .Lx455_51
.Lx455_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx455_49
                        cmp              edx, 14
                                                                                        je    .Lx455_53
                                                                                        jmp   .Lx455_52
.Lx455_49:
                        cmp              edx, 14
                                                                                        je    .Lx455_52
                        cmp              ecx, 7
                                                                                        je    .Lx455_53
                        cmp              edx, 7
                                                                                        je    .Lx455_53
                        cmp              ecx, 6
                                                                                        jne   .Lx455_50
                        cmp              edx, 6
                                                                                        jne   .Lx455_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx455_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx455_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx455_51
                                                                                        jmp   .Lx455_52
.Lx455_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx455_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx455_53
.Lx455_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx455_54
.Lx455_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx455_54
.Lx455_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx455_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n256_lit_string_α
                                                                                        jmp   n257_var_ref_α
n255_op11_β:
                                                                                        jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n258_op11_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "rt2_bad"
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4144]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn460:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn460]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n260_lit_string_α
n258_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4160]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n261_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n262_op11_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n261_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn465:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n256_lit_string_α
                                                                                        jmp   n263_lit_string_α
n261_op11_β:
                                                                                        jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n262_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn467:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn467]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n264_var_ref_α
n262_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n265_op11_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "rt2_shared_ok"
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4128]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n266_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n265_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn472:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n260_lit_string_α
n265_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n266_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn474:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn474]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n267_lit_string_α
n266_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n268_op11_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n268_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn477:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn477]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n269_lit_string_α
n268_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n270_op11_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn480:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n271_call_proc_staged_α
n270_op11_β:
                                                                                        jmp   n241_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx482_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx482_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx482_3]
                        lea              rdx, [rip + .Lx482_4]
                                                                                        jmp   rax
.Lx482_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx482_2
.Lx482_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx482_2
.Lx482_1:
                        call             rt_faildescr@PLT
.Lx482_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n272_move_label_α
n271_call_proc_staged_β:
                                                                                        jmp   n241_call_proc_staged_β
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n272_move_label_α:
                        lea              rax, [rip + n271_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n273_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n273_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n273_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4432]
                        add              rsp, 4440
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4432]
                        add              rsp, 4440
                        ret
                        .section         .note.GNU-stack,"",@progbits
