                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_differ$2F2_α
proc_differ$2F2_α:
                        .global          proc_differ$2F2_α
                        .global          proc_differ$2F2_β
                        .global          proc_differ$2F2_γ
                        .global          proc_differ$2F2_ω
                        sub              rsp, 592
                        mov              [rsp + 568], rcx
                        mov              [rsp + 576], rdx
                        mov              [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 496
                        mov              edx, 560
                        call             rt_jmp_frame_lexprep2@PLT
proc_differ$2F2_α_body:
                        lea              rax, [rip + n16_suspend_β]
                        mov              qword ptr [rbp + 496], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx17_101
.Lx17_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx17_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
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
.Lx22_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx22_44
                        cmp              eax, 13
                                                                                        jne   .Lx22_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx22_44
                                                                                        jmp   .Lx22_45
.Lx22_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx22_53
                        cmp              eax, 99
                                                                                        je    .Lx22_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx22_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx22_49
                        cmp              edx, 14
                                                                                        je    .Lx22_53
                                                                                        jmp   .Lx22_52
.Lx22_49:
                        cmp              edx, 14
                                                                                        je    .Lx22_52
                        cmp              ecx, 7
                                                                                        je    .Lx22_53
                        cmp              edx, 7
                                                                                        je    .Lx22_53
                        cmp              ecx, 6
                                                                                        jne   .Lx22_50
                        cmp              edx, 6
                                                                                        jne   .Lx22_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx22_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx22_54
.Lx22_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx22_54:
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
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_differ$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_differ$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n8_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
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
.Lx30_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx30_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_41
                        cmp              esi, 1
                                                                                        jne   .Lx30_55
                        mov              r8, rax
                                                                                        jmp   .Lx30_40
.Lx30_55:
                        cmp              esi, 2
                                                                                        jne   .Lx30_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx30_41
                        mov              r8, rax
                                                                                        jmp   .Lx30_40
.Lx30_56:
                        cmp              eax, 13
                                                                                        jne   .Lx30_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_41
                        cmp              rax, r8
                                                                                        je    .Lx30_41
                        mov              r8, rax
                                                                                        jmp   .Lx30_40
.Lx30_41:
                        lea              r9, [rbp + 368]
.Lx30_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx30_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_43
                        cmp              esi, 1
                                                                                        jne   .Lx30_57
                        mov              r9, rax
                                                                                        jmp   .Lx30_42
.Lx30_57:
                        cmp              esi, 2
                                                                                        jne   .Lx30_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx30_43
                        mov              r9, rax
                                                                                        jmp   .Lx30_42
.Lx30_58:
                        cmp              eax, 13
                                                                                        jne   .Lx30_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_43
                        cmp              rax, r9
                                                                                        je    .Lx30_43
                        mov              r9, rax
                                                                                        jmp   .Lx30_42
.Lx30_43:
                        cmp              r8, r9
                                                                                        je    .Lx30_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx30_44
                        cmp              eax, 99
                                                                                        je    .Lx30_44
                        cmp              eax, 13
                                                                                        jne   .Lx30_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx30_44
                                                                                        jmp   .Lx30_45
.Lx30_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx30_53
                        cmp              eax, 99
                                                                                        je    .Lx30_53
                        cmp              eax, 13
                                                                                        jne   .Lx30_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx30_53
                                                                                        jmp   .Lx30_46
.Lx30_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx30_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx30_53
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
                                                                                        jmp   .Lx30_51
.Lx30_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx30_47
                        cmp              eax, 99
                                                                                        je    .Lx30_47
                        cmp              eax, 13
                                                                                        jne   .Lx30_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx30_47
                                                                                        jmp   .Lx30_48
.Lx30_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx30_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx30_53
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
                                                                                        jmp   .Lx30_51
.Lx30_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx30_49
                        cmp              edx, 14
                                                                                        je    .Lx30_53
                                                                                        jmp   .Lx30_52
.Lx30_49:
                        cmp              edx, 14
                                                                                        je    .Lx30_52
                        cmp              ecx, 7
                                                                                        je    .Lx30_53
                        cmp              edx, 7
                                                                                        je    .Lx30_53
                        cmp              ecx, 6
                                                                                        jne   .Lx30_50
                        cmp              edx, 6
                                                                                        jne   .Lx30_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx30_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx30_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx30_51
                                                                                        jmp   .Lx30_52
.Lx30_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx30_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx30_53
.Lx30_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx30_54
.Lx30_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx30_54
.Lx30_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx30_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_op19_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op19_α:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx34_44
                        cmp              eax, 13
                                                                                        jne   .Lx34_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx34_44
                                                                                        jmp   .Lx34_45
.Lx34_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_53
                        cmp              eax, 99
                                                                                        je    .Lx34_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx34_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx34_49
                        cmp              edx, 14
                                                                                        je    .Lx34_53
                                                                                        jmp   .Lx34_52
.Lx34_49:
                        cmp              edx, 14
                                                                                        je    .Lx34_52
                        cmp              ecx, 7
                                                                                        je    .Lx34_53
                        cmp              edx, 7
                                                                                        je    .Lx34_53
                        cmp              ecx, 6
                                                                                        jne   .Lx34_50
                        cmp              edx, 6
                                                                                        jne   .Lx34_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx34_54
.Lx34_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx34_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
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
                                                                                        je    proc_differ$2F2_ω
                                                                                        jmp   proc_differ$2F2_ω
n12_op11_β:
                                                                                        jmp   proc_differ$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
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
.Lx40_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx40_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_41
                        cmp              esi, 1
                                                                                        jne   .Lx40_55
                        mov              r8, rax
                                                                                        jmp   .Lx40_40
.Lx40_55:
                        cmp              esi, 2
                                                                                        jne   .Lx40_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx40_41
                        mov              r8, rax
                                                                                        jmp   .Lx40_40
.Lx40_56:
                        cmp              eax, 13
                                                                                        jne   .Lx40_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_41
                        cmp              rax, r8
                                                                                        je    .Lx40_41
                        mov              r8, rax
                                                                                        jmp   .Lx40_40
.Lx40_41:
                        lea              r9, [rbp + 160]
.Lx40_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx40_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_43
                        cmp              esi, 1
                                                                                        jne   .Lx40_57
                        mov              r9, rax
                                                                                        jmp   .Lx40_42
.Lx40_57:
                        cmp              esi, 2
                                                                                        jne   .Lx40_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx40_43
                        mov              r9, rax
                                                                                        jmp   .Lx40_42
.Lx40_58:
                        cmp              eax, 13
                                                                                        jne   .Lx40_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_43
                        cmp              rax, r9
                                                                                        je    .Lx40_43
                        mov              r9, rax
                                                                                        jmp   .Lx40_42
.Lx40_43:
                        cmp              r8, r9
                                                                                        je    .Lx40_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx40_44
                        cmp              eax, 99
                                                                                        je    .Lx40_44
                        cmp              eax, 13
                                                                                        jne   .Lx40_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx40_44
                                                                                        jmp   .Lx40_45
.Lx40_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx40_53
                        cmp              eax, 99
                                                                                        je    .Lx40_53
                        cmp              eax, 13
                                                                                        jne   .Lx40_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx40_53
                                                                                        jmp   .Lx40_46
.Lx40_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx40_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx40_53
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
                                                                                        jmp   .Lx40_51
.Lx40_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx40_47
                        cmp              eax, 99
                                                                                        je    .Lx40_47
                        cmp              eax, 13
                                                                                        jne   .Lx40_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx40_47
                                                                                        jmp   .Lx40_48
.Lx40_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx40_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx40_53
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
                                                                                        jmp   .Lx40_51
.Lx40_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx40_49
                        cmp              edx, 14
                                                                                        je    .Lx40_53
                                                                                        jmp   .Lx40_52
.Lx40_49:
                        cmp              edx, 14
                                                                                        je    .Lx40_52
                        cmp              ecx, 7
                                                                                        je    .Lx40_53
                        cmp              edx, 7
                                                                                        je    .Lx40_53
                        cmp              ecx, 6
                                                                                        jne   .Lx40_50
                        cmp              edx, 6
                                                                                        jne   .Lx40_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx40_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx40_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx40_51
                                                                                        jmp   .Lx40_52
.Lx40_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx40_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx40_53
.Lx40_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx40_54
.Lx40_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx40_54
.Lx40_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx40_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n16_suspend_α
n15_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_suspend_α:
                        lea              rax, [rip + n16_suspend_β]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_differ$2F2_γ
n16_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_β:
                                                                                        jmp   qword ptr [rbp + 496]
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_differ$2F2_res]
                        push             rax
                        mov              rax, [rbp + 568]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F2_ω:
                        mov              rax, [rbp + 576]
                        lea              rsp, [rbp + 592]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F1_α
proc_$disj1$2F1_α:
                        .global          proc_$disj1$2F1_α
                        .global          proc_$disj1$2F1_β
                        .global          proc_$disj1$2F1_γ
                        .global          proc_$disj1$2F1_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj1$2F1_α_body:
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx60_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx60_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx60_101
.Lx60_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx60_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   n44_var_ref_α
n43_op11_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
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
.Lx65_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_41
                        cmp              esi, 1
                                                                                        jne   .Lx65_55
                        mov              r8, rax
                                                                                        jmp   .Lx65_40
.Lx65_55:
                        cmp              esi, 2
                                                                                        jne   .Lx65_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_41
                        mov              r8, rax
                                                                                        jmp   .Lx65_40
.Lx65_56:
                        cmp              eax, 13
                                                                                        jne   .Lx65_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_41
                        cmp              rax, r8
                                                                                        je    .Lx65_41
                        mov              r8, rax
                                                                                        jmp   .Lx65_40
.Lx65_41:
                        lea              r9, [rbp + 432]
.Lx65_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx65_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_43
                        cmp              esi, 1
                                                                                        jne   .Lx65_57
                        mov              r9, rax
                                                                                        jmp   .Lx65_42
.Lx65_57:
                        cmp              esi, 2
                                                                                        jne   .Lx65_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_43
                        mov              r9, rax
                                                                                        jmp   .Lx65_42
.Lx65_58:
                        cmp              eax, 13
                                                                                        jne   .Lx65_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_43
                        cmp              rax, r9
                                                                                        je    .Lx65_43
                        mov              r9, rax
                                                                                        jmp   .Lx65_42
.Lx65_43:
                        cmp              r8, r9
                                                                                        je    .Lx65_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_44
                        cmp              eax, 99
                                                                                        je    .Lx65_44
                        cmp              eax, 13
                                                                                        jne   .Lx65_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx65_44
                                                                                        jmp   .Lx65_45
.Lx65_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_53
                        cmp              eax, 99
                                                                                        je    .Lx65_53
                        cmp              eax, 13
                                                                                        jne   .Lx65_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx65_53
                                                                                        jmp   .Lx65_46
.Lx65_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx65_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx65_53
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
                                                                                        jmp   .Lx65_51
.Lx65_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_47
                        cmp              eax, 99
                                                                                        je    .Lx65_47
                        cmp              eax, 13
                                                                                        jne   .Lx65_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx65_47
                                                                                        jmp   .Lx65_48
.Lx65_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx65_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx65_53
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
                                                                                        jmp   .Lx65_51
.Lx65_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx65_49
                        cmp              edx, 14
                                                                                        je    .Lx65_53
                                                                                        jmp   .Lx65_52
.Lx65_49:
                        cmp              edx, 14
                                                                                        je    .Lx65_52
                        cmp              ecx, 7
                                                                                        je    .Lx65_53
                        cmp              edx, 7
                                                                                        je    .Lx65_53
                        cmp              ecx, 6
                                                                                        jne   .Lx65_50
                        cmp              edx, 6
                                                                                        jne   .Lx65_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx65_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx65_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx65_51
                                                                                        jmp   .Lx65_52
.Lx65_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx65_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx65_53
.Lx65_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx65_54
.Lx65_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx65_54
.Lx65_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx65_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n48_op11_α
                                                                                        jmp   n47_var_ref_α
n46_op11_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   n50_var_ref_α
n48_op11_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n51_op11_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "math"
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx72_2]
                                                                                        jmp   .Lx72_3
.Lx72_2:
                        .quad            .Lx72_2_s
.Lx72_2_s:
                        .string          "math"
.Lx72_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n48_op11_α
                                                                                        jmp   n53_suspend_α
n51_op11_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_suspend_α:
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F1_γ
n53_suspend_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx77_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx77_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        cmp              esi, 1
                                                                                        jne   .Lx77_55
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_55:
                        cmp              esi, 2
                                                                                        jne   .Lx77_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_56:
                        cmp              eax, 13
                                                                                        jne   .Lx77_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        cmp              rax, r8
                                                                                        je    .Lx77_41
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_41:
                        lea              r9, [rbp + 224]
.Lx77_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx77_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        cmp              esi, 1
                                                                                        jne   .Lx77_57
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_57:
                        cmp              esi, 2
                                                                                        jne   .Lx77_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_58:
                        cmp              eax, 13
                                                                                        jne   .Lx77_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        cmp              rax, r9
                                                                                        je    .Lx77_43
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_43:
                        cmp              r8, r9
                                                                                        je    .Lx77_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_44
                        cmp              eax, 99
                                                                                        je    .Lx77_44
                        cmp              eax, 13
                                                                                        jne   .Lx77_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx77_44
                                                                                        jmp   .Lx77_45
.Lx77_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_53
                        cmp              eax, 99
                                                                                        je    .Lx77_53
                        cmp              eax, 13
                                                                                        jne   .Lx77_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx77_53
                                                                                        jmp   .Lx77_46
.Lx77_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx77_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx77_53
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
                                                                                        jmp   .Lx77_51
.Lx77_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_47
                        cmp              eax, 99
                                                                                        je    .Lx77_47
                        cmp              eax, 13
                                                                                        jne   .Lx77_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx77_47
                                                                                        jmp   .Lx77_48
.Lx77_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx77_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx77_53
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
                                                                                        jmp   .Lx77_51
.Lx77_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx77_49
                        cmp              edx, 14
                                                                                        je    .Lx77_53
                                                                                        jmp   .Lx77_52
.Lx77_49:
                        cmp              edx, 14
                                                                                        je    .Lx77_52
                        cmp              ecx, 7
                                                                                        je    .Lx77_53
                        cmp              edx, 7
                                                                                        je    .Lx77_53
                        cmp              ecx, 6
                                                                                        jne   .Lx77_50
                        cmp              edx, 6
                                                                                        jne   .Lx77_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx77_51
                                                                                        jmp   .Lx77_52
.Lx77_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx77_53
.Lx77_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx77_54
.Lx77_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx77_54
.Lx77_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx77_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n55_var_ref_α
n54_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
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
                                                                                        je    proc_$disj1$2F1_ω
                                                                                        jmp   proc_$disj1$2F1_ω
n56_op11_β:
                                                                                        jmp   proc_$disj1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n58_op11_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "history"
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx82_2]
                                                                                        jmp   .Lx82_3
.Lx82_2:
                        .quad            .Lx82_2_s
.Lx82_2_s:
                        .string          "history"
.Lx82_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n59_suspend_α
n58_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_suspend_α:
                        lea              rax, [rip + n59_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F1_γ
n59_suspend_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj1$2F1_res]
                        push             rax
                        mov              rax, [rbp + 520]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F1_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 3568
                        mov              [rsp + 3544], rcx
                        mov              [rsp + 3552], rdx
                        mov              [rsp + 3560], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3424
                        mov              edx, 3536
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx185_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx185_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx185_101
.Lx185_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx185_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n86_var_ref_α
n85_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α:
                        mov              qword ptr [rbp + 3376], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_20
                        mov              rax, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx189_21
.Lx189_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        call             rt_arg_stage@PLT
.Lx189_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx189_1
                        lea              rcx, [rip + .Lx189_3]
                        lea              rdx, [rip + .Lx189_4]
                                                                                        jmp   rax
.Lx189_3:
                        mov              qword ptr [rbp + 3384], rsp
                        mov              rax, qword ptr [rbp + 3376]
                        test             rax, rax
                                                                                        jne   .Lx189_5
                        mov              qword ptr [rbp + 3376], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx189_2
.Lx189_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx189_2
.Lx189_4:
                        mov              rax, qword ptr [rbp + 3376]
                        test             rax, rax
                                                                                        jne   .Lx189_6
                        mov              qword ptr [rbp + 3376], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx189_2
.Lx189_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx189_2
.Lx189_1:
                        call             rt_faildescr@PLT
.Lx189_2:
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n89_op11_α
                                                                                        jmp   n88_var_ref_α
n87_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3384]
                                                                                        jmp   qword ptr [rsp]
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "subject/1"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n90_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
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
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   proc_puzzle$2F0_ω
n89_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n90_call_proc_staged_α:
                        mov              qword ptr [rbp + 3296], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx194_20
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx194_21
.Lx194_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        call             rt_arg_stage@PLT
.Lx194_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx194_1
                        lea              rcx, [rip + .Lx194_3]
                        lea              rdx, [rip + .Lx194_4]
                                                                                        jmp   rax
.Lx194_3:
                        mov              qword ptr [rbp + 3304], rsp
                        mov              rax, qword ptr [rbp + 3296]
                        test             rax, rax
                                                                                        jne   .Lx194_5
                        mov              qword ptr [rbp + 3296], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx194_2
.Lx194_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx194_2
.Lx194_4:
                        mov              rax, qword ptr [rbp + 3296]
                        test             rax, rax
                                                                                        jne   .Lx194_6
                        mov              qword ptr [rbp + 3296], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx194_2
.Lx194_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx194_2
.Lx194_1:
                        call             rt_faildescr@PLT
.Lx194_2:
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n87_call_proc_staged_β
                                                                                        jmp   n91_var_ref_α
n90_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3304]
                                                                                        jmp   qword ptr [rsp]
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "subject/1"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n92_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        mov              qword ptr [rbp + 3216], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx198_20
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx198_21
.Lx198_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        call             rt_arg_stage@PLT
.Lx198_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx198_1
                        lea              rcx, [rip + .Lx198_3]
                        lea              rdx, [rip + .Lx198_4]
                                                                                        jmp   rax
.Lx198_3:
                        mov              qword ptr [rbp + 3224], rsp
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx198_5
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx198_2
.Lx198_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx198_2
.Lx198_4:
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx198_6
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx198_2
.Lx198_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx198_2
.Lx198_1:
                        call             rt_faildescr@PLT
.Lx198_2:
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n90_call_proc_staged_β
                                                                                        jmp   n93_var_ref_α
n92_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3224]
                                                                                        jmp   qword ptr [rsp]
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "subject/1"
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n94_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        mov              qword ptr [rbp + 3136], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx202_20
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx202_21
.Lx202_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        call             rt_arg_stage@PLT
.Lx202_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx202_1
                        lea              rcx, [rip + .Lx202_3]
                        lea              rdx, [rip + .Lx202_4]
                                                                                        jmp   rax
.Lx202_3:
                        mov              qword ptr [rbp + 3144], rsp
                        mov              rax, qword ptr [rbp + 3136]
                        test             rax, rax
                                                                                        jne   .Lx202_5
                        mov              qword ptr [rbp + 3136], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx202_2
.Lx202_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx202_2
.Lx202_4:
                        mov              rax, qword ptr [rbp + 3136]
                        test             rax, rax
                                                                                        jne   .Lx202_6
                        mov              qword ptr [rbp + 3136], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx202_2
.Lx202_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx202_2
.Lx202_1:
                        call             rt_faildescr@PLT
.Lx202_2:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n92_call_proc_staged_β
                                                                                        jmp   n95_var_ref_α
n94_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3144]
                                                                                        jmp   qword ptr [rsp]
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "subject/1"
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n96_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_proc_staged_α:
                        mov              qword ptr [rbp + 3056], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx206_20
                        mov              rax, qword ptr [rbp + 3088]
                        mov              rdx, qword ptr [rbp + 3096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx206_21
.Lx206_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3088]
                        mov              rdx, qword ptr [rbp + 3096]
                        call             rt_arg_stage@PLT
.Lx206_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx206_1
                        lea              rcx, [rip + .Lx206_3]
                        lea              rdx, [rip + .Lx206_4]
                                                                                        jmp   rax
.Lx206_3:
                        mov              qword ptr [rbp + 3064], rsp
                        mov              rax, qword ptr [rbp + 3056]
                        test             rax, rax
                                                                                        jne   .Lx206_5
                        mov              qword ptr [rbp + 3056], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx206_2
.Lx206_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx206_2
.Lx206_4:
                        mov              rax, qword ptr [rbp + 3056]
                        test             rax, rax
                                                                                        jne   .Lx206_6
                        mov              qword ptr [rbp + 3056], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx206_2
.Lx206_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx206_2
.Lx206_1:
                        call             rt_faildescr@PLT
.Lx206_2:
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n94_call_proc_staged_β
                                                                                        jmp   n97_var_ref_α
n96_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3064]
                                                                                        jmp   qword ptr [rsp]
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "subject/1"
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n98_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α:
                        mov              qword ptr [rbp + 2976], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_20
                        mov              rax, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx210_21
.Lx210_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
                        call             rt_arg_stage@PLT
.Lx210_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx210_1
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4]
                                                                                        jmp   rax
.Lx210_3:
                        mov              qword ptr [rbp + 2984], rsp
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx210_5
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_4:
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx210_6
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_1:
                        call             rt_faildescr@PLT
.Lx210_2:
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n96_call_proc_staged_β
                                                                                        jmp   n99_var_ref_α
n98_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2984]
                                                                                        jmp   qword ptr [rsp]
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "subject/1"
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n101_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        mov              qword ptr [rbp + 2880], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx216_20
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx216_21
.Lx216_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        call             rt_arg_stage@PLT
.Lx216_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx216_22
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx216_23
.Lx216_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        call             rt_arg_stage@PLT
.Lx216_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx216_1
                        lea              rcx, [rip + .Lx216_3]
                        lea              rdx, [rip + .Lx216_4]
                                                                                        jmp   rax
.Lx216_3:
                        mov              qword ptr [rbp + 2888], rsp
                        mov              rax, qword ptr [rbp + 2880]
                        test             rax, rax
                                                                                        jne   .Lx216_5
                        mov              qword ptr [rbp + 2880], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx216_2
.Lx216_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx216_2
.Lx216_4:
                        mov              rax, qword ptr [rbp + 2880]
                        test             rax, rax
                                                                                        jne   .Lx216_6
                        mov              qword ptr [rbp + 2880], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx216_2
.Lx216_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx216_2
.Lx216_1:
                        call             rt_faildescr@PLT
.Lx216_2:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n98_call_proc_staged_β
                                                                                        jmp   n102_var_ref_α
n101_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2888]
                                                                                        jmp   qword ptr [rsp]
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n103_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        mov              qword ptr [rbp + 2768], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx222_20
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx222_21
.Lx222_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        call             rt_arg_stage@PLT
.Lx222_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx222_22
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx222_23
.Lx222_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        call             rt_arg_stage@PLT
.Lx222_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx222_1
                        lea              rcx, [rip + .Lx222_3]
                        lea              rdx, [rip + .Lx222_4]
                                                                                        jmp   rax
.Lx222_3:
                        mov              qword ptr [rbp + 2776], rsp
                        mov              rax, qword ptr [rbp + 2768]
                        test             rax, rax
                                                                                        jne   .Lx222_5
                        mov              qword ptr [rbp + 2768], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx222_2
.Lx222_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx222_2
.Lx222_4:
                        mov              rax, qword ptr [rbp + 2768]
                        test             rax, rax
                                                                                        jne   .Lx222_6
                        mov              qword ptr [rbp + 2768], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx222_2
.Lx222_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx222_2
.Lx222_1:
                        call             rt_faildescr@PLT
.Lx222_2:
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n101_call_proc_staged_β
                                                                                        jmp   n105_var_ref_α
n104_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2776]
                                                                                        jmp   qword ptr [rsp]
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n106_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n107_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        mov              qword ptr [rbp + 2656], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_20
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx228_21
.Lx228_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        call             rt_arg_stage@PLT
.Lx228_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_22
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx228_23
.Lx228_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        call             rt_arg_stage@PLT
.Lx228_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx228_1
                        lea              rcx, [rip + .Lx228_3]
                        lea              rdx, [rip + .Lx228_4]
                                                                                        jmp   rax
.Lx228_3:
                        mov              qword ptr [rbp + 2664], rsp
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx228_5
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx228_2
.Lx228_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx228_2
.Lx228_4:
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx228_6
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx228_2
.Lx228_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx228_2
.Lx228_1:
                        call             rt_faildescr@PLT
.Lx228_2:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n104_call_proc_staged_β
                                                                                        jmp   n108_var_ref_α
n107_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2664]
                                                                                        jmp   qword ptr [rsp]
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n109_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n110_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        mov              qword ptr [rbp + 2544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx234_20
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx234_21
.Lx234_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        call             rt_arg_stage@PLT
.Lx234_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx234_22
                        mov              rax, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx234_23
.Lx234_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        call             rt_arg_stage@PLT
.Lx234_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx234_1
                        lea              rcx, [rip + .Lx234_3]
                        lea              rdx, [rip + .Lx234_4]
                                                                                        jmp   rax
.Lx234_3:
                        mov              qword ptr [rbp + 2552], rsp
                        mov              rax, qword ptr [rbp + 2544]
                        test             rax, rax
                                                                                        jne   .Lx234_5
                        mov              qword ptr [rbp + 2544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx234_2
.Lx234_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx234_2
.Lx234_4:
                        mov              rax, qword ptr [rbp + 2544]
                        test             rax, rax
                                                                                        jne   .Lx234_6
                        mov              qword ptr [rbp + 2544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx234_2
.Lx234_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx234_2
.Lx234_1:
                        call             rt_faildescr@PLT
.Lx234_2:
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n107_call_proc_staged_β
                                                                                        jmp   n111_var_ref_α
n110_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2552]
                                                                                        jmp   qword ptr [rsp]
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n113_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        mov              qword ptr [rbp + 2432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx240_20
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx240_21
.Lx240_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        call             rt_arg_stage@PLT
.Lx240_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx240_22
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx240_23
.Lx240_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        call             rt_arg_stage@PLT
.Lx240_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx240_1
                        lea              rcx, [rip + .Lx240_3]
                        lea              rdx, [rip + .Lx240_4]
                                                                                        jmp   rax
.Lx240_3:
                        mov              qword ptr [rbp + 2440], rsp
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax
                                                                                        jne   .Lx240_5
                        mov              qword ptr [rbp + 2432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx240_2
.Lx240_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx240_2
.Lx240_4:
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax
                                                                                        jne   .Lx240_6
                        mov              qword ptr [rbp + 2432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx240_2
.Lx240_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx240_2
.Lx240_1:
                        call             rt_faildescr@PLT
.Lx240_2:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n110_call_proc_staged_β
                                                                                        jmp   n114_var_ref_α
n113_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2440]
                                                                                        jmp   qword ptr [rsp]
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n116_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        mov              qword ptr [rbp + 2320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx246_20
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx246_21
.Lx246_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        call             rt_arg_stage@PLT
.Lx246_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx246_22
                        mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx246_23
.Lx246_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        call             rt_arg_stage@PLT
.Lx246_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx246_1
                        lea              rcx, [rip + .Lx246_3]
                        lea              rdx, [rip + .Lx246_4]
                                                                                        jmp   rax
.Lx246_3:
                        mov              qword ptr [rbp + 2328], rsp
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx246_5
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx246_2
.Lx246_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx246_2
.Lx246_4:
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx246_6
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx246_2
.Lx246_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx246_2
.Lx246_1:
                        call             rt_faildescr@PLT
.Lx246_2:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n113_call_proc_staged_β
                                                                                        jmp   n117_var_ref_α
n116_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2328]
                                                                                        jmp   qword ptr [rsp]
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n119_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        mov              qword ptr [rbp + 2208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx252_20
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx252_21
.Lx252_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        call             rt_arg_stage@PLT
.Lx252_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx252_22
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx252_23
.Lx252_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx252_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx252_1
                        lea              rcx, [rip + .Lx252_3]
                        lea              rdx, [rip + .Lx252_4]
                                                                                        jmp   rax
.Lx252_3:
                        mov              qword ptr [rbp + 2216], rsp
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx252_5
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx252_2
.Lx252_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx252_2
.Lx252_4:
                        mov              rax, qword ptr [rbp + 2208]
                        test             rax, rax
                                                                                        jne   .Lx252_6
                        mov              qword ptr [rbp + 2208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx252_2
.Lx252_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx252_2
.Lx252_1:
                        call             rt_faildescr@PLT
.Lx252_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n120_var_ref_α
n119_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2216]
                                                                                        jmp   qword ptr [rsp]
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n121_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n122_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        mov              qword ptr [rbp + 2096], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx258_20
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx258_21
.Lx258_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        call             rt_arg_stage@PLT
.Lx258_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx258_22
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx258_23
.Lx258_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        call             rt_arg_stage@PLT
.Lx258_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx258_1
                        lea              rcx, [rip + .Lx258_3]
                        lea              rdx, [rip + .Lx258_4]
                                                                                        jmp   rax
.Lx258_3:
                        mov              qword ptr [rbp + 2104], rsp
                        mov              rax, qword ptr [rbp + 2096]
                        test             rax, rax
                                                                                        jne   .Lx258_5
                        mov              qword ptr [rbp + 2096], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx258_2
.Lx258_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx258_2
.Lx258_4:
                        mov              rax, qword ptr [rbp + 2096]
                        test             rax, rax
                                                                                        jne   .Lx258_6
                        mov              qword ptr [rbp + 2096], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx258_2
.Lx258_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx258_2
.Lx258_1:
                        call             rt_faildescr@PLT
.Lx258_2:
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n119_call_proc_staged_β
                                                                                        jmp   n123_var_ref_α
n122_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2104]
                                                                                        jmp   qword ptr [rsp]
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              qword ptr [rbp + 1984], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx264_20
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx264_21
.Lx264_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_arg_stage@PLT
.Lx264_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx264_22
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx264_23
.Lx264_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        call             rt_arg_stage@PLT
.Lx264_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx264_1
                        lea              rcx, [rip + .Lx264_3]
                        lea              rdx, [rip + .Lx264_4]
                                                                                        jmp   rax
.Lx264_3:
                        mov              qword ptr [rbp + 1992], rsp
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx264_5
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx264_2
.Lx264_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx264_2
.Lx264_4:
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx264_6
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx264_2
.Lx264_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx264_2
.Lx264_1:
                        call             rt_faildescr@PLT
.Lx264_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n122_call_proc_staged_β
                                                                                        jmp   n126_var_ref_α
n125_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1992]
                                                                                        jmp   qword ptr [rsp]
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n127_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n128_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        mov              qword ptr [rbp + 1872], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_20
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx270_21
.Lx270_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx270_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_22
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx270_23
.Lx270_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        call             rt_arg_stage@PLT
.Lx270_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx270_1
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4]
                                                                                        jmp   rax
.Lx270_3:
                        mov              qword ptr [rbp + 1880], rsp
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax
                                                                                        jne   .Lx270_5
                        mov              qword ptr [rbp + 1872], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_4:
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax
                                                                                        jne   .Lx270_6
                        mov              qword ptr [rbp + 1872], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_1:
                        call             rt_faildescr@PLT
.Lx270_2:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n125_call_proc_staged_β
                                                                                        jmp   n129_var_ref_α
n128_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1880]
                                                                                        jmp   qword ptr [rsp]
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n131_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        mov              qword ptr [rbp + 1760], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_20
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx276_21
.Lx276_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        call             rt_arg_stage@PLT
.Lx276_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_22
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx276_23
.Lx276_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        call             rt_arg_stage@PLT
.Lx276_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx276_1
                        lea              rcx, [rip + .Lx276_3]
                        lea              rdx, [rip + .Lx276_4]
                                                                                        jmp   rax
.Lx276_3:
                        mov              qword ptr [rbp + 1768], rsp
                        mov              rax, qword ptr [rbp + 1760]
                        test             rax, rax
                                                                                        jne   .Lx276_5
                        mov              qword ptr [rbp + 1760], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx276_2
.Lx276_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx276_2
.Lx276_4:
                        mov              rax, qword ptr [rbp + 1760]
                        test             rax, rax
                                                                                        jne   .Lx276_6
                        mov              qword ptr [rbp + 1760], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx276_2
.Lx276_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx276_2
.Lx276_1:
                        call             rt_faildescr@PLT
.Lx276_2:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n128_call_proc_staged_β
                                                                                        jmp   n132_var_ref_α
n131_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1768]
                                                                                        jmp   qword ptr [rsp]
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n134_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              qword ptr [rbp + 1648], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx282_20
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx282_21
.Lx282_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        call             rt_arg_stage@PLT
.Lx282_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx282_22
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx282_23
.Lx282_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx282_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx282_1
                        lea              rcx, [rip + .Lx282_3]
                        lea              rdx, [rip + .Lx282_4]
                                                                                        jmp   rax
.Lx282_3:
                        mov              qword ptr [rbp + 1656], rsp
                        mov              rax, qword ptr [rbp + 1648]
                        test             rax, rax
                                                                                        jne   .Lx282_5
                        mov              qword ptr [rbp + 1648], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_4:
                        mov              rax, qword ptr [rbp + 1648]
                        test             rax, rax
                                                                                        jne   .Lx282_6
                        mov              qword ptr [rbp + 1648], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_1:
                        call             rt_faildescr@PLT
.Lx282_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n131_call_proc_staged_β
                                                                                        jmp   n135_var_ref_α
n134_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1656]
                                                                                        jmp   qword ptr [rsp]
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n137_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              qword ptr [rbp + 1536], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx288_20
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx288_21
.Lx288_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        call             rt_arg_stage@PLT
.Lx288_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx288_22
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx288_23
.Lx288_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_arg_stage@PLT
.Lx288_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx288_1
                        lea              rcx, [rip + .Lx288_3]
                        lea              rdx, [rip + .Lx288_4]
                                                                                        jmp   rax
.Lx288_3:
                        mov              qword ptr [rbp + 1544], rsp
                        mov              rax, qword ptr [rbp + 1536]
                        test             rax, rax
                                                                                        jne   .Lx288_5
                        mov              qword ptr [rbp + 1536], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx288_2
.Lx288_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx288_2
.Lx288_4:
                        mov              rax, qword ptr [rbp + 1536]
                        test             rax, rax
                                                                                        jne   .Lx288_6
                        mov              qword ptr [rbp + 1536], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx288_2
.Lx288_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx288_2
.Lx288_1:
                        call             rt_faildescr@PLT
.Lx288_2:
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n134_call_proc_staged_β
                                                                                        jmp   n138_var_ref_α
n137_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1544]
                                                                                        jmp   qword ptr [rsp]
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n140_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        mov              qword ptr [rbp + 1424], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx294_20
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx294_21
.Lx294_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        call             rt_arg_stage@PLT
.Lx294_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx294_22
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx294_23
.Lx294_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        call             rt_arg_stage@PLT
.Lx294_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx294_1
                        lea              rcx, [rip + .Lx294_3]
                        lea              rdx, [rip + .Lx294_4]
                                                                                        jmp   rax
.Lx294_3:
                        mov              qword ptr [rbp + 1432], rsp
                        mov              rax, qword ptr [rbp + 1424]
                        test             rax, rax
                                                                                        jne   .Lx294_5
                        mov              qword ptr [rbp + 1424], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx294_2
.Lx294_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx294_2
.Lx294_4:
                        mov              rax, qword ptr [rbp + 1424]
                        test             rax, rax
                                                                                        jne   .Lx294_6
                        mov              qword ptr [rbp + 1424], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx294_2
.Lx294_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx294_2
.Lx294_1:
                        call             rt_faildescr@PLT
.Lx294_2:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n137_call_proc_staged_β
                                                                                        jmp   n141_var_ref_α
n140_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1432]
                                                                                        jmp   qword ptr [rsp]
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n143_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        mov              qword ptr [rbp + 1312], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx300_20
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx300_21
.Lx300_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        call             rt_arg_stage@PLT
.Lx300_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx300_22
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx300_23
.Lx300_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        call             rt_arg_stage@PLT
.Lx300_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx300_1
                        lea              rcx, [rip + .Lx300_3]
                        lea              rdx, [rip + .Lx300_4]
                                                                                        jmp   rax
.Lx300_3:
                        mov              qword ptr [rbp + 1320], rsp
                        mov              rax, qword ptr [rbp + 1312]
                        test             rax, rax
                                                                                        jne   .Lx300_5
                        mov              qword ptr [rbp + 1312], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx300_2
.Lx300_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx300_2
.Lx300_4:
                        mov              rax, qword ptr [rbp + 1312]
                        test             rax, rax
                                                                                        jne   .Lx300_6
                        mov              qword ptr [rbp + 1312], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx300_2
.Lx300_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx300_2
.Lx300_1:
                        call             rt_faildescr@PLT
.Lx300_2:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n140_call_proc_staged_β
                                                                                        jmp   n144_var_ref_α
n143_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1320]
                                                                                        jmp   qword ptr [rsp]
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n146_op11_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "english"
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        mov              rsi, qword ptr [rip + .Lx304_2]
                                                                                        jmp   .Lx304_3
.Lx304_2:
                        .quad            .Lx304_2_s
.Lx304_2_s:
                        .string          "english"
.Lx304_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n143_call_proc_staged_β
                                                                                        jmp   n147_var_ref_α
n146_op11_β:
                                                                                        jmp   n143_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n149_op11_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "french"
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lx308_2]
                                                                                        jmp   .Lx308_3
.Lx308_2:
                        .quad            .Lx308_2_s
.Lx308_2_s:
                        .string          "french"
.Lx308_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n150_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n149_op11_β:
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n152_op11_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "french"
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx312_2]
                                                                                        jmp   .Lx312_3
.Lx312_2:
                        .quad            .Lx312_2_s
.Lx312_2_s:
                        .string          "french"
.Lx312_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n153_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n152_op11_β:
                                                                                        jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n154_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n155_op11_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "math"
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              rsi, qword ptr [rip + .Lx316_2]
                                                                                        jmp   .Lx316_3
.Lx316_2:
                        .quad            .Lx316_2_s
.Lx316_2_s:
                        .string          "math"
.Lx316_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n156_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n155_op11_β:
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n158_op11_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "history"
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              rsi, qword ptr [rip + .Lx320_2]
                                                                                        jmp   .Lx320_3
.Lx320_2:
                        .quad            .Lx320_2_s
.Lx320_2_s:
                        .string          "history"
.Lx320_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n159_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n158_op11_β:
                                                                                        jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n161_op11_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "math"
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              rsi, qword ptr [rip + .Lx324_2]
                                                                                        jmp   .Lx324_3
.Lx324_2:
                        .quad            .Lx324_2_s
.Lx324_2_s:
                        .string          "math"
.Lx324_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n162_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n161_op11_β:
                                                                                        jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n164_op11_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "history"
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              rsi, qword ptr [rip + .Lx328_2]
                                                                                        jmp   .Lx328_3
.Lx328_2:
                        .quad            .Lx328_2_s
.Lx328_2_s:
                        .string          "history"
.Lx328_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n165_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n164_op11_β:
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n167_op11_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "economics"
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx332_2]
                                                                                        jmp   .Lx332_3
.Lx332_2:
                        .quad            .Lx332_2_s
.Lx332_2_s:
                        .string          "economics"
.Lx332_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n168_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n167_op11_β:
                                                                                        jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n170_op11_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "latin"
#-----------------------------------------------------------------------------------------------------------------------
n170_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx336_2]
                                                                                        jmp   .Lx336_3
.Lx336_2:
                        .quad            .Lx336_2_s
.Lx336_2_s:
                        .string          "latin"
.Lx336_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n171_var_ref_α
                                                                                        jmp   n143_call_proc_staged_β
n170_op11_β:
                                                                                        jmp   n171_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n172_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        mov              qword ptr [rbp + 496], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx340_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        mov              qword ptr [rbp + 504], rsp
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx340_5
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx340_6
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n143_call_proc_staged_β
                                                                                        jmp   n173_var_ref_α
n172_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   qword ptr [rsp]
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n174_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_proc_staged_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx344_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx344_21
.Lx344_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx344_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx344_1
                        lea              rcx, [rip + .Lx344_3]
                        lea              rdx, [rip + .Lx344_4]
                                                                                        jmp   rax
.Lx344_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx344_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx344_2
.Lx344_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx344_2
.Lx344_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx344_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx344_2
.Lx344_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx344_2
.Lx344_1:
                        call             rt_faildescr@PLT
.Lx344_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n172_call_proc_staged_β
                                                                                        jmp   n175_var_ref_α
n174_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "$disj1/1"
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n176_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n177_op11_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "economics"
#-----------------------------------------------------------------------------------------------------------------------
n177_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              rsi, qword ptr [rip + .Lx348_2]
                                                                                        jmp   .Lx348_3
.Lx348_2:
                        .quad            .Lx348_2_s
.Lx348_2_s:
                        .string          "economics"
.Lx348_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n174_call_proc_staged_β
                                                                                        jmp   n178_var_ref_α
n177_op11_β:
                                                                                        jmp   n174_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n181_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n184_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx362_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx362_21
.Lx362_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx362_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx362_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx362_23
.Lx362_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx362_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx362_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx362_25
.Lx362_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx362_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx362_26
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx362_27
.Lx362_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx362_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx362_28
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx362_29
.Lx362_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx362_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx362_30
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx362_31
.Lx362_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx362_31:
                        mov              edi, 6
                        mov              esi, 6
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx362_1
                        lea              rcx, [rip + .Lx362_3]
                        lea              rdx, [rip + .Lx362_4]
                                                                                        jmp   rax
.Lx362_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx362_2
.Lx362_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx362_2
.Lx362_1:
                        call             rt_faildescr@PLT
.Lx362_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n174_call_proc_staged_β
                                                                                        jmp   n184_call_proc_staged_β
n184_call_proc_staged_β:
                                                                                        jmp   n174_call_proc_staged_β
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "display/6"
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_puzzle$2F0_res]
                        push             rax
                        mov              rax, [rbp + 3544]
                        mov              rbp, [rbp + 3560]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 3552]
                        lea              rsp, [rbp + 3568]
                        mov              rbp, [rbp + 3560]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj2$2F0_α
proc_$disj2$2F0_α:
                        .global          proc_$disj2$2F0_α
                        .global          proc_$disj2$2F0_β
                        .global          proc_$disj2$2F0_γ
                        .global          proc_$disj2$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj2$2F0_α_body:
                        lea              rax, [rip + n365_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx369_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx369_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx369_101
.Lx369_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx369_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   n364_call_proc_staged_α
n363_op11_β:
                                                                                        jmp   proc_$disj2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n364_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx371_1
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4]
                                                                                        jmp   rax
.Lx371_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx371_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx371_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_1:
                        call             rt_faildescr@PLT
.Lx371_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n366_op11_α
                                                                                        jmp   n365_suspend_α
n364_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n365_suspend_α:
                        lea              rax, [rip + n365_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F0_γ
n365_suspend_β:
                                                                                        jmp   n364_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
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
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   n367_suspend_α
n366_op11_β:
                                                                                        jmp   proc_$disj2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n367_suspend_α:
                        lea              rax, [rip + n367_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F0_γ
n367_suspend_β:
                                                                                        jmp   n368_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n368_op11_α:
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
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   proc_$disj2$2F0_ω
n368_op11_β:
                                                                                        jmp   proc_$disj2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
                        .global          proc_$disj0$2F1_α
                        .global          proc_$disj0$2F1_β
                        .global          proc_$disj0$2F1_γ
                        .global          proc_$disj0$2F1_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n388_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n378_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx395_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx395_101
.Lx395_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx395_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n379_var_ref_α
n378_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n380_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
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
.Lx400_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx400_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx400_41
                        cmp              esi, 1
                                                                                        jne   .Lx400_55
                        mov              r8, rax
                                                                                        jmp   .Lx400_40
.Lx400_55:
                        cmp              esi, 2
                                                                                        jne   .Lx400_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx400_41
                        mov              r8, rax
                                                                                        jmp   .Lx400_40
.Lx400_56:
                        cmp              eax, 13
                                                                                        jne   .Lx400_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx400_41
                        cmp              rax, r8
                                                                                        je    .Lx400_41
                        mov              r8, rax
                                                                                        jmp   .Lx400_40
.Lx400_41:
                        lea              r9, [rbp + 432]
.Lx400_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx400_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx400_43
                        cmp              esi, 1
                                                                                        jne   .Lx400_57
                        mov              r9, rax
                                                                                        jmp   .Lx400_42
.Lx400_57:
                        cmp              esi, 2
                                                                                        jne   .Lx400_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx400_43
                        mov              r9, rax
                                                                                        jmp   .Lx400_42
.Lx400_58:
                        cmp              eax, 13
                                                                                        jne   .Lx400_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx400_43
                        cmp              rax, r9
                                                                                        je    .Lx400_43
                        mov              r9, rax
                                                                                        jmp   .Lx400_42
.Lx400_43:
                        cmp              r8, r9
                                                                                        je    .Lx400_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx400_44
                        cmp              eax, 99
                                                                                        je    .Lx400_44
                        cmp              eax, 13
                                                                                        jne   .Lx400_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx400_44
                                                                                        jmp   .Lx400_45
.Lx400_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx400_53
                        cmp              eax, 99
                                                                                        je    .Lx400_53
                        cmp              eax, 13
                                                                                        jne   .Lx400_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx400_53
                                                                                        jmp   .Lx400_46
.Lx400_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx400_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx400_53
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
                                                                                        jmp   .Lx400_51
.Lx400_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx400_47
                        cmp              eax, 99
                                                                                        je    .Lx400_47
                        cmp              eax, 13
                                                                                        jne   .Lx400_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx400_47
                                                                                        jmp   .Lx400_48
.Lx400_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx400_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx400_53
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
                                                                                        jmp   .Lx400_51
.Lx400_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx400_49
                        cmp              edx, 14
                                                                                        je    .Lx400_53
                                                                                        jmp   .Lx400_52
.Lx400_49:
                        cmp              edx, 14
                                                                                        je    .Lx400_52
                        cmp              ecx, 7
                                                                                        je    .Lx400_53
                        cmp              edx, 7
                                                                                        je    .Lx400_53
                        cmp              ecx, 6
                                                                                        jne   .Lx400_50
                        cmp              edx, 6
                                                                                        jne   .Lx400_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx400_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx400_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx400_51
                                                                                        jmp   .Lx400_52
.Lx400_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx400_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx400_53
.Lx400_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx400_54
.Lx400_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx400_54
.Lx400_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx400_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n383_op11_α
                                                                                        jmp   n382_var_ref_α
n381_op11_β:
                                                                                        jmp   n383_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n383_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n385_var_ref_α
n383_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n386_op11_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "math"
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n387_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx407_2]
                                                                                        jmp   .Lx407_3
.Lx407_2:
                        .quad            .Lx407_2_s
.Lx407_2_s:
                        .string          "math"
.Lx407_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n383_op11_α
                                                                                        jmp   n388_suspend_α
n386_op11_β:
                                                                                        jmp   n383_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n389_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n388_suspend_α:
                        lea              rax, [rip + n388_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n388_suspend_β:
                                                                                        jmp   n383_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n389_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx412_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx412_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_41
                        cmp              esi, 1
                                                                                        jne   .Lx412_55
                        mov              r8, rax
                                                                                        jmp   .Lx412_40
.Lx412_55:
                        cmp              esi, 2
                                                                                        jne   .Lx412_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx412_41
                        mov              r8, rax
                                                                                        jmp   .Lx412_40
.Lx412_56:
                        cmp              eax, 13
                                                                                        jne   .Lx412_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_41
                        cmp              rax, r8
                                                                                        je    .Lx412_41
                        mov              r8, rax
                                                                                        jmp   .Lx412_40
.Lx412_41:
                        lea              r9, [rbp + 224]
.Lx412_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx412_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_43
                        cmp              esi, 1
                                                                                        jne   .Lx412_57
                        mov              r9, rax
                                                                                        jmp   .Lx412_42
.Lx412_57:
                        cmp              esi, 2
                                                                                        jne   .Lx412_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx412_43
                        mov              r9, rax
                                                                                        jmp   .Lx412_42
.Lx412_58:
                        cmp              eax, 13
                                                                                        jne   .Lx412_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_43
                        cmp              rax, r9
                                                                                        je    .Lx412_43
                        mov              r9, rax
                                                                                        jmp   .Lx412_42
.Lx412_43:
                        cmp              r8, r9
                                                                                        je    .Lx412_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx412_44
                        cmp              eax, 99
                                                                                        je    .Lx412_44
                        cmp              eax, 13
                                                                                        jne   .Lx412_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx412_44
                                                                                        jmp   .Lx412_45
.Lx412_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx412_53
                        cmp              eax, 99
                                                                                        je    .Lx412_53
                        cmp              eax, 13
                                                                                        jne   .Lx412_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx412_53
                                                                                        jmp   .Lx412_46
.Lx412_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx412_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx412_53
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
                                                                                        jmp   .Lx412_51
.Lx412_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx412_47
                        cmp              eax, 99
                                                                                        je    .Lx412_47
                        cmp              eax, 13
                                                                                        jne   .Lx412_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx412_47
                                                                                        jmp   .Lx412_48
.Lx412_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx412_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx412_53
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
                                                                                        jmp   .Lx412_51
.Lx412_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx412_49
                        cmp              edx, 14
                                                                                        je    .Lx412_53
                                                                                        jmp   .Lx412_52
.Lx412_49:
                        cmp              edx, 14
                                                                                        je    .Lx412_52
                        cmp              ecx, 7
                                                                                        je    .Lx412_53
                        cmp              edx, 7
                                                                                        je    .Lx412_53
                        cmp              ecx, 6
                                                                                        jne   .Lx412_50
                        cmp              edx, 6
                                                                                        jne   .Lx412_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx412_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx412_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx412_51
                                                                                        jmp   .Lx412_52
.Lx412_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx412_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx412_53
.Lx412_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx412_54
.Lx412_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx412_54
.Lx412_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx412_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n391_op11_α
                                                                                        jmp   n390_var_ref_α
n389_op11_β:
                                                                                        jmp   n391_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_op11_α:
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
n391_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n393_op11_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "history"
#-----------------------------------------------------------------------------------------------------------------------
n393_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx417_2]
                                                                                        jmp   .Lx417_3
.Lx417_2:
                        .quad            .Lx417_2_s
.Lx417_2_s:
                        .string          "history"
.Lx417_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n391_op11_α
                                                                                        jmp   n394_suspend_α
n393_op11_β:
                                                                                        jmp   n391_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n394_suspend_α:
                        lea              rax, [rip + n394_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n394_suspend_β:
                                                                                        jmp   n391_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 520]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_member$2F2_α
proc_member$2F2_α:
                        .global          proc_member$2F2_α
                        .global          proc_member$2F2_β
                        .global          proc_member$2F2_γ
                        .global          proc_member$2F2_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_member$2F2_α_body:
                        lea              rax, [rip + n432_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx442_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx442_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx442_101
.Lx442_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx442_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n421_var_ref_α
n420_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n422_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n423_op11_α:
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
.Lx447_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx447_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx447_41
                        cmp              esi, 1
                                                                                        jne   .Lx447_55
                        mov              r8, rax
                                                                                        jmp   .Lx447_40
.Lx447_55:
                        cmp              esi, 2
                                                                                        jne   .Lx447_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx447_41
                        mov              r8, rax
                                                                                        jmp   .Lx447_40
.Lx447_56:
                        cmp              eax, 13
                                                                                        jne   .Lx447_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx447_41
                        cmp              rax, r8
                                                                                        je    .Lx447_41
                        mov              r8, rax
                                                                                        jmp   .Lx447_40
.Lx447_41:
                        lea              r9, [rbp + 608]
.Lx447_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx447_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx447_43
                        cmp              esi, 1
                                                                                        jne   .Lx447_57
                        mov              r9, rax
                                                                                        jmp   .Lx447_42
.Lx447_57:
                        cmp              esi, 2
                                                                                        jne   .Lx447_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx447_43
                        mov              r9, rax
                                                                                        jmp   .Lx447_42
.Lx447_58:
                        cmp              eax, 13
                                                                                        jne   .Lx447_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx447_43
                        cmp              rax, r9
                                                                                        je    .Lx447_43
                        mov              r9, rax
                                                                                        jmp   .Lx447_42
.Lx447_43:
                        cmp              r8, r9
                                                                                        je    .Lx447_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx447_44
                        cmp              eax, 99
                                                                                        je    .Lx447_44
                        cmp              eax, 13
                                                                                        jne   .Lx447_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx447_44
                                                                                        jmp   .Lx447_45
.Lx447_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx447_53
                        cmp              eax, 99
                                                                                        je    .Lx447_53
                        cmp              eax, 13
                                                                                        jne   .Lx447_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx447_53
                                                                                        jmp   .Lx447_46
.Lx447_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx447_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx447_53
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
                                                                                        jmp   .Lx447_51
.Lx447_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx447_47
                        cmp              eax, 99
                                                                                        je    .Lx447_47
                        cmp              eax, 13
                                                                                        jne   .Lx447_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx447_47
                                                                                        jmp   .Lx447_48
.Lx447_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx447_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx447_53
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
                                                                                        jmp   .Lx447_51
.Lx447_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx447_49
                        cmp              edx, 14
                                                                                        je    .Lx447_53
                                                                                        jmp   .Lx447_52
.Lx447_49:
                        cmp              edx, 14
                                                                                        je    .Lx447_52
                        cmp              ecx, 7
                                                                                        je    .Lx447_53
                        cmp              edx, 7
                                                                                        je    .Lx447_53
                        cmp              ecx, 6
                                                                                        jne   .Lx447_50
                        cmp              edx, 6
                                                                                        jne   .Lx447_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx447_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx447_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx447_51
                                                                                        jmp   .Lx447_52
.Lx447_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx447_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx447_53
.Lx447_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx447_54
.Lx447_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx447_54
.Lx447_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx447_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n424_var_ref_α
n423_op11_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n426_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n427_var_ref_α
n425_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n429_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n430_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n431_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_op11_α:
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
.Lx459_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx459_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_61
                        cmp              esi, 1
                                                                                        jne   .Lx459_62
                        mov              r8, rax
                                                                                        jmp   .Lx459_60
.Lx459_62:
                        cmp              esi, 2
                                                                                        jne   .Lx459_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx459_61
                        mov              r8, rax
                                                                                        jmp   .Lx459_60
.Lx459_63:
                        cmp              eax, 13
                                                                                        jne   .Lx459_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_61
                        cmp              rax, r8
                                                                                        je    .Lx459_61
                        mov              r8, rax
                                                                                        jmp   .Lx459_60
.Lx459_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_80
                        cmp              eax, 99
                                                                                        je    .Lx459_80
                        cmp              eax, 13
                                                                                        jne   .Lx459_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx459_80
                                                                                        jmp   .Lx459_74
.Lx459_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx459_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx459_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx459_73
                        lea              r9, [rbp + 512]
.Lx459_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx459_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_65
                        cmp              esi, 1
                                                                                        jne   .Lx459_66
                        mov              r9, rax
                                                                                        jmp   .Lx459_64
.Lx459_66:
                        cmp              esi, 2
                                                                                        jne   .Lx459_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx459_65
                        mov              r9, rax
                                                                                        jmp   .Lx459_64
.Lx459_67:
                        cmp              eax, 13
                                                                                        jne   .Lx459_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_65
                        cmp              rax, r9
                                                                                        je    .Lx459_65
                        mov              r9, rax
                                                                                        jmp   .Lx459_64
.Lx459_65:
                        lea              rcx, [rbp + 528]
.Lx459_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx459_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx459_69
                        cmp              esi, 1
                                                                                        jne   .Lx459_70
                        mov              rcx, rax
                                                                                        jmp   .Lx459_68
.Lx459_70:
                        cmp              esi, 2
                                                                                        jne   .Lx459_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx459_69
                        mov              rcx, rax
                                                                                        jmp   .Lx459_68
.Lx459_71:
                        cmp              eax, 13
                                                                                        jne   .Lx459_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx459_69
                        cmp              rax, rcx
                                                                                        je    .Lx459_69
                        mov              rcx, rax
                                                                                        jmp   .Lx459_68
.Lx459_69:
                        cmp              r9, rcx
                                                                                        je    .Lx459_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_75
                        cmp              eax, 99
                                                                                        je    .Lx459_75
                        cmp              eax, 13
                                                                                        jne   .Lx459_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx459_75
                                                                                        jmp   .Lx459_72
.Lx459_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_76
                        cmp              eax, 99
                                                                                        je    .Lx459_76
                        cmp              eax, 13
                                                                                        jne   .Lx459_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx459_76
                                                                                        jmp   .Lx459_72
.Lx459_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx459_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx459_72
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
                                                                                        jmp   .Lx459_77
.Lx459_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx459_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx459_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx459_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx459_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx459_72
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
.Lx459_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx459_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_82
                        cmp              esi, 1
                                                                                        jne   .Lx459_83
                        mov              r9, rax
                                                                                        jmp   .Lx459_81
.Lx459_83:
                        cmp              esi, 2
                                                                                        jne   .Lx459_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx459_82
                        mov              r9, rax
                                                                                        jmp   .Lx459_81
.Lx459_84:
                        cmp              eax, 13
                                                                                        jne   .Lx459_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_82
                        cmp              rax, r9
                                                                                        je    .Lx459_82
                        mov              r9, rax
                                                                                        jmp   .Lx459_81
.Lx459_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_85
                        cmp              eax, 99
                                                                                        je    .Lx459_85
                        cmp              eax, 13
                                                                                        jne   .Lx459_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx459_85
                                                                                        jmp   .Lx459_86
.Lx459_85:
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
                                                                                        jmp   .Lx459_87
.Lx459_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx459_87:
                        lea              rcx, [rbp + 528]
.Lx459_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx459_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx459_89
                        cmp              esi, 1
                                                                                        jne   .Lx459_90
                        mov              rcx, rax
                                                                                        jmp   .Lx459_88
.Lx459_90:
                        cmp              esi, 2
                                                                                        jne   .Lx459_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx459_89
                        mov              rcx, rax
                                                                                        jmp   .Lx459_88
.Lx459_91:
                        cmp              eax, 13
                                                                                        jne   .Lx459_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx459_89
                        cmp              rax, rcx
                                                                                        je    .Lx459_89
                        mov              rcx, rax
                                                                                        jmp   .Lx459_88
.Lx459_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_92
                        cmp              eax, 99
                                                                                        je    .Lx459_92
                        cmp              eax, 13
                                                                                        jne   .Lx459_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx459_92
                                                                                        jmp   .Lx459_93
.Lx459_92:
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
                                                                                        jmp   .Lx459_94
.Lx459_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx459_94:
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
                                                                                        jmp   .Lx459_77
.Lx459_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx459_77
.Lx459_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx459_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n432_suspend_α
n430_op11_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n431_op11_α:
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
.Lx460_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx460_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx460_41
                        cmp              esi, 1
                                                                                        jne   .Lx460_55
                        mov              r8, rax
                                                                                        jmp   .Lx460_40
.Lx460_55:
                        cmp              esi, 2
                                                                                        jne   .Lx460_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx460_41
                        mov              r8, rax
                                                                                        jmp   .Lx460_40
.Lx460_56:
                        cmp              eax, 13
                                                                                        jne   .Lx460_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx460_41
                        cmp              rax, r8
                                                                                        je    .Lx460_41
                        mov              r8, rax
                                                                                        jmp   .Lx460_40
.Lx460_41:
                        lea              r9, [rbp + 368]
.Lx460_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx460_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx460_43
                        cmp              esi, 1
                                                                                        jne   .Lx460_57
                        mov              r9, rax
                                                                                        jmp   .Lx460_42
.Lx460_57:
                        cmp              esi, 2
                                                                                        jne   .Lx460_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx460_43
                        mov              r9, rax
                                                                                        jmp   .Lx460_42
.Lx460_58:
                        cmp              eax, 13
                                                                                        jne   .Lx460_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx460_43
                        cmp              rax, r9
                                                                                        je    .Lx460_43
                        mov              r9, rax
                                                                                        jmp   .Lx460_42
.Lx460_43:
                        cmp              r8, r9
                                                                                        je    .Lx460_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx460_44
                        cmp              eax, 99
                                                                                        je    .Lx460_44
                        cmp              eax, 13
                                                                                        jne   .Lx460_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx460_44
                                                                                        jmp   .Lx460_45
.Lx460_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx460_53
                        cmp              eax, 99
                                                                                        je    .Lx460_53
                        cmp              eax, 13
                                                                                        jne   .Lx460_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx460_53
                                                                                        jmp   .Lx460_46
.Lx460_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx460_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx460_53
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
                                                                                        jmp   .Lx460_51
.Lx460_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx460_47
                        cmp              eax, 99
                                                                                        je    .Lx460_47
                        cmp              eax, 13
                                                                                        jne   .Lx460_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx460_47
                                                                                        jmp   .Lx460_48
.Lx460_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx460_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx460_53
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
                                                                                        jmp   .Lx460_51
.Lx460_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx460_49
                        cmp              edx, 14
                                                                                        je    .Lx460_53
                                                                                        jmp   .Lx460_52
.Lx460_49:
                        cmp              edx, 14
                                                                                        je    .Lx460_52
                        cmp              ecx, 7
                                                                                        je    .Lx460_53
                        cmp              edx, 7
                                                                                        je    .Lx460_53
                        cmp              ecx, 6
                                                                                        jne   .Lx460_50
                        cmp              edx, 6
                                                                                        jne   .Lx460_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx460_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx460_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx460_51
                                                                                        jmp   .Lx460_52
.Lx460_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx460_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx460_53
.Lx460_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx460_54
.Lx460_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx460_54
.Lx460_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx460_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n433_var_ref_α
n431_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n432_suspend_α:
                        lea              rax, [rip + n432_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n432_suspend_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n435_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
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
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   proc_member$2F2_ω
n434_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n436_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n437_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n437_op11_α:
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
.Lx470_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx470_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_61
                        cmp              esi, 1
                                                                                        jne   .Lx470_62
                        mov              r8, rax
                                                                                        jmp   .Lx470_60
.Lx470_62:
                        cmp              esi, 2
                                                                                        jne   .Lx470_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_61
                        mov              r8, rax
                                                                                        jmp   .Lx470_60
.Lx470_63:
                        cmp              eax, 13
                                                                                        jne   .Lx470_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_61
                        cmp              rax, r8
                                                                                        je    .Lx470_61
                        mov              r8, rax
                                                                                        jmp   .Lx470_60
.Lx470_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_80
                        cmp              eax, 99
                                                                                        je    .Lx470_80
                        cmp              eax, 13
                                                                                        jne   .Lx470_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx470_80
                                                                                        jmp   .Lx470_74
.Lx470_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx470_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx470_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx470_73
                        lea              r9, [rbp + 272]
.Lx470_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx470_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_65
                        cmp              esi, 1
                                                                                        jne   .Lx470_66
                        mov              r9, rax
                                                                                        jmp   .Lx470_64
.Lx470_66:
                        cmp              esi, 2
                                                                                        jne   .Lx470_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_65
                        mov              r9, rax
                                                                                        jmp   .Lx470_64
.Lx470_67:
                        cmp              eax, 13
                                                                                        jne   .Lx470_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_65
                        cmp              rax, r9
                                                                                        je    .Lx470_65
                        mov              r9, rax
                                                                                        jmp   .Lx470_64
.Lx470_65:
                        lea              rcx, [rbp + 288]
.Lx470_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx470_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_69
                        cmp              esi, 1
                                                                                        jne   .Lx470_70
                        mov              rcx, rax
                                                                                        jmp   .Lx470_68
.Lx470_70:
                        cmp              esi, 2
                                                                                        jne   .Lx470_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_69
                        mov              rcx, rax
                                                                                        jmp   .Lx470_68
.Lx470_71:
                        cmp              eax, 13
                                                                                        jne   .Lx470_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_69
                        cmp              rax, rcx
                                                                                        je    .Lx470_69
                        mov              rcx, rax
                                                                                        jmp   .Lx470_68
.Lx470_69:
                        cmp              r9, rcx
                                                                                        je    .Lx470_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_75
                        cmp              eax, 99
                                                                                        je    .Lx470_75
                        cmp              eax, 13
                                                                                        jne   .Lx470_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx470_75
                                                                                        jmp   .Lx470_72
.Lx470_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_76
                        cmp              eax, 99
                                                                                        je    .Lx470_76
                        cmp              eax, 13
                                                                                        jne   .Lx470_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx470_76
                                                                                        jmp   .Lx470_72
.Lx470_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx470_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx470_72
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
                                                                                        jmp   .Lx470_77
.Lx470_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx470_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx470_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx470_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx470_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx470_72
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
.Lx470_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx470_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_82
                        cmp              esi, 1
                                                                                        jne   .Lx470_83
                        mov              r9, rax
                                                                                        jmp   .Lx470_81
.Lx470_83:
                        cmp              esi, 2
                                                                                        jne   .Lx470_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_82
                        mov              r9, rax
                                                                                        jmp   .Lx470_81
.Lx470_84:
                        cmp              eax, 13
                                                                                        jne   .Lx470_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_82
                        cmp              rax, r9
                                                                                        je    .Lx470_82
                        mov              r9, rax
                                                                                        jmp   .Lx470_81
.Lx470_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_85
                        cmp              eax, 99
                                                                                        je    .Lx470_85
                        cmp              eax, 13
                                                                                        jne   .Lx470_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx470_85
                                                                                        jmp   .Lx470_86
.Lx470_85:
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
                                                                                        jmp   .Lx470_87
.Lx470_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx470_87:
                        lea              rcx, [rbp + 288]
.Lx470_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx470_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_89
                        cmp              esi, 1
                                                                                        jne   .Lx470_90
                        mov              rcx, rax
                                                                                        jmp   .Lx470_88
.Lx470_90:
                        cmp              esi, 2
                                                                                        jne   .Lx470_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_89
                        mov              rcx, rax
                                                                                        jmp   .Lx470_88
.Lx470_91:
                        cmp              eax, 13
                                                                                        jne   .Lx470_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_89
                        cmp              rax, rcx
                                                                                        je    .Lx470_89
                        mov              rcx, rax
                                                                                        jmp   .Lx470_88
.Lx470_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_92
                        cmp              eax, 99
                                                                                        je    .Lx470_92
                        cmp              eax, 13
                                                                                        jne   .Lx470_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx470_92
                                                                                        jmp   .Lx470_93
.Lx470_92:
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
                                                                                        jmp   .Lx470_94
.Lx470_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx470_94:
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
                                                                                        jmp   .Lx470_77
.Lx470_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx470_77
.Lx470_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx470_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n438_var_ref_α
n437_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n440_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n440_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx476_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx476_21
.Lx476_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx476_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx476_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx476_23
.Lx476_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx476_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx476_1
                        lea              rcx, [rip + .Lx476_3]
                        lea              rdx, [rip + .Lx476_4]
                                                                                        jmp   rax
.Lx476_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx476_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx476_2
.Lx476_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx476_2
.Lx476_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx476_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx476_2
.Lx476_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx476_2
.Lx476_1:
                        call             rt_faildescr@PLT
.Lx476_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n441_suspend_α
n440_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n441_suspend_α:
                        lea              rax, [rip + n441_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n441_suspend_β:
                                                                                        jmp   n440_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_member$2F2_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_display$2F6_α
proc_display$2F6_α:
                        .global          proc_display$2F6_α
                        .global          proc_display$2F6_β
                        .global          proc_display$2F6_γ
                        .global          proc_display$2F6_ω
                        sub              rsp, 1440
                        mov              [rsp + 1416], rcx
                        mov              [rsp + 1424], rdx
                        mov              [rsp + 1432], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1312
                        mov              edx, 1408
                        call             rt_jmp_frame_lexprep2@PLT
proc_display$2F6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n479_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx527_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx527_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx527_101
.Lx527_100:
                        lea              rdi, [rbp + 160]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx527_101:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F6_ω
                                                                                        jmp   n480_var_ref_α
n479_op11_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n481_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n482_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n482_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1248]
                        lea              r8, [rbp + 1248]
.Lx532_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx532_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx532_41
                        cmp              esi, 1
                                                                                        jne   .Lx532_55
                        mov              r8, rax
                                                                                        jmp   .Lx532_40
.Lx532_55:
                        cmp              esi, 2
                                                                                        jne   .Lx532_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx532_41
                        mov              r8, rax
                                                                                        jmp   .Lx532_40
.Lx532_56:
                        cmp              eax, 13
                                                                                        jne   .Lx532_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx532_41
                        cmp              rax, r8
                                                                                        je    .Lx532_41
                        mov              r8, rax
                                                                                        jmp   .Lx532_40
.Lx532_41:
                        lea              r9, [rbp + 1264]
.Lx532_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx532_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx532_43
                        cmp              esi, 1
                                                                                        jne   .Lx532_57
                        mov              r9, rax
                                                                                        jmp   .Lx532_42
.Lx532_57:
                        cmp              esi, 2
                                                                                        jne   .Lx532_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx532_43
                        mov              r9, rax
                                                                                        jmp   .Lx532_42
.Lx532_58:
                        cmp              eax, 13
                                                                                        jne   .Lx532_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx532_43
                        cmp              rax, r9
                                                                                        je    .Lx532_43
                        mov              r9, rax
                                                                                        jmp   .Lx532_42
.Lx532_43:
                        cmp              r8, r9
                                                                                        je    .Lx532_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx532_44
                        cmp              eax, 99
                                                                                        je    .Lx532_44
                        cmp              eax, 13
                                                                                        jne   .Lx532_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx532_44
                                                                                        jmp   .Lx532_45
.Lx532_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx532_53
                        cmp              eax, 99
                                                                                        je    .Lx532_53
                        cmp              eax, 13
                                                                                        jne   .Lx532_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx532_53
                                                                                        jmp   .Lx532_46
.Lx532_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx532_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx532_53
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
                                                                                        jmp   .Lx532_51
.Lx532_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx532_47
                        cmp              eax, 99
                                                                                        je    .Lx532_47
                        cmp              eax, 13
                                                                                        jne   .Lx532_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx532_47
                                                                                        jmp   .Lx532_48
.Lx532_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx532_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx532_53
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
                                                                                        jmp   .Lx532_51
.Lx532_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx532_49
                        cmp              edx, 14
                                                                                        je    .Lx532_53
                                                                                        jmp   .Lx532_52
.Lx532_49:
                        cmp              edx, 14
                                                                                        je    .Lx532_52
                        cmp              ecx, 7
                                                                                        je    .Lx532_53
                        cmp              edx, 7
                                                                                        je    .Lx532_53
                        cmp              ecx, 6
                                                                                        jne   .Lx532_50
                        cmp              edx, 6
                                                                                        jne   .Lx532_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx532_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx532_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx532_51
                                                                                        jmp   .Lx532_52
.Lx532_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx532_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx532_53
.Lx532_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx532_54
.Lx532_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx532_54
.Lx532_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx532_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n483_var_ref_α
n482_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n485_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n484_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F6_ω
                                                                                        jmp   proc_display$2F6_ω
n484_op11_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n486_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx538_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx538_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_41
                        cmp              esi, 1
                                                                                        jne   .Lx538_55
                        mov              r8, rax
                                                                                        jmp   .Lx538_40
.Lx538_55:
                        cmp              esi, 2
                                                                                        jne   .Lx538_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx538_41
                        mov              r8, rax
                                                                                        jmp   .Lx538_40
.Lx538_56:
                        cmp              eax, 13
                                                                                        jne   .Lx538_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_41
                        cmp              rax, r8
                                                                                        je    .Lx538_41
                        mov              r8, rax
                                                                                        jmp   .Lx538_40
.Lx538_41:
                        lea              r9, [rbp + 1184]
.Lx538_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx538_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_43
                        cmp              esi, 1
                                                                                        jne   .Lx538_57
                        mov              r9, rax
                                                                                        jmp   .Lx538_42
.Lx538_57:
                        cmp              esi, 2
                                                                                        jne   .Lx538_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx538_43
                        mov              r9, rax
                                                                                        jmp   .Lx538_42
.Lx538_58:
                        cmp              eax, 13
                                                                                        jne   .Lx538_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx538_43
                        cmp              rax, r9
                                                                                        je    .Lx538_43
                        mov              r9, rax
                                                                                        jmp   .Lx538_42
.Lx538_43:
                        cmp              r8, r9
                                                                                        je    .Lx538_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx538_44
                        cmp              eax, 99
                                                                                        je    .Lx538_44
                        cmp              eax, 13
                                                                                        jne   .Lx538_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx538_44
                                                                                        jmp   .Lx538_45
.Lx538_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx538_53
                        cmp              eax, 99
                                                                                        je    .Lx538_53
                        cmp              eax, 13
                                                                                        jne   .Lx538_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx538_53
                                                                                        jmp   .Lx538_46
.Lx538_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx538_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx538_53
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
                                                                                        jmp   .Lx538_51
.Lx538_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx538_47
                        cmp              eax, 99
                                                                                        je    .Lx538_47
                        cmp              eax, 13
                                                                                        jne   .Lx538_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx538_47
                                                                                        jmp   .Lx538_48
.Lx538_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx538_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx538_53
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
                                                                                        jmp   .Lx538_51
.Lx538_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx538_49
                        cmp              edx, 14
                                                                                        je    .Lx538_53
                                                                                        jmp   .Lx538_52
.Lx538_49:
                        cmp              edx, 14
                                                                                        je    .Lx538_52
                        cmp              ecx, 7
                                                                                        je    .Lx538_53
                        cmp              edx, 7
                                                                                        je    .Lx538_53
                        cmp              ecx, 6
                                                                                        jne   .Lx538_50
                        cmp              edx, 6
                                                                                        jne   .Lx538_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx538_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx538_51
                                                                                        jmp   .Lx538_52
.Lx538_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx538_53
.Lx538_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx538_54
.Lx538_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx538_54
.Lx538_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx538_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n487_var_ref_α
n486_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n488_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n489_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lx543_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx543_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_41
                        cmp              esi, 1
                                                                                        jne   .Lx543_55
                        mov              r8, rax
                                                                                        jmp   .Lx543_40
.Lx543_55:
                        cmp              esi, 2
                                                                                        jne   .Lx543_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx543_41
                        mov              r8, rax
                                                                                        jmp   .Lx543_40
.Lx543_56:
                        cmp              eax, 13
                                                                                        jne   .Lx543_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_41
                        cmp              rax, r8
                                                                                        je    .Lx543_41
                        mov              r8, rax
                                                                                        jmp   .Lx543_40
.Lx543_41:
                        lea              r9, [rbp + 1104]
.Lx543_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx543_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_43
                        cmp              esi, 1
                                                                                        jne   .Lx543_57
                        mov              r9, rax
                                                                                        jmp   .Lx543_42
.Lx543_57:
                        cmp              esi, 2
                                                                                        jne   .Lx543_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx543_43
                        mov              r9, rax
                                                                                        jmp   .Lx543_42
.Lx543_58:
                        cmp              eax, 13
                                                                                        jne   .Lx543_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_43
                        cmp              rax, r9
                                                                                        je    .Lx543_43
                        mov              r9, rax
                                                                                        jmp   .Lx543_42
.Lx543_43:
                        cmp              r8, r9
                                                                                        je    .Lx543_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx543_44
                        cmp              eax, 99
                                                                                        je    .Lx543_44
                        cmp              eax, 13
                                                                                        jne   .Lx543_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx543_44
                                                                                        jmp   .Lx543_45
.Lx543_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx543_53
                        cmp              eax, 99
                                                                                        je    .Lx543_53
                        cmp              eax, 13
                                                                                        jne   .Lx543_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx543_53
                                                                                        jmp   .Lx543_46
.Lx543_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx543_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx543_53
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
                                                                                        jmp   .Lx543_51
.Lx543_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx543_47
                        cmp              eax, 99
                                                                                        je    .Lx543_47
                        cmp              eax, 13
                                                                                        jne   .Lx543_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx543_47
                                                                                        jmp   .Lx543_48
.Lx543_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx543_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx543_53
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
                                                                                        jmp   .Lx543_51
.Lx543_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx543_49
                        cmp              edx, 14
                                                                                        je    .Lx543_53
                                                                                        jmp   .Lx543_52
.Lx543_49:
                        cmp              edx, 14
                                                                                        je    .Lx543_52
                        cmp              ecx, 7
                                                                                        je    .Lx543_53
                        cmp              edx, 7
                                                                                        je    .Lx543_53
                        cmp              ecx, 6
                                                                                        jne   .Lx543_50
                        cmp              edx, 6
                                                                                        jne   .Lx543_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx543_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx543_51
                                                                                        jmp   .Lx543_52
.Lx543_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx543_53
.Lx543_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx543_54
.Lx543_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx543_54
.Lx543_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx543_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n490_var_ref_α
n489_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n491_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n492_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n492_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lx548_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              esi, 1
                                                                                        jne   .Lx548_55
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_55:
                        cmp              esi, 2
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_56:
                        cmp              eax, 13
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              rax, r8
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_41:
                        lea              r9, [rbp + 1024]
.Lx548_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              esi, 1
                                                                                        jne   .Lx548_57
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_57:
                        cmp              esi, 2
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_58:
                        cmp              eax, 13
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              rax, r9
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_43:
                        cmp              r8, r9
                                                                                        je    .Lx548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_44
                        cmp              eax, 99
                                                                                        je    .Lx548_44
                        cmp              eax, 13
                                                                                        jne   .Lx548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx548_44
                                                                                        jmp   .Lx548_45
.Lx548_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_53
                        cmp              eax, 99
                                                                                        je    .Lx548_53
                        cmp              eax, 13
                                                                                        jne   .Lx548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_46
.Lx548_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_47
                        cmp              eax, 99
                                                                                        je    .Lx548_47
                        cmp              eax, 13
                                                                                        jne   .Lx548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_47
                                                                                        jmp   .Lx548_48
.Lx548_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx548_49
                        cmp              edx, 14
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_52
.Lx548_49:
                        cmp              edx, 14
                                                                                        je    .Lx548_52
                        cmp              ecx, 7
                                                                                        je    .Lx548_53
                        cmp              edx, 7
                                                                                        je    .Lx548_53
                        cmp              ecx, 6
                                                                                        jne   .Lx548_50
                        cmp              edx, 6
                                                                                        jne   .Lx548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx548_51
                                                                                        jmp   .Lx548_52
.Lx548_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
.Lx548_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx548_54
.Lx548_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx548_54
.Lx548_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx548_54:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n493_var_ref_α
n492_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n494_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n495_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n495_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx553_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx553_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        cmp              esi, 1
                                                                                        jne   .Lx553_55
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_55:
                        cmp              esi, 2
                                                                                        jne   .Lx553_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_56:
                        cmp              eax, 13
                                                                                        jne   .Lx553_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        cmp              rax, r8
                                                                                        je    .Lx553_41
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_41:
                        lea              r9, [rbp + 944]
.Lx553_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx553_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        cmp              esi, 1
                                                                                        jne   .Lx553_57
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_57:
                        cmp              esi, 2
                                                                                        jne   .Lx553_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_58:
                        cmp              eax, 13
                                                                                        jne   .Lx553_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        cmp              rax, r9
                                                                                        je    .Lx553_43
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_43:
                        cmp              r8, r9
                                                                                        je    .Lx553_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_44
                        cmp              eax, 99
                                                                                        je    .Lx553_44
                        cmp              eax, 13
                                                                                        jne   .Lx553_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx553_44
                                                                                        jmp   .Lx553_45
.Lx553_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_53
                        cmp              eax, 99
                                                                                        je    .Lx553_53
                        cmp              eax, 13
                                                                                        jne   .Lx553_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx553_53
                                                                                        jmp   .Lx553_46
.Lx553_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx553_53
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
                                                                                        jmp   .Lx553_51
.Lx553_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_47
                        cmp              eax, 99
                                                                                        je    .Lx553_47
                        cmp              eax, 13
                                                                                        jne   .Lx553_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx553_47
                                                                                        jmp   .Lx553_48
.Lx553_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx553_53
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
                                                                                        jmp   .Lx553_51
.Lx553_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx553_49
                        cmp              edx, 14
                                                                                        je    .Lx553_53
                                                                                        jmp   .Lx553_52
.Lx553_49:
                        cmp              edx, 14
                                                                                        je    .Lx553_52
                        cmp              ecx, 7
                                                                                        je    .Lx553_53
                        cmp              edx, 7
                                                                                        je    .Lx553_53
                        cmp              ecx, 6
                                                                                        jne   .Lx553_50
                        cmp              edx, 6
                                                                                        jne   .Lx553_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx553_51
                                                                                        jmp   .Lx553_52
.Lx553_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx553_53
.Lx553_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx553_54
.Lx553_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx553_54
.Lx553_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx553_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n496_var_ref_α
n495_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n498_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
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
.Lx558_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx558_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        cmp              esi, 1
                                                                                        jne   .Lx558_55
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_55:
                        cmp              esi, 2
                                                                                        jne   .Lx558_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_56:
                        cmp              eax, 13
                                                                                        jne   .Lx558_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        cmp              rax, r8
                                                                                        je    .Lx558_41
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_41:
                        lea              r9, [rbp + 864]
.Lx558_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx558_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        cmp              esi, 1
                                                                                        jne   .Lx558_57
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_57:
                        cmp              esi, 2
                                                                                        jne   .Lx558_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_58:
                        cmp              eax, 13
                                                                                        jne   .Lx558_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        cmp              rax, r9
                                                                                        je    .Lx558_43
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_43:
                        cmp              r8, r9
                                                                                        je    .Lx558_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_44
                        cmp              eax, 99
                                                                                        je    .Lx558_44
                        cmp              eax, 13
                                                                                        jne   .Lx558_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx558_44
                                                                                        jmp   .Lx558_45
.Lx558_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_53
                        cmp              eax, 99
                                                                                        je    .Lx558_53
                        cmp              eax, 13
                                                                                        jne   .Lx558_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx558_53
                                                                                        jmp   .Lx558_46
.Lx558_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx558_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx558_53
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
                                                                                        jmp   .Lx558_51
.Lx558_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_47
                        cmp              eax, 99
                                                                                        je    .Lx558_47
                        cmp              eax, 13
                                                                                        jne   .Lx558_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx558_47
                                                                                        jmp   .Lx558_48
.Lx558_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx558_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx558_53
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
                                                                                        jmp   .Lx558_51
.Lx558_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx558_49
                        cmp              edx, 14
                                                                                        je    .Lx558_53
                                                                                        jmp   .Lx558_52
.Lx558_49:
                        cmp              edx, 14
                                                                                        je    .Lx558_52
                        cmp              ecx, 7
                                                                                        je    .Lx558_53
                        cmp              edx, 7
                                                                                        je    .Lx558_53
                        cmp              ecx, 6
                                                                                        jne   .Lx558_50
                        cmp              edx, 6
                                                                                        jne   .Lx558_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx558_51
                                                                                        jmp   .Lx558_52
.Lx558_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx558_53
.Lx558_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx558_54
.Lx558_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx558_54
.Lx558_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx558_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n499_lit_string_α
n498_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n500_op11_α
.Lx559_0:
                        .quad            .Lx559_0_s
.Lx559_0_s:
                        .string          "Arthur="
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn561:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n501_var_α
n500_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n502_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn565:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n503_lit_string_α
n502_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n504_op11_α
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          " Bascomb="
#-----------------------------------------------------------------------------------------------------------------------
n504_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn568:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n505_var_α
n504_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n506_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn572:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn572]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n507_lit_string_α
n506_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n508_op11_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          " Conroy="
#-----------------------------------------------------------------------------------------------------------------------
n508_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn575:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn575]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n509_var_α
n508_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n510_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn579:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n511_lit_string_α
n510_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n512_op11_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          " Duval="
#-----------------------------------------------------------------------------------------------------------------------
n512_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn582:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n513_var_α
n512_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n514_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n514_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn586:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn586]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n515_lit_string_α
n514_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n516_op11_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          " Eggleston="
#-----------------------------------------------------------------------------------------------------------------------
n516_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn589:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn589]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n517_var_α
n516_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n518_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n518_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn593:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n519_lit_string_α
n518_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n520_op11_α
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          " Furness="
#-----------------------------------------------------------------------------------------------------------------------
n520_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn596:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn596]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n521_var_α
n520_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n522_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn600:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n523_lit_string_α
n522_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n524_op11_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n524_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn603:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn603]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n525_move_label_α
n524_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n525_move_label_α:
                        lea              rax, [rip + n484_op11_α]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   proc_display$2F6_γ
#-----------------------------------------------------------------------------------------------------------------------
n526_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 128]
n526_disjunction_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_β:
                                                                                        jmp   n526_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1416]
                        lea              rsp, [rbp + 1440]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_ω:
                        mov              rax, [rbp + 1424]
                        lea              rsp, [rbp + 1440]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_subject$2F1_α
proc_subject$2F1_α:
                        .global          proc_subject$2F1_α
                        .global          proc_subject$2F1_β
                        .global          proc_subject$2F1_γ
                        .global          proc_subject$2F1_ω
                        sub              rsp, 1024
                        mov              [rsp + 1000], rcx
                        mov              [rsp + 1008], rdx
                        mov              [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 960
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
proc_subject$2F1_α_body:
                        lea              rax, [rip + n634_suspend_β]
                        mov              qword ptr [rbp + 960], rax
#-----------------------------------------------------------------------------------------------------------------------
n608_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx635_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx635_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx635_101
.Lx635_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx635_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_subject$2F1_ω
                                                                                        jmp   n609_var_ref_α
n608_op11_β:
                                                                                        jmp   proc_subject$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n610_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n611_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n611_op11_α:
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
.Lx640_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx640_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx640_41
                        cmp              esi, 1
                                                                                        jne   .Lx640_55
                        mov              r8, rax
                                                                                        jmp   .Lx640_40
.Lx640_55:
                        cmp              esi, 2
                                                                                        jne   .Lx640_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx640_41
                        mov              r8, rax
                                                                                        jmp   .Lx640_40
.Lx640_56:
                        cmp              eax, 13
                                                                                        jne   .Lx640_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx640_41
                        cmp              rax, r8
                                                                                        je    .Lx640_41
                        mov              r8, rax
                                                                                        jmp   .Lx640_40
.Lx640_41:
                        lea              r9, [rbp + 912]
.Lx640_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx640_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx640_43
                        cmp              esi, 1
                                                                                        jne   .Lx640_57
                        mov              r9, rax
                                                                                        jmp   .Lx640_42
.Lx640_57:
                        cmp              esi, 2
                                                                                        jne   .Lx640_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx640_43
                        mov              r9, rax
                                                                                        jmp   .Lx640_42
.Lx640_58:
                        cmp              eax, 13
                                                                                        jne   .Lx640_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx640_43
                        cmp              rax, r9
                                                                                        je    .Lx640_43
                        mov              r9, rax
                                                                                        jmp   .Lx640_42
.Lx640_43:
                        cmp              r8, r9
                                                                                        je    .Lx640_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx640_44
                        cmp              eax, 99
                                                                                        je    .Lx640_44
                        cmp              eax, 13
                                                                                        jne   .Lx640_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx640_44
                                                                                        jmp   .Lx640_45
.Lx640_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx640_53
                        cmp              eax, 99
                                                                                        je    .Lx640_53
                        cmp              eax, 13
                                                                                        jne   .Lx640_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx640_53
                                                                                        jmp   .Lx640_46
.Lx640_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx640_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx640_53
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
                                                                                        jmp   .Lx640_51
.Lx640_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx640_47
                        cmp              eax, 99
                                                                                        je    .Lx640_47
                        cmp              eax, 13
                                                                                        jne   .Lx640_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx640_47
                                                                                        jmp   .Lx640_48
.Lx640_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx640_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx640_53
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
                                                                                        jmp   .Lx640_51
.Lx640_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx640_49
                        cmp              edx, 14
                                                                                        je    .Lx640_53
                                                                                        jmp   .Lx640_52
.Lx640_49:
                        cmp              edx, 14
                                                                                        je    .Lx640_52
                        cmp              ecx, 7
                                                                                        je    .Lx640_53
                        cmp              edx, 7
                                                                                        je    .Lx640_53
                        cmp              ecx, 6
                                                                                        jne   .Lx640_50
                        cmp              edx, 6
                                                                                        jne   .Lx640_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx640_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx640_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx640_51
                                                                                        jmp   .Lx640_52
.Lx640_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx640_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx640_53
.Lx640_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx640_54
.Lx640_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx640_54
.Lx640_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx640_54:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n612_var_ref_α
n611_op11_β:
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n614_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n613_op11_α:
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
                                                                                        je    proc_subject$2F1_ω
                                                                                        jmp   proc_subject$2F1_ω
n613_op11_β:
                                                                                        jmp   proc_subject$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n615_lit_string_α
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n616_lit_string_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "economics"
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n617_lit_string_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n618_lit_string_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "english"
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n619_lit_string_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n620_lit_string_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "french"
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n621_lit_string_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n622_lit_string_α
.Lx651_0:
                        .quad            .Lx651_0_s
.Lx651_0_s:
                        .string          "history"
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n623_lit_string_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n624_lit_string_α
.Lx653_0:
                        .quad            .Lx653_0_s
.Lx653_0_s:
                        .string          "latin"
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n625_lit_string_α
.Lx654_0:
                        .quad            .Lx654_0_s
.Lx654_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n626_lit_string_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "math"
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n627_op11_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n627_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_subject$2F1_ω
                                                                                        jmp   n628_op11_α
n627_op11_β:
                                                                                        jmp   proc_subject$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_subject$2F1_ω
                                                                                        jmp   n629_op11_α
n628_op11_β:
                                                                                        jmp   proc_subject$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_subject$2F1_ω
                                                                                        jmp   n630_op11_α
n629_op11_β:
                                                                                        jmp   proc_subject$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n630_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_subject$2F1_ω
                                                                                        jmp   n631_op11_α
n630_op11_β:
                                                                                        jmp   proc_subject$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n631_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_subject$2F1_ω
                                                                                        jmp   n632_op11_α
n631_op11_β:
                                                                                        jmp   proc_subject$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n632_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n633_call_proc_staged_α
n632_op11_β:
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n633_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx664_21
.Lx664_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx664_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx664_23
.Lx664_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx664_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx664_1
                        lea              rcx, [rip + .Lx664_3]
                        lea              rdx, [rip + .Lx664_4]
                                                                                        jmp   rax
.Lx664_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx664_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx664_2
.Lx664_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx664_2
.Lx664_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx664_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx664_2
.Lx664_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx664_2
.Lx664_1:
                        call             rt_faildescr@PLT
.Lx664_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n634_suspend_α
n633_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n634_suspend_α:
                        lea              rax, [rip + n634_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_subject$2F1_γ
n634_suspend_β:
                                                                                        jmp   n633_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_subject$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_subject$2F1_β:
                                                                                        jmp   qword ptr [rbp + 960]
#-----------------------------------------------------------------------------------------------------------------------
proc_subject$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_subject$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1000]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_subject$2F1_ω:
                        mov              rax, [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
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
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$disj1/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$disj1$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "puzzle/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_puzzle$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3536
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$disj2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "$disj0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_$disj0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 512
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
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "display/6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_display$2F6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1408
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "subject/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_subject$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 992
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
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
                        sub              rsp, 152
                        mov              rdi, rsp
                        mov              ecx, 152
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 144], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n667_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   n668_call_proc_staged_α
n667_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n668_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx674_1
                        lea              rcx, [rip + .Lx674_3]
                        lea              rdx, [rip + .Lx674_4]
                                                                                        jmp   rax
.Lx674_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx674_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx674_2
.Lx674_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx674_2
.Lx674_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx674_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx674_2
.Lx674_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx674_2
.Lx674_1:
                        call             rt_faildescr@PLT
.Lx674_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n670_op11_α
                                                                                        jmp   n669_move_label_α
n668_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "$disj2/0"
#-----------------------------------------------------------------------------------------------------------------------
n669_move_label_α:
                        lea              rax, [rip + n668_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n670_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n671_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n671_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n671_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 144]
                        add              rsp, 152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 144]
                        add              rsp, 152
                        ret
                        .section         .note.GNU-stack,"",@progbits
