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
                        .globl           proc_last$2F2_α
proc_last$2F2_α:
                        .global          proc_last$2F2_α
                        .global          proc_last$2F2_β
                        .global          proc_last$2F2_γ
                        .global          proc_last$2F2_ω
                        sub              rsp, 1040
                        mov              [rsp + 1016], rcx
                        mov              [rsp + 1024], rdx
                        mov              [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 960
                        mov              edx, 1008
                        call             rt_jmp_frame_lexprep2@PLT
proc_last$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx77_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx77_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx77_101
.Lx77_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx77_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_last$2F2_ω
                                                                                        jmp   n44_var_ref_α
n43_op11_β:
                                                                                        jmp   proc_last$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n46_lit_integer_α
.Lx80_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n47_op11_α
.Lx81_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 864]
                        lea              r8, [rbp + 864]
.Lx82_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_111
                        cmp              esi, 1
                                                                                        jne   .Lx82_112
                        mov              r8, rax
                                                                                        jmp   .Lx82_110
.Lx82_112:
                        cmp              esi, 2
                                                                                        jne   .Lx82_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_111
                        mov              r8, rax
                                                                                        jmp   .Lx82_110
.Lx82_113:
                        cmp              eax, 13
                                                                                        jne   .Lx82_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_111
                        cmp              rax, r8
                                                                                        je    .Lx82_111
                        mov              r8, rax
                                                                                        jmp   .Lx82_110
.Lx82_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_114
                        cmp              eax, 99
                                                                                        je    .Lx82_114
                        cmp              eax, 13
                                                                                        jne   .Lx82_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx82_114
                                                                                        jmp   .Lx82_118
.Lx82_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx82_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx82_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx82_115
                                                                                        jmp   .Lx82_114
.Lx82_119:
                        cmp              eax, 6
                                                                                        jne   .Lx82_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx82_114
                                                                                        jmp   .Lx82_115
.Lx82_120:
                        cmp              eax, 1
                                                                                        jne   .Lx82_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx82_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx82_114
                                                                                        jmp   .Lx82_115
.Lx82_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx82_117
.Lx82_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx82_117
.Lx82_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx82_117:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n49_var_ref_α
                                                                                        jmp   n48_var_ref_α
n47_op11_β:
                                                                                        jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n52_var_ref_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n53_lit_integer_α
.Lx88_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n55_op11_α
.Lx91_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n56_op11_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "[]"
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
.Lx93_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx93_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_111
                        cmp              esi, 1
                                                                                        jne   .Lx93_112
                        mov              r8, rax
                                                                                        jmp   .Lx93_110
.Lx93_112:
                        cmp              esi, 2
                                                                                        jne   .Lx93_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx93_111
                        mov              r8, rax
                                                                                        jmp   .Lx93_110
.Lx93_113:
                        cmp              eax, 13
                                                                                        jne   .Lx93_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_111
                        cmp              rax, r8
                                                                                        je    .Lx93_111
                        mov              r8, rax
                                                                                        jmp   .Lx93_110
.Lx93_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx93_114
                        cmp              eax, 99
                                                                                        je    .Lx93_114
                        cmp              eax, 13
                                                                                        jne   .Lx93_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx93_114
                                                                                        jmp   .Lx93_118
.Lx93_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx93_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx93_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx93_115
                                                                                        jmp   .Lx93_114
.Lx93_119:
                        cmp              eax, 6
                                                                                        jne   .Lx93_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx93_114
                                                                                        jmp   .Lx93_115
.Lx93_120:
                        cmp              eax, 1
                                                                                        jne   .Lx93_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx93_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx93_114
                                                                                        jmp   .Lx93_115
.Lx93_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx93_117
.Lx93_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx93_117
.Lx93_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx93_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n58_op11_α
                                                                                        jmp   n57_var_ref_α
n55_op11_β:
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n60_op11_α
                                                                                        jmp   n59_op11_α
n56_op11_β:
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
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
                                                                                        je    proc_last$2F2_ω
                                                                                        jmp   proc_last$2F2_ω
n58_op11_β:
                                                                                        jmp   proc_last$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
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
                        lea              r9, [rbp + 688]
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
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n60_op11_α
                                                                                        jmp   n62_var_ref_α
n59_op11_β:
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_last$2F2_ω
                                                                                        jmp   n49_var_ref_α
n60_op11_β:
                                                                                        jmp   proc_last$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n65_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx108_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_61
                        cmp              esi, 1
                                                                                        jne   .Lx108_62
                        mov              r8, rax
                                                                                        jmp   .Lx108_60
.Lx108_62:
                        cmp              esi, 2
                                                                                        jne   .Lx108_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_61
                        mov              r8, rax
                                                                                        jmp   .Lx108_60
.Lx108_63:
                        cmp              eax, 13
                                                                                        jne   .Lx108_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_61
                        cmp              rax, r8
                                                                                        je    .Lx108_61
                        mov              r8, rax
                                                                                        jmp   .Lx108_60
.Lx108_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_80
                        cmp              eax, 99
                                                                                        je    .Lx108_80
                        cmp              eax, 13
                                                                                        jne   .Lx108_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx108_80
                                                                                        jmp   .Lx108_74
.Lx108_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx108_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx108_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx108_73
                        lea              r9, [rbp + 368]
.Lx108_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_65
                        cmp              esi, 1
                                                                                        jne   .Lx108_66
                        mov              r9, rax
                                                                                        jmp   .Lx108_64
.Lx108_66:
                        cmp              esi, 2
                                                                                        jne   .Lx108_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_65
                        mov              r9, rax
                                                                                        jmp   .Lx108_64
.Lx108_67:
                        cmp              eax, 13
                                                                                        jne   .Lx108_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_65
                        cmp              rax, r9
                                                                                        je    .Lx108_65
                        mov              r9, rax
                                                                                        jmp   .Lx108_64
.Lx108_65:
                        lea              rcx, [rbp + 384]
.Lx108_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx108_69
                        cmp              esi, 1
                                                                                        jne   .Lx108_70
                        mov              rcx, rax
                                                                                        jmp   .Lx108_68
.Lx108_70:
                        cmp              esi, 2
                                                                                        jne   .Lx108_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_69
                        mov              rcx, rax
                                                                                        jmp   .Lx108_68
.Lx108_71:
                        cmp              eax, 13
                                                                                        jne   .Lx108_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx108_69
                        cmp              rax, rcx
                                                                                        je    .Lx108_69
                        mov              rcx, rax
                                                                                        jmp   .Lx108_68
.Lx108_69:
                        cmp              r9, rcx
                                                                                        je    .Lx108_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_75
                        cmp              eax, 99
                                                                                        je    .Lx108_75
                        cmp              eax, 13
                                                                                        jne   .Lx108_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx108_75
                                                                                        jmp   .Lx108_72
.Lx108_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_76
                        cmp              eax, 99
                                                                                        je    .Lx108_76
                        cmp              eax, 13
                                                                                        jne   .Lx108_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx108_76
                                                                                        jmp   .Lx108_72
.Lx108_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx108_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx108_72
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
                                                                                        jmp   .Lx108_77
.Lx108_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx108_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx108_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx108_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx108_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx108_72
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
                        lea              r9, [rbp + 368]
.Lx108_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_82
                        cmp              esi, 1
                                                                                        jne   .Lx108_83
                        mov              r9, rax
                                                                                        jmp   .Lx108_81
.Lx108_83:
                        cmp              esi, 2
                                                                                        jne   .Lx108_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_82
                        mov              r9, rax
                                                                                        jmp   .Lx108_81
.Lx108_84:
                        cmp              eax, 13
                                                                                        jne   .Lx108_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_82
                        cmp              rax, r9
                                                                                        je    .Lx108_82
                        mov              r9, rax
                                                                                        jmp   .Lx108_81
.Lx108_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_85
                        cmp              eax, 99
                                                                                        je    .Lx108_85
                        cmp              eax, 13
                                                                                        jne   .Lx108_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx108_85
                                                                                        jmp   .Lx108_86
.Lx108_85:
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
                                                                                        jmp   .Lx108_87
.Lx108_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx108_87:
                        lea              rcx, [rbp + 384]
.Lx108_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx108_89
                        cmp              esi, 1
                                                                                        jne   .Lx108_90
                        mov              rcx, rax
                                                                                        jmp   .Lx108_88
.Lx108_90:
                        cmp              esi, 2
                                                                                        jne   .Lx108_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_89
                        mov              rcx, rax
                                                                                        jmp   .Lx108_88
.Lx108_91:
                        cmp              eax, 13
                                                                                        jne   .Lx108_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx108_89
                        cmp              rax, rcx
                                                                                        je    .Lx108_89
                        mov              rcx, rax
                                                                                        jmp   .Lx108_88
.Lx108_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_92
                        cmp              eax, 99
                                                                                        je    .Lx108_92
                        cmp              eax, 13
                                                                                        jne   .Lx108_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx108_92
                                                                                        jmp   .Lx108_93
.Lx108_92:
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
                                                                                        jmp   .Lx108_94
.Lx108_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx108_94:
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
                                                                                        jmp   .Lx108_77
.Lx108_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx108_77
.Lx108_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx108_77:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n58_op11_α
                                                                                        jmp   n67_var_ref_α
n65_op11_β:
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
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
.Lx109_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx109_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_41
                        cmp              esi, 1
                                                                                        jne   .Lx109_55
                        mov              r8, rax
                                                                                        jmp   .Lx109_40
.Lx109_55:
                        cmp              esi, 2
                                                                                        jne   .Lx109_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx109_41
                        mov              r8, rax
                                                                                        jmp   .Lx109_40
.Lx109_56:
                        cmp              eax, 13
                                                                                        jne   .Lx109_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_41
                        cmp              rax, r8
                                                                                        je    .Lx109_41
                        mov              r8, rax
                                                                                        jmp   .Lx109_40
.Lx109_41:
                        lea              r9, [rbp + 608]
.Lx109_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx109_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_43
                        cmp              esi, 1
                                                                                        jne   .Lx109_57
                        mov              r9, rax
                                                                                        jmp   .Lx109_42
.Lx109_57:
                        cmp              esi, 2
                                                                                        jne   .Lx109_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx109_43
                        mov              r9, rax
                                                                                        jmp   .Lx109_42
.Lx109_58:
                        cmp              eax, 13
                                                                                        jne   .Lx109_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_43
                        cmp              rax, r9
                                                                                        je    .Lx109_43
                        mov              r9, rax
                                                                                        jmp   .Lx109_42
.Lx109_43:
                        cmp              r8, r9
                                                                                        je    .Lx109_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx109_44
                        cmp              eax, 99
                                                                                        je    .Lx109_44
                        cmp              eax, 13
                                                                                        jne   .Lx109_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx109_44
                                                                                        jmp   .Lx109_45
.Lx109_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx109_53
                        cmp              eax, 99
                                                                                        je    .Lx109_53
                        cmp              eax, 13
                                                                                        jne   .Lx109_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx109_53
                                                                                        jmp   .Lx109_46
.Lx109_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx109_53
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
                                                                                        jmp   .Lx109_51
.Lx109_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx109_47
                        cmp              eax, 99
                                                                                        je    .Lx109_47
                        cmp              eax, 13
                                                                                        jne   .Lx109_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx109_47
                                                                                        jmp   .Lx109_48
.Lx109_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx109_53
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
                                                                                        jmp   .Lx109_51
.Lx109_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx109_49
                        cmp              edx, 14
                                                                                        je    .Lx109_53
                                                                                        jmp   .Lx109_52
.Lx109_49:
                        cmp              edx, 14
                                                                                        je    .Lx109_52
                        cmp              ecx, 7
                                                                                        je    .Lx109_53
                        cmp              edx, 7
                                                                                        je    .Lx109_53
                        cmp              ecx, 6
                                                                                        jne   .Lx109_50
                        cmp              edx, 6
                                                                                        jne   .Lx109_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx109_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx109_51
                                                                                        jmp   .Lx109_52
.Lx109_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx109_53
.Lx109_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx109_54
.Lx109_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx109_54
.Lx109_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx109_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n60_op11_α
                                                                                        jmp   n68_op19_α
n66_op11_β:
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op19_α:
                                                                                        jmp   n70_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_move_label_α:
                        lea              rax, [rip + n60_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_last$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
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
                        lea              r9, [rbp + 272]
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n58_op11_α
                                                                                        jmp   n73_var_ref_α
n71_op11_β:
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n72_disjunction_β:
                                                                                        jmp   proc_last$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n75_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 224]
                        call             proc_last$2F2_dcα
                                                                                        jmp   .Lx125_2
.Lx125_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n58_op11_α
                                                                                        jmp   n76_move_label_α
n75_call_proc_staged_β:
                                                                                        jmp   n58_op11_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "last/2"
#-----------------------------------------------------------------------------------------------------------------------
n76_move_label_α:
                        lea              rax, [rip + n75_call_proc_staged_β]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_last$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_last$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_last$2F2_β:
                                                                                        jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_last$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1016]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, [rbp + 1032]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_last$2F2_ω:
                        mov              rax, [rbp + 1024]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, [rbp + 1032]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_last$2F2_dcα:
                        pop              r11
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1008], r11
                        lea              rax, [rip + .Lx128_2]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rax, [rip + .Lx128_3]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 960
                        mov              edx, 1008
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_last$2F2_α_body
.Lx128_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1040
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx128_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1040
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 3488
                        mov              [rsp + 3464], rcx
                        mov              [rsp + 3472], rdx
                        mov              [rsp + 3480], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3344
                        mov              edx, 3456
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n129_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx228_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx228_101
.Lx228_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx228_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n130_var_ref_α
n129_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n131_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        mov              qword ptr [rbp + 3296], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx232_20
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx232_21
.Lx232_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        call             rt_arg_stage@PLT
.Lx232_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx232_1
                        lea              rcx, [rip + .Lx232_3]
                        lea              rdx, [rip + .Lx232_4]
                                                                                        jmp   rax
.Lx232_3:
                        mov              qword ptr [rbp + 3304], rsp
                        mov              rax, qword ptr [rbp + 3296]
                        test             rax, rax
                                                                                        jne   .Lx232_5
                        mov              qword ptr [rbp + 3296], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx232_2
.Lx232_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx232_2
.Lx232_4:
                        mov              rax, qword ptr [rbp + 3296]
                        test             rax, rax
                                                                                        jne   .Lx232_6
                        mov              qword ptr [rbp + 3296], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx232_2
.Lx232_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx232_2
.Lx232_1:
                        call             rt_faildescr@PLT
.Lx232_2:
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n132_var_ref_α
n131_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3304]
                                                                                        jmp   qword ptr [rsp]
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n134_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
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
n133_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              qword ptr [rbp + 3216], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx237_20
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx237_21
.Lx237_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        call             rt_arg_stage@PLT
.Lx237_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx237_1
                        lea              rcx, [rip + .Lx237_3]
                        lea              rdx, [rip + .Lx237_4]
                                                                                        jmp   rax
.Lx237_3:
                        mov              qword ptr [rbp + 3224], rsp
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx237_5
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx237_2
.Lx237_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx237_2
.Lx237_4:
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx237_6
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx237_2
.Lx237_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx237_2
.Lx237_1:
                        call             rt_faildescr@PLT
.Lx237_2:
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n131_call_proc_staged_β
                                                                                        jmp   n135_var_ref_α
n134_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3224]
                                                                                        jmp   qword ptr [rsp]
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n136_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              qword ptr [rbp + 3136], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx241_20
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx241_21
.Lx241_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        call             rt_arg_stage@PLT
.Lx241_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx241_1
                        lea              rcx, [rip + .Lx241_3]
                        lea              rdx, [rip + .Lx241_4]
                                                                                        jmp   rax
.Lx241_3:
                        mov              qword ptr [rbp + 3144], rsp
                        mov              rax, qword ptr [rbp + 3136]
                        test             rax, rax
                                                                                        jne   .Lx241_5
                        mov              qword ptr [rbp + 3136], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx241_2
.Lx241_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx241_2
.Lx241_4:
                        mov              rax, qword ptr [rbp + 3136]
                        test             rax, rax
                                                                                        jne   .Lx241_6
                        mov              qword ptr [rbp + 3136], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx241_2
.Lx241_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx241_2
.Lx241_1:
                        call             rt_faildescr@PLT
.Lx241_2:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n134_call_proc_staged_β
                                                                                        jmp   n137_var_ref_α
n136_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3144]
                                                                                        jmp   qword ptr [rsp]
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n138_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              qword ptr [rbp + 3056], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_20
                        mov              rax, qword ptr [rbp + 3088]
                        mov              rdx, qword ptr [rbp + 3096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx245_21
.Lx245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3088]
                        mov              rdx, qword ptr [rbp + 3096]
                        call             rt_arg_stage@PLT
.Lx245_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx245_1
                        lea              rcx, [rip + .Lx245_3]
                        lea              rdx, [rip + .Lx245_4]
                                                                                        jmp   rax
.Lx245_3:
                        mov              qword ptr [rbp + 3064], rsp
                        mov              rax, qword ptr [rbp + 3056]
                        test             rax, rax
                                                                                        jne   .Lx245_5
                        mov              qword ptr [rbp + 3056], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_4:
                        mov              rax, qword ptr [rbp + 3056]
                        test             rax, rax
                                                                                        jne   .Lx245_6
                        mov              qword ptr [rbp + 3056], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_1:
                        call             rt_faildescr@PLT
.Lx245_2:
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_proc_staged_β
                                                                                        jmp   n139_var_ref_α
n138_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3064]
                                                                                        jmp   qword ptr [rsp]
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n140_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        mov              qword ptr [rbp + 2976], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_20
                        mov              rax, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx249_21
.Lx249_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
                        call             rt_arg_stage@PLT
.Lx249_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx249_1
                        lea              rcx, [rip + .Lx249_3]
                        lea              rdx, [rip + .Lx249_4]
                                                                                        jmp   rax
.Lx249_3:
                        mov              qword ptr [rbp + 2984], rsp
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx249_5
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_4:
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx249_6
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_1:
                        call             rt_faildescr@PLT
.Lx249_2:
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n138_call_proc_staged_β
                                                                                        jmp   n141_var_ref_α
n140_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2984]
                                                                                        jmp   qword ptr [rsp]
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n142_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        mov              qword ptr [rbp + 2896], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_20
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx253_21
.Lx253_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        call             rt_arg_stage@PLT
.Lx253_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx253_1
                        lea              rcx, [rip + .Lx253_3]
                        lea              rdx, [rip + .Lx253_4]
                                                                                        jmp   rax
.Lx253_3:
                        mov              qword ptr [rbp + 2904], rsp
                        mov              rax, qword ptr [rbp + 2896]
                        test             rax, rax
                                                                                        jne   .Lx253_5
                        mov              qword ptr [rbp + 2896], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_4:
                        mov              rax, qword ptr [rbp + 2896]
                        test             rax, rax
                                                                                        jne   .Lx253_6
                        mov              qword ptr [rbp + 2896], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_1:
                        call             rt_faildescr@PLT
.Lx253_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n140_call_proc_staged_β
                                                                                        jmp   n143_var_ref_α
n142_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2904]
                                                                                        jmp   qword ptr [rsp]
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n144_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n145_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        mov              qword ptr [rbp + 2800], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx259_20
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx259_21
.Lx259_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        call             rt_arg_stage@PLT
.Lx259_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx259_22
                        mov              rax, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx259_23
.Lx259_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        call             rt_arg_stage@PLT
.Lx259_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx259_1
                        lea              rcx, [rip + .Lx259_3]
                        lea              rdx, [rip + .Lx259_4]
                                                                                        jmp   rax
.Lx259_3:
                        mov              qword ptr [rbp + 2808], rsp
                        mov              rax, qword ptr [rbp + 2800]
                        test             rax, rax
                                                                                        jne   .Lx259_5
                        mov              qword ptr [rbp + 2800], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx259_2
.Lx259_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx259_2
.Lx259_4:
                        mov              rax, qword ptr [rbp + 2800]
                        test             rax, rax
                                                                                        jne   .Lx259_6
                        mov              qword ptr [rbp + 2800], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx259_2
.Lx259_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx259_2
.Lx259_1:
                        call             rt_faildescr@PLT
.Lx259_2:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n142_call_proc_staged_β
                                                                                        jmp   n146_var_ref_α
n145_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2808]
                                                                                        jmp   qword ptr [rsp]
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n148_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        mov              qword ptr [rbp + 2688], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx265_20
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx265_21
.Lx265_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_arg_stage@PLT
.Lx265_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx265_22
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx265_23
.Lx265_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        call             rt_arg_stage@PLT
.Lx265_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx265_1
                        lea              rcx, [rip + .Lx265_3]
                        lea              rdx, [rip + .Lx265_4]
                                                                                        jmp   rax
.Lx265_3:
                        mov              qword ptr [rbp + 2696], rsp
                        mov              rax, qword ptr [rbp + 2688]
                        test             rax, rax
                                                                                        jne   .Lx265_5
                        mov              qword ptr [rbp + 2688], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_4:
                        mov              rax, qword ptr [rbp + 2688]
                        test             rax, rax
                                                                                        jne   .Lx265_6
                        mov              qword ptr [rbp + 2688], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_1:
                        call             rt_faildescr@PLT
.Lx265_2:
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n145_call_proc_staged_β
                                                                                        jmp   n149_var_ref_α
n148_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2696]
                                                                                        jmp   qword ptr [rsp]
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n151_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        mov              qword ptr [rbp + 2576], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx271_20
                        mov              rax, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx271_21
.Lx271_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        call             rt_arg_stage@PLT
.Lx271_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx271_22
                        mov              rax, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx271_23
.Lx271_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        call             rt_arg_stage@PLT
.Lx271_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx271_1
                        lea              rcx, [rip + .Lx271_3]
                        lea              rdx, [rip + .Lx271_4]
                                                                                        jmp   rax
.Lx271_3:
                        mov              qword ptr [rbp + 2584], rsp
                        mov              rax, qword ptr [rbp + 2576]
                        test             rax, rax
                                                                                        jne   .Lx271_5
                        mov              qword ptr [rbp + 2576], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx271_2
.Lx271_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx271_2
.Lx271_4:
                        mov              rax, qword ptr [rbp + 2576]
                        test             rax, rax
                                                                                        jne   .Lx271_6
                        mov              qword ptr [rbp + 2576], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx271_2
.Lx271_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx271_2
.Lx271_1:
                        call             rt_faildescr@PLT
.Lx271_2:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n148_call_proc_staged_β
                                                                                        jmp   n152_var_ref_α
n151_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2584]
                                                                                        jmp   qword ptr [rsp]
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n154_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        mov              qword ptr [rbp + 2464], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_20
                        mov              rax, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx277_21
.Lx277_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        call             rt_arg_stage@PLT
.Lx277_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_22
                        mov              rax, qword ptr [rbp + 2512]
                        mov              rdx, qword ptr [rbp + 2520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx277_23
.Lx277_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2512]
                        mov              rdx, qword ptr [rbp + 2520]
                        call             rt_arg_stage@PLT
.Lx277_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx277_1
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4]
                                                                                        jmp   rax
.Lx277_3:
                        mov              qword ptr [rbp + 2472], rsp
                        mov              rax, qword ptr [rbp + 2464]
                        test             rax, rax
                                                                                        jne   .Lx277_5
                        mov              qword ptr [rbp + 2464], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_4:
                        mov              rax, qword ptr [rbp + 2464]
                        test             rax, rax
                                                                                        jne   .Lx277_6
                        mov              qword ptr [rbp + 2464], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_1:
                        call             rt_faildescr@PLT
.Lx277_2:
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n151_call_proc_staged_β
                                                                                        jmp   n155_var_ref_α
n154_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2472]
                                                                                        jmp   qword ptr [rsp]
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              qword ptr [rbp + 2352], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx283_20
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx283_21
.Lx283_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        call             rt_arg_stage@PLT
.Lx283_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx283_22
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx283_23
.Lx283_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        call             rt_arg_stage@PLT
.Lx283_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx283_1
                        lea              rcx, [rip + .Lx283_3]
                        lea              rdx, [rip + .Lx283_4]
                                                                                        jmp   rax
.Lx283_3:
                        mov              qword ptr [rbp + 2360], rsp
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax
                                                                                        jne   .Lx283_5
                        mov              qword ptr [rbp + 2352], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx283_2
.Lx283_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx283_2
.Lx283_4:
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax
                                                                                        jne   .Lx283_6
                        mov              qword ptr [rbp + 2352], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx283_2
.Lx283_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx283_2
.Lx283_1:
                        call             rt_faildescr@PLT
.Lx283_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n158_var_ref_α
n157_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2360]
                                                                                        jmp   qword ptr [rsp]
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n160_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        mov              qword ptr [rbp + 2240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx289_20
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx289_21
.Lx289_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        call             rt_arg_stage@PLT
.Lx289_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx289_22
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx289_23
.Lx289_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_arg_stage@PLT
.Lx289_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx289_1
                        lea              rcx, [rip + .Lx289_3]
                        lea              rdx, [rip + .Lx289_4]
                                                                                        jmp   rax
.Lx289_3:
                        mov              qword ptr [rbp + 2248], rsp
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx289_5
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx289_2
.Lx289_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx289_2
.Lx289_4:
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx289_6
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx289_2
.Lx289_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx289_2
.Lx289_1:
                        call             rt_faildescr@PLT
.Lx289_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n157_call_proc_staged_β
                                                                                        jmp   n161_var_ref_α
n160_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2248]
                                                                                        jmp   qword ptr [rsp]
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n163_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        mov              qword ptr [rbp + 2128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_20
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx295_21
.Lx295_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        call             rt_arg_stage@PLT
.Lx295_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_22
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx295_23
.Lx295_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        call             rt_arg_stage@PLT
.Lx295_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx295_1
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4]
                                                                                        jmp   rax
.Lx295_3:
                        mov              qword ptr [rbp + 2136], rsp
                        mov              rax, qword ptr [rbp + 2128]
                        test             rax, rax
                                                                                        jne   .Lx295_5
                        mov              qword ptr [rbp + 2128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_4:
                        mov              rax, qword ptr [rbp + 2128]
                        test             rax, rax
                                                                                        jne   .Lx295_6
                        mov              qword ptr [rbp + 2128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_1:
                        call             rt_faildescr@PLT
.Lx295_2:
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n160_call_proc_staged_β
                                                                                        jmp   n164_var_ref_α
n163_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2136]
                                                                                        jmp   qword ptr [rsp]
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n166_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_proc_staged_α:
                        mov              qword ptr [rbp + 2016], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_20
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx301_21
.Lx301_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx301_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_22
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx301_23
.Lx301_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        call             rt_arg_stage@PLT
.Lx301_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx301_1
                        lea              rcx, [rip + .Lx301_3]
                        lea              rdx, [rip + .Lx301_4]
                                                                                        jmp   rax
.Lx301_3:
                        mov              qword ptr [rbp + 2024], rsp
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx301_5
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_4:
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx301_6
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_1:
                        call             rt_faildescr@PLT
.Lx301_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n163_call_proc_staged_β
                                                                                        jmp   n167_var_ref_α
n166_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2024]
                                                                                        jmp   qword ptr [rsp]
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n169_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        mov              qword ptr [rbp + 1904], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx307_20
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx307_21
.Lx307_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        call             rt_arg_stage@PLT
.Lx307_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx307_22
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx307_23
.Lx307_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        call             rt_arg_stage@PLT
.Lx307_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx307_1
                        lea              rcx, [rip + .Lx307_3]
                        lea              rdx, [rip + .Lx307_4]
                                                                                        jmp   rax
.Lx307_3:
                        mov              qword ptr [rbp + 1912], rsp
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx307_5
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx307_2
.Lx307_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx307_2
.Lx307_4:
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx307_6
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx307_2
.Lx307_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx307_2
.Lx307_1:
                        call             rt_faildescr@PLT
.Lx307_2:
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n166_call_proc_staged_β
                                                                                        jmp   n170_var_ref_α
n169_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1912]
                                                                                        jmp   qword ptr [rsp]
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n171_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n172_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        mov              qword ptr [rbp + 1792], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx313_20
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx313_21
.Lx313_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx313_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx313_22
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx313_23
.Lx313_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        call             rt_arg_stage@PLT
.Lx313_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx313_1
                        lea              rcx, [rip + .Lx313_3]
                        lea              rdx, [rip + .Lx313_4]
                                                                                        jmp   rax
.Lx313_3:
                        mov              qword ptr [rbp + 1800], rsp
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx313_5
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx313_2
.Lx313_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx313_2
.Lx313_4:
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx313_6
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx313_2
.Lx313_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx313_2
.Lx313_1:
                        call             rt_faildescr@PLT
.Lx313_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_proc_staged_β
                                                                                        jmp   n173_var_ref_α
n172_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1800]
                                                                                        jmp   qword ptr [rsp]
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n174_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n175_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              qword ptr [rbp + 1680], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx319_20
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx319_21
.Lx319_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        call             rt_arg_stage@PLT
.Lx319_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx319_22
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx319_23
.Lx319_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_arg_stage@PLT
.Lx319_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx319_1
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4]
                                                                                        jmp   rax
.Lx319_3:
                        mov              qword ptr [rbp + 1688], rsp
                        mov              rax, qword ptr [rbp + 1680]
                        test             rax, rax
                                                                                        jne   .Lx319_5
                        mov              qword ptr [rbp + 1680], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_4:
                        mov              rax, qword ptr [rbp + 1680]
                        test             rax, rax
                                                                                        jne   .Lx319_6
                        mov              qword ptr [rbp + 1680], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_1:
                        call             rt_faildescr@PLT
.Lx319_2:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n172_call_proc_staged_β
                                                                                        jmp   n176_var_ref_α
n175_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1688]
                                                                                        jmp   qword ptr [rsp]
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n177_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n178_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_proc_staged_α:
                        mov              qword ptr [rbp + 1568], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx325_20
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx325_21
.Lx325_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        call             rt_arg_stage@PLT
.Lx325_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx325_22
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx325_23
.Lx325_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        call             rt_arg_stage@PLT
.Lx325_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx325_1
                        lea              rcx, [rip + .Lx325_3]
                        lea              rdx, [rip + .Lx325_4]
                                                                                        jmp   rax
.Lx325_3:
                        mov              qword ptr [rbp + 1576], rsp
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx325_5
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx325_2
.Lx325_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx325_2
.Lx325_4:
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx325_6
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx325_2
.Lx325_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx325_2
.Lx325_1:
                        call             rt_faildescr@PLT
.Lx325_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n175_call_proc_staged_β
                                                                                        jmp   n179_var_ref_α
n178_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1576]
                                                                                        jmp   qword ptr [rsp]
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        mov              qword ptr [rbp + 1456], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx331_20
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx331_21
.Lx331_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_arg_stage@PLT
.Lx331_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx331_22
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx331_23
.Lx331_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        call             rt_arg_stage@PLT
.Lx331_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx331_1
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4]
                                                                                        jmp   rax
.Lx331_3:
                        mov              qword ptr [rbp + 1464], rsp
                        mov              rax, qword ptr [rbp + 1456]
                        test             rax, rax
                                                                                        jne   .Lx331_5
                        mov              qword ptr [rbp + 1456], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx331_2
.Lx331_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx331_2
.Lx331_4:
                        mov              rax, qword ptr [rbp + 1456]
                        test             rax, rax
                                                                                        jne   .Lx331_6
                        mov              qword ptr [rbp + 1456], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx331_2
.Lx331_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx331_2
.Lx331_1:
                        call             rt_faildescr@PLT
.Lx331_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n178_call_proc_staged_β
                                                                                        jmp   n182_var_ref_α
n181_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1464]
                                                                                        jmp   qword ptr [rsp]
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n184_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_proc_staged_α:
                        mov              qword ptr [rbp + 1344], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx337_20
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx337_21
.Lx337_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        call             rt_arg_stage@PLT
.Lx337_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx337_22
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx337_23
.Lx337_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx337_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx337_1
                        lea              rcx, [rip + .Lx337_3]
                        lea              rdx, [rip + .Lx337_4]
                                                                                        jmp   rax
.Lx337_3:
                        mov              qword ptr [rbp + 1352], rsp
                        mov              rax, qword ptr [rbp + 1344]
                        test             rax, rax
                                                                                        jne   .Lx337_5
                        mov              qword ptr [rbp + 1344], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx337_2
.Lx337_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx337_2
.Lx337_4:
                        mov              rax, qword ptr [rbp + 1344]
                        test             rax, rax
                                                                                        jne   .Lx337_6
                        mov              qword ptr [rbp + 1344], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx337_2
.Lx337_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx337_2
.Lx337_1:
                        call             rt_faildescr@PLT
.Lx337_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n181_call_proc_staged_β
                                                                                        jmp   n185_var_ref_α
n184_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1352]
                                                                                        jmp   qword ptr [rsp]
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n187_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        mov              qword ptr [rbp + 1232], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx343_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx343_21
.Lx343_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx343_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx343_22
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx343_23
.Lx343_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        call             rt_arg_stage@PLT
.Lx343_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx343_1
                        lea              rcx, [rip + .Lx343_3]
                        lea              rdx, [rip + .Lx343_4]
                                                                                        jmp   rax
.Lx343_3:
                        mov              qword ptr [rbp + 1240], rsp
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx343_5
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx343_2
.Lx343_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx343_2
.Lx343_4:
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx343_6
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx343_2
.Lx343_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx343_2
.Lx343_1:
                        call             rt_faildescr@PLT
.Lx343_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n184_call_proc_staged_β
                                                                                        jmp   n188_var_ref_α
n187_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1240]
                                                                                        jmp   qword ptr [rsp]
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n190_op11_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "forbes"
#-----------------------------------------------------------------------------------------------------------------------
n190_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lx347_2]
                                                                                        jmp   .Lx347_3
.Lx347_2:
                        .quad            .Lx347_2_s
.Lx347_2_s:
                        .string          "forbes"
.Lx347_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n187_call_proc_staged_β
                                                                                        jmp   n191_var_ref_α
n190_op11_β:
                                                                                        jmp   n187_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n193_op11_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "clayton"
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx351_2]
                                                                                        jmp   .Lx351_3
.Lx351_2:
                        .quad            .Lx351_2_s
.Lx351_2_s:
                        .string          "clayton"
.Lx351_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n194_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n193_op11_β:
                                                                                        jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n196_op11_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "clayton"
#-----------------------------------------------------------------------------------------------------------------------
n196_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              rsi, qword ptr [rip + .Lx355_2]
                                                                                        jmp   .Lx355_3
.Lx355_2:
                        .quad            .Lx355_2_s
.Lx355_2_s:
                        .string          "clayton"
.Lx355_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n197_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n196_op11_β:
                                                                                        jmp   n197_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n199_op11_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "graham"
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              rsi, qword ptr [rip + .Lx359_2]
                                                                                        jmp   .Lx359_3
.Lx359_2:
                        .quad            .Lx359_2_s
.Lx359_2_s:
                        .string          "graham"
.Lx359_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n200_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n199_op11_β:
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n202_op11_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "graham"
#-----------------------------------------------------------------------------------------------------------------------
n202_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              rsi, qword ptr [rip + .Lx363_2]
                                                                                        jmp   .Lx363_3
.Lx363_2:
                        .quad            .Lx363_2_s
.Lx363_2_s:
                        .string          "graham"
.Lx363_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n203_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n202_op11_β:
                                                                                        jmp   n203_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n205_op11_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "mcfee"
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              rsi, qword ptr [rip + .Lx367_2]
                                                                                        jmp   .Lx367_3
.Lx367_2:
                        .quad            .Lx367_2_s
.Lx367_2_s:
                        .string          "mcfee"
.Lx367_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n206_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n205_op11_β:
                                                                                        jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n208_op11_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "mcfee"
#-----------------------------------------------------------------------------------------------------------------------
n208_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx371_2]
                                                                                        jmp   .Lx371_3
.Lx371_2:
                        .quad            .Lx371_2_s
.Lx371_2_s:
                        .string          "mcfee"
.Lx371_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n209_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n208_op11_β:
                                                                                        jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n211_op11_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "mcfee"
#-----------------------------------------------------------------------------------------------------------------------
n211_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx375_2]
                                                                                        jmp   .Lx375_3
.Lx375_2:
                        .quad            .Lx375_2_s
.Lx375_2_s:
                        .string          "mcfee"
.Lx375_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n187_call_proc_staged_β
                                                                                        jmp   n212_var_ref_α
n211_op11_β:
                                                                                        jmp   n187_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n214_op11_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "warren"
#-----------------------------------------------------------------------------------------------------------------------
n214_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              rsi, qword ptr [rip + .Lx379_2]
                                                                                        jmp   .Lx379_3
.Lx379_2:
                        .quad            .Lx379_2_s
.Lx379_2_s:
                        .string          "warren"
.Lx379_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n215_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n214_op11_β:
                                                                                        jmp   n215_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n217_op11_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "clayton"
#-----------------------------------------------------------------------------------------------------------------------
n217_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              rsi, qword ptr [rip + .Lx383_2]
                                                                                        jmp   .Lx383_3
.Lx383_2:
                        .quad            .Lx383_2_s
.Lx383_2_s:
                        .string          "clayton"
.Lx383_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n218_var_ref_α
                                                                                        jmp   n187_call_proc_staged_β
n217_op11_β:
                                                                                        jmp   n218_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n220_op11_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "holgate"
#-----------------------------------------------------------------------------------------------------------------------
n220_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              rsi, qword ptr [rip + .Lx387_2]
                                                                                        jmp   .Lx387_3
.Lx387_2:
                        .quad            .Lx387_2_s
.Lx387_2_s:
                        .string          "holgate"
.Lx387_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n187_call_proc_staged_β
                                                                                        jmp   n221_var_ref_α
n220_op11_β:
                                                                                        jmp   n187_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n222_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n223_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n224_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n227_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx401_21
.Lx401_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx401_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx401_23
.Lx401_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx401_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx401_25
.Lx401_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx401_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_26
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx401_27
.Lx401_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx401_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_28
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx401_29
.Lx401_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx401_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx401_30
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx401_31
.Lx401_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx401_31:
                        mov              edi, 6
                        mov              esi, 6
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx401_1
                        lea              rcx, [rip + .Lx401_3]
                        lea              rdx, [rip + .Lx401_4]
                                                                                        jmp   rax
.Lx401_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx401_2
.Lx401_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx401_2
.Lx401_1:
                        call             rt_faildescr@PLT
.Lx401_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n187_call_proc_staged_β
                                                                                        jmp   n227_call_proc_staged_β
n227_call_proc_staged_β:
                                                                                        jmp   n187_call_proc_staged_β
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
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
                        mov              rax, [rbp + 3464]
                        mov              rbp, [rbp + 3480]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 3472]
                        lea              rsp, [rbp + 3488]
                        mov              rbp, [rbp + 3480]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
                        .global          proc_$disj0$2F0_α
                        .global          proc_$disj0$2F0_β
                        .global          proc_$disj0$2F0_γ
                        .global          proc_$disj0$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n404_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n402_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx408_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx408_101
.Lx408_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx408_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n403_call_proc_staged_α
n402_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n403_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx410_1
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4]
                                                                                        jmp   rax
.Lx410_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx410_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx410_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_1:
                        call             rt_faildescr@PLT
.Lx410_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n405_op11_α
                                                                                        jmp   n404_suspend_α
n403_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n404_suspend_α:
                        lea              rax, [rip + n404_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n404_suspend_β:
                                                                                        jmp   n403_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n405_op11_α:
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
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n406_suspend_α
n405_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_suspend_α:
                        lea              rax, [rip + n406_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n406_suspend_β:
                                                                                        jmp   n407_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n407_op11_α:
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
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   proc_$disj0$2F0_ω
n407_op11_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
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
                        lea              rax, [rip + n429_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n417_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx439_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx439_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx439_101
.Lx439_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx439_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n418_var_ref_α
n417_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n419_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n420_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
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
.Lx444_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx444_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx444_41
                        cmp              esi, 1
                                                                                        jne   .Lx444_55
                        mov              r8, rax
                                                                                        jmp   .Lx444_40
.Lx444_55:
                        cmp              esi, 2
                                                                                        jne   .Lx444_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx444_41
                        mov              r8, rax
                                                                                        jmp   .Lx444_40
.Lx444_56:
                        cmp              eax, 13
                                                                                        jne   .Lx444_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx444_41
                        cmp              rax, r8
                                                                                        je    .Lx444_41
                        mov              r8, rax
                                                                                        jmp   .Lx444_40
.Lx444_41:
                        lea              r9, [rbp + 608]
.Lx444_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx444_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx444_43
                        cmp              esi, 1
                                                                                        jne   .Lx444_57
                        mov              r9, rax
                                                                                        jmp   .Lx444_42
.Lx444_57:
                        cmp              esi, 2
                                                                                        jne   .Lx444_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx444_43
                        mov              r9, rax
                                                                                        jmp   .Lx444_42
.Lx444_58:
                        cmp              eax, 13
                                                                                        jne   .Lx444_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx444_43
                        cmp              rax, r9
                                                                                        je    .Lx444_43
                        mov              r9, rax
                                                                                        jmp   .Lx444_42
.Lx444_43:
                        cmp              r8, r9
                                                                                        je    .Lx444_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx444_44
                        cmp              eax, 99
                                                                                        je    .Lx444_44
                        cmp              eax, 13
                                                                                        jne   .Lx444_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx444_44
                                                                                        jmp   .Lx444_45
.Lx444_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx444_53
                        cmp              eax, 99
                                                                                        je    .Lx444_53
                        cmp              eax, 13
                                                                                        jne   .Lx444_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx444_53
                                                                                        jmp   .Lx444_46
.Lx444_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx444_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx444_53
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
                                                                                        jmp   .Lx444_51
.Lx444_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx444_47
                        cmp              eax, 99
                                                                                        je    .Lx444_47
                        cmp              eax, 13
                                                                                        jne   .Lx444_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx444_47
                                                                                        jmp   .Lx444_48
.Lx444_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx444_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx444_53
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
                                                                                        jmp   .Lx444_51
.Lx444_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx444_49
                        cmp              edx, 14
                                                                                        je    .Lx444_53
                                                                                        jmp   .Lx444_52
.Lx444_49:
                        cmp              edx, 14
                                                                                        je    .Lx444_52
                        cmp              ecx, 7
                                                                                        je    .Lx444_53
                        cmp              edx, 7
                                                                                        je    .Lx444_53
                        cmp              ecx, 6
                                                                                        jne   .Lx444_50
                        cmp              edx, 6
                                                                                        jne   .Lx444_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx444_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx444_51
                                                                                        jmp   .Lx444_52
.Lx444_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx444_53
.Lx444_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx444_54
.Lx444_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx444_54
.Lx444_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx444_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n422_op11_α
                                                                                        jmp   n421_var_ref_α
n420_op11_β:
                                                                                        jmp   n422_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n423_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n422_op11_α:
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
                                                                                        jmp   n424_var_ref_α
n422_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n425_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n426_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n425_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n427_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n428_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n427_op11_α:
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
.Lx456_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_61
                        cmp              esi, 1
                                                                                        jne   .Lx456_62
                        mov              r8, rax
                                                                                        jmp   .Lx456_60
.Lx456_62:
                        cmp              esi, 2
                                                                                        jne   .Lx456_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_61
                        mov              r8, rax
                                                                                        jmp   .Lx456_60
.Lx456_63:
                        cmp              eax, 13
                                                                                        jne   .Lx456_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_61
                        cmp              rax, r8
                                                                                        je    .Lx456_61
                        mov              r8, rax
                                                                                        jmp   .Lx456_60
.Lx456_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_80
                        cmp              eax, 99
                                                                                        je    .Lx456_80
                        cmp              eax, 13
                                                                                        jne   .Lx456_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx456_80
                                                                                        jmp   .Lx456_74
.Lx456_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx456_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx456_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx456_73
                        lea              r9, [rbp + 512]
.Lx456_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_65
                        cmp              esi, 1
                                                                                        jne   .Lx456_66
                        mov              r9, rax
                                                                                        jmp   .Lx456_64
.Lx456_66:
                        cmp              esi, 2
                                                                                        jne   .Lx456_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_65
                        mov              r9, rax
                                                                                        jmp   .Lx456_64
.Lx456_67:
                        cmp              eax, 13
                                                                                        jne   .Lx456_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_65
                        cmp              rax, r9
                                                                                        je    .Lx456_65
                        mov              r9, rax
                                                                                        jmp   .Lx456_64
.Lx456_65:
                        lea              rcx, [rbp + 528]
.Lx456_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx456_69
                        cmp              esi, 1
                                                                                        jne   .Lx456_70
                        mov              rcx, rax
                                                                                        jmp   .Lx456_68
.Lx456_70:
                        cmp              esi, 2
                                                                                        jne   .Lx456_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_69
                        mov              rcx, rax
                                                                                        jmp   .Lx456_68
.Lx456_71:
                        cmp              eax, 13
                                                                                        jne   .Lx456_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx456_69
                        cmp              rax, rcx
                                                                                        je    .Lx456_69
                        mov              rcx, rax
                                                                                        jmp   .Lx456_68
.Lx456_69:
                        cmp              r9, rcx
                                                                                        je    .Lx456_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_75
                        cmp              eax, 99
                                                                                        je    .Lx456_75
                        cmp              eax, 13
                                                                                        jne   .Lx456_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx456_75
                                                                                        jmp   .Lx456_72
.Lx456_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_76
                        cmp              eax, 99
                                                                                        je    .Lx456_76
                        cmp              eax, 13
                                                                                        jne   .Lx456_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx456_76
                                                                                        jmp   .Lx456_72
.Lx456_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx456_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx456_72
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
                                                                                        jmp   .Lx456_77
.Lx456_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx456_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx456_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx456_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx456_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx456_72
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
.Lx456_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_82
                        cmp              esi, 1
                                                                                        jne   .Lx456_83
                        mov              r9, rax
                                                                                        jmp   .Lx456_81
.Lx456_83:
                        cmp              esi, 2
                                                                                        jne   .Lx456_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_82
                        mov              r9, rax
                                                                                        jmp   .Lx456_81
.Lx456_84:
                        cmp              eax, 13
                                                                                        jne   .Lx456_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_82
                        cmp              rax, r9
                                                                                        je    .Lx456_82
                        mov              r9, rax
                                                                                        jmp   .Lx456_81
.Lx456_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_85
                        cmp              eax, 99
                                                                                        je    .Lx456_85
                        cmp              eax, 13
                                                                                        jne   .Lx456_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx456_85
                                                                                        jmp   .Lx456_86
.Lx456_85:
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
                                                                                        jmp   .Lx456_87
.Lx456_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx456_87:
                        lea              rcx, [rbp + 528]
.Lx456_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx456_89
                        cmp              esi, 1
                                                                                        jne   .Lx456_90
                        mov              rcx, rax
                                                                                        jmp   .Lx456_88
.Lx456_90:
                        cmp              esi, 2
                                                                                        jne   .Lx456_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_89
                        mov              rcx, rax
                                                                                        jmp   .Lx456_88
.Lx456_91:
                        cmp              eax, 13
                                                                                        jne   .Lx456_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx456_89
                        cmp              rax, rcx
                                                                                        je    .Lx456_89
                        mov              rcx, rax
                                                                                        jmp   .Lx456_88
.Lx456_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_92
                        cmp              eax, 99
                                                                                        je    .Lx456_92
                        cmp              eax, 13
                                                                                        jne   .Lx456_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx456_92
                                                                                        jmp   .Lx456_93
.Lx456_92:
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
                                                                                        jmp   .Lx456_94
.Lx456_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx456_94:
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
                                                                                        jmp   .Lx456_77
.Lx456_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx456_77
.Lx456_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx456_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n422_op11_α
                                                                                        jmp   n429_suspend_α
n427_op11_β:
                                                                                        jmp   n422_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n428_op11_α:
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
.Lx457_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx457_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_41
                        cmp              esi, 1
                                                                                        jne   .Lx457_55
                        mov              r8, rax
                                                                                        jmp   .Lx457_40
.Lx457_55:
                        cmp              esi, 2
                                                                                        jne   .Lx457_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx457_41
                        mov              r8, rax
                                                                                        jmp   .Lx457_40
.Lx457_56:
                        cmp              eax, 13
                                                                                        jne   .Lx457_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_41
                        cmp              rax, r8
                                                                                        je    .Lx457_41
                        mov              r8, rax
                                                                                        jmp   .Lx457_40
.Lx457_41:
                        lea              r9, [rbp + 368]
.Lx457_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx457_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_43
                        cmp              esi, 1
                                                                                        jne   .Lx457_57
                        mov              r9, rax
                                                                                        jmp   .Lx457_42
.Lx457_57:
                        cmp              esi, 2
                                                                                        jne   .Lx457_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx457_43
                        mov              r9, rax
                                                                                        jmp   .Lx457_42
.Lx457_58:
                        cmp              eax, 13
                                                                                        jne   .Lx457_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_43
                        cmp              rax, r9
                                                                                        je    .Lx457_43
                        mov              r9, rax
                                                                                        jmp   .Lx457_42
.Lx457_43:
                        cmp              r8, r9
                                                                                        je    .Lx457_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx457_44
                        cmp              eax, 99
                                                                                        je    .Lx457_44
                        cmp              eax, 13
                                                                                        jne   .Lx457_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx457_44
                                                                                        jmp   .Lx457_45
.Lx457_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx457_53
                        cmp              eax, 99
                                                                                        je    .Lx457_53
                        cmp              eax, 13
                                                                                        jne   .Lx457_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx457_53
                                                                                        jmp   .Lx457_46
.Lx457_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx457_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx457_53
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
                                                                                        jmp   .Lx457_51
.Lx457_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx457_47
                        cmp              eax, 99
                                                                                        je    .Lx457_47
                        cmp              eax, 13
                                                                                        jne   .Lx457_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx457_47
                                                                                        jmp   .Lx457_48
.Lx457_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx457_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx457_53
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
                                                                                        jmp   .Lx457_51
.Lx457_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx457_49
                        cmp              edx, 14
                                                                                        je    .Lx457_53
                                                                                        jmp   .Lx457_52
.Lx457_49:
                        cmp              edx, 14
                                                                                        je    .Lx457_52
                        cmp              ecx, 7
                                                                                        je    .Lx457_53
                        cmp              edx, 7
                                                                                        je    .Lx457_53
                        cmp              ecx, 6
                                                                                        jne   .Lx457_50
                        cmp              edx, 6
                                                                                        jne   .Lx457_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx457_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx457_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx457_51
                                                                                        jmp   .Lx457_52
.Lx457_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx457_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx457_53
.Lx457_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx457_54
.Lx457_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx457_54
.Lx457_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx457_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n431_op11_α
                                                                                        jmp   n430_var_ref_α
n428_op11_β:
                                                                                        jmp   n431_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n429_suspend_α:
                        lea              rax, [rip + n429_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n429_suspend_β:
                                                                                        jmp   n422_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n432_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n431_op11_α:
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
n431_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n433_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
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
.Lx467_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_61
                        cmp              esi, 1
                                                                                        jne   .Lx467_62
                        mov              r8, rax
                                                                                        jmp   .Lx467_60
.Lx467_62:
                        cmp              esi, 2
                                                                                        jne   .Lx467_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_61
                        mov              r8, rax
                                                                                        jmp   .Lx467_60
.Lx467_63:
                        cmp              eax, 13
                                                                                        jne   .Lx467_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_61
                        cmp              rax, r8
                                                                                        je    .Lx467_61
                        mov              r8, rax
                                                                                        jmp   .Lx467_60
.Lx467_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_80
                        cmp              eax, 99
                                                                                        je    .Lx467_80
                        cmp              eax, 13
                                                                                        jne   .Lx467_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx467_80
                                                                                        jmp   .Lx467_74
.Lx467_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx467_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx467_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx467_73
                        lea              r9, [rbp + 272]
.Lx467_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_65
                        cmp              esi, 1
                                                                                        jne   .Lx467_66
                        mov              r9, rax
                                                                                        jmp   .Lx467_64
.Lx467_66:
                        cmp              esi, 2
                                                                                        jne   .Lx467_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_65
                        mov              r9, rax
                                                                                        jmp   .Lx467_64
.Lx467_67:
                        cmp              eax, 13
                                                                                        jne   .Lx467_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_65
                        cmp              rax, r9
                                                                                        je    .Lx467_65
                        mov              r9, rax
                                                                                        jmp   .Lx467_64
.Lx467_65:
                        lea              rcx, [rbp + 288]
.Lx467_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx467_69
                        cmp              esi, 1
                                                                                        jne   .Lx467_70
                        mov              rcx, rax
                                                                                        jmp   .Lx467_68
.Lx467_70:
                        cmp              esi, 2
                                                                                        jne   .Lx467_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_69
                        mov              rcx, rax
                                                                                        jmp   .Lx467_68
.Lx467_71:
                        cmp              eax, 13
                                                                                        jne   .Lx467_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx467_69
                        cmp              rax, rcx
                                                                                        je    .Lx467_69
                        mov              rcx, rax
                                                                                        jmp   .Lx467_68
.Lx467_69:
                        cmp              r9, rcx
                                                                                        je    .Lx467_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_75
                        cmp              eax, 99
                                                                                        je    .Lx467_75
                        cmp              eax, 13
                                                                                        jne   .Lx467_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_75
                                                                                        jmp   .Lx467_72
.Lx467_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_76
                        cmp              eax, 99
                                                                                        je    .Lx467_76
                        cmp              eax, 13
                                                                                        jne   .Lx467_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx467_76
                                                                                        jmp   .Lx467_72
.Lx467_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx467_72
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
                                                                                        jmp   .Lx467_77
.Lx467_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx467_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx467_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx467_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx467_72
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
.Lx467_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_82
                        cmp              esi, 1
                                                                                        jne   .Lx467_83
                        mov              r9, rax
                                                                                        jmp   .Lx467_81
.Lx467_83:
                        cmp              esi, 2
                                                                                        jne   .Lx467_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_82
                        mov              r9, rax
                                                                                        jmp   .Lx467_81
.Lx467_84:
                        cmp              eax, 13
                                                                                        jne   .Lx467_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_82
                        cmp              rax, r9
                                                                                        je    .Lx467_82
                        mov              r9, rax
                                                                                        jmp   .Lx467_81
.Lx467_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_85
                        cmp              eax, 99
                                                                                        je    .Lx467_85
                        cmp              eax, 13
                                                                                        jne   .Lx467_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_85
                                                                                        jmp   .Lx467_86
.Lx467_85:
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
                                                                                        jmp   .Lx467_87
.Lx467_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx467_87:
                        lea              rcx, [rbp + 288]
.Lx467_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx467_89
                        cmp              esi, 1
                                                                                        jne   .Lx467_90
                        mov              rcx, rax
                                                                                        jmp   .Lx467_88
.Lx467_90:
                        cmp              esi, 2
                                                                                        jne   .Lx467_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_89
                        mov              rcx, rax
                                                                                        jmp   .Lx467_88
.Lx467_91:
                        cmp              eax, 13
                                                                                        jne   .Lx467_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx467_89
                        cmp              rax, rcx
                                                                                        je    .Lx467_89
                        mov              rcx, rax
                                                                                        jmp   .Lx467_88
.Lx467_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_92
                        cmp              eax, 99
                                                                                        je    .Lx467_92
                        cmp              eax, 13
                                                                                        jne   .Lx467_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx467_92
                                                                                        jmp   .Lx467_93
.Lx467_92:
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
                                                                                        jmp   .Lx467_94
.Lx467_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx467_94:
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
                                                                                        jmp   .Lx467_77
.Lx467_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx467_77
.Lx467_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx467_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n431_op11_α
                                                                                        jmp   n435_var_ref_α
n434_op11_β:
                                                                                        jmp   n431_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n436_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n437_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx473_21
.Lx473_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx473_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx473_23
.Lx473_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx473_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx473_1
                        lea              rcx, [rip + .Lx473_3]
                        lea              rdx, [rip + .Lx473_4]
                                                                                        jmp   rax
.Lx473_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx473_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx473_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_1:
                        call             rt_faildescr@PLT
.Lx473_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n431_op11_α
                                                                                        jmp   n438_suspend_α
n437_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n438_suspend_α:
                        lea              rax, [rip + n438_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n438_suspend_β:
                                                                                        jmp   n437_call_proc_staged_β
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
                        .globl           proc_person$2F1_α
proc_person$2F1_α:
                        .global          proc_person$2F1_α
                        .global          proc_person$2F1_β
                        .global          proc_person$2F1_γ
                        .global          proc_person$2F1_ω
                        sub              rsp, 1024
                        mov              [rsp + 1000], rcx
                        mov              [rsp + 1008], rdx
                        mov              [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 960
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
proc_person$2F1_α_body:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 960], rax
#-----------------------------------------------------------------------------------------------------------------------
n476_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx503_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx503_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx503_101
.Lx503_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx503_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_person$2F1_ω
                                                                                        jmp   n477_var_ref_α
n476_op11_β:
                                                                                        jmp   proc_person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n479_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n479_op11_α:
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
.Lx508_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx508_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        cmp              esi, 1
                                                                                        jne   .Lx508_55
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_55:
                        cmp              esi, 2
                                                                                        jne   .Lx508_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_56:
                        cmp              eax, 13
                                                                                        jne   .Lx508_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        cmp              rax, r8
                                                                                        je    .Lx508_41
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_41:
                        lea              r9, [rbp + 912]
.Lx508_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx508_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        cmp              esi, 1
                                                                                        jne   .Lx508_57
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_57:
                        cmp              esi, 2
                                                                                        jne   .Lx508_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_58:
                        cmp              eax, 13
                                                                                        jne   .Lx508_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        cmp              rax, r9
                                                                                        je    .Lx508_43
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_43:
                        cmp              r8, r9
                                                                                        je    .Lx508_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_44
                        cmp              eax, 99
                                                                                        je    .Lx508_44
                        cmp              eax, 13
                                                                                        jne   .Lx508_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx508_44
                                                                                        jmp   .Lx508_45
.Lx508_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_53
                        cmp              eax, 99
                                                                                        je    .Lx508_53
                        cmp              eax, 13
                                                                                        jne   .Lx508_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx508_53
                                                                                        jmp   .Lx508_46
.Lx508_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx508_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx508_53
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
                                                                                        jmp   .Lx508_51
.Lx508_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_47
                        cmp              eax, 99
                                                                                        je    .Lx508_47
                        cmp              eax, 13
                                                                                        jne   .Lx508_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx508_47
                                                                                        jmp   .Lx508_48
.Lx508_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx508_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx508_53
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
                                                                                        jmp   .Lx508_51
.Lx508_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx508_49
                        cmp              edx, 14
                                                                                        je    .Lx508_53
                                                                                        jmp   .Lx508_52
.Lx508_49:
                        cmp              edx, 14
                                                                                        je    .Lx508_52
                        cmp              ecx, 7
                                                                                        je    .Lx508_53
                        cmp              edx, 7
                                                                                        je    .Lx508_53
                        cmp              ecx, 6
                                                                                        jne   .Lx508_50
                        cmp              edx, 6
                                                                                        jne   .Lx508_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx508_51
                                                                                        jmp   .Lx508_52
.Lx508_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx508_53
.Lx508_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx508_54
.Lx508_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx508_54
.Lx508_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx508_54:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n481_op11_α
                                                                                        jmp   n480_var_ref_α
n479_op11_β:
                                                                                        jmp   n481_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n482_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n481_op11_α:
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
                                                                                        je    proc_person$2F1_ω
                                                                                        jmp   proc_person$2F1_ω
n481_op11_β:
                                                                                        jmp   proc_person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n483_lit_string_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n484_lit_string_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "clayton"
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n485_lit_string_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n486_lit_string_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "forbes"
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n487_lit_string_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n488_lit_string_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "graham"
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n489_lit_string_α
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n490_lit_string_α
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "holgate"
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n491_lit_string_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n492_lit_string_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "mcfee"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n493_lit_string_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n494_lit_string_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "warren"
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n495_op11_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n495_op11_α:
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
                                                                                        je    proc_person$2F1_ω
                                                                                        jmp   n496_op11_α
n495_op11_β:
                                                                                        jmp   proc_person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n496_op11_α:
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
                                                                                        je    proc_person$2F1_ω
                                                                                        jmp   n497_op11_α
n496_op11_β:
                                                                                        jmp   proc_person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n497_op11_α:
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
                                                                                        je    proc_person$2F1_ω
                                                                                        jmp   n498_op11_α
n497_op11_β:
                                                                                        jmp   proc_person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
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
                                                                                        je    proc_person$2F1_ω
                                                                                        jmp   n499_op11_α
n498_op11_β:
                                                                                        jmp   proc_person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n499_op11_α:
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
                                                                                        je    proc_person$2F1_ω
                                                                                        jmp   n500_op11_α
n499_op11_β:
                                                                                        jmp   proc_person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
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
                                                                                        je    n481_op11_α
                                                                                        jmp   n501_call_proc_staged_α
n500_op11_β:
                                                                                        jmp   n481_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx532_21
.Lx532_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx532_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx532_23
.Lx532_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx532_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx532_1
                        lea              rcx, [rip + .Lx532_3]
                        lea              rdx, [rip + .Lx532_4]
                                                                                        jmp   rax
.Lx532_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx532_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx532_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_1:
                        call             rt_faildescr@PLT
.Lx532_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n481_op11_α
                                                                                        jmp   n502_suspend_α
n501_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n502_suspend_α:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_person$2F1_γ
n502_suspend_β:
                                                                                        jmp   n501_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_person$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_person$2F1_β:
                                                                                        jmp   qword ptr [rbp + 960]
#-----------------------------------------------------------------------------------------------------------------------
proc_person$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_person$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1000]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_person$2F1_ω:
                        mov              rax, [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
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
n535_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx583_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx583_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx583_101
.Lx583_100:
                        lea              rdi, [rbp + 160]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx583_101:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F6_ω
                                                                                        jmp   n536_var_ref_α
n535_op11_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n538_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n538_op11_α:
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
.Lx588_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx588_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        cmp              esi, 1
                                                                                        jne   .Lx588_55
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_55:
                        cmp              esi, 2
                                                                                        jne   .Lx588_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_56:
                        cmp              eax, 13
                                                                                        jne   .Lx588_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        cmp              rax, r8
                                                                                        je    .Lx588_41
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_41:
                        lea              r9, [rbp + 1264]
.Lx588_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx588_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        cmp              esi, 1
                                                                                        jne   .Lx588_57
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_57:
                        cmp              esi, 2
                                                                                        jne   .Lx588_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_58:
                        cmp              eax, 13
                                                                                        jne   .Lx588_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        cmp              rax, r9
                                                                                        je    .Lx588_43
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_43:
                        cmp              r8, r9
                                                                                        je    .Lx588_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_44
                        cmp              eax, 99
                                                                                        je    .Lx588_44
                        cmp              eax, 13
                                                                                        jne   .Lx588_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx588_44
                                                                                        jmp   .Lx588_45
.Lx588_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_53
                        cmp              eax, 99
                                                                                        je    .Lx588_53
                        cmp              eax, 13
                                                                                        jne   .Lx588_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx588_53
                                                                                        jmp   .Lx588_46
.Lx588_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx588_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx588_53
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
                                                                                        jmp   .Lx588_51
.Lx588_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_47
                        cmp              eax, 99
                                                                                        je    .Lx588_47
                        cmp              eax, 13
                                                                                        jne   .Lx588_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx588_47
                                                                                        jmp   .Lx588_48
.Lx588_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx588_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx588_53
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
                                                                                        jmp   .Lx588_51
.Lx588_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx588_49
                        cmp              edx, 14
                                                                                        je    .Lx588_53
                                                                                        jmp   .Lx588_52
.Lx588_49:
                        cmp              edx, 14
                                                                                        je    .Lx588_52
                        cmp              ecx, 7
                                                                                        je    .Lx588_53
                        cmp              edx, 7
                                                                                        je    .Lx588_53
                        cmp              ecx, 6
                                                                                        jne   .Lx588_50
                        cmp              edx, 6
                                                                                        jne   .Lx588_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx588_51
                                                                                        jmp   .Lx588_52
.Lx588_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx588_53
.Lx588_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx588_54
.Lx588_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx588_54
.Lx588_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx588_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n539_var_ref_α
n538_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n541_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
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
n540_op11_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n541_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n542_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n542_op11_α:
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
.Lx594_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx594_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx594_41
                        cmp              esi, 1
                                                                                        jne   .Lx594_55
                        mov              r8, rax
                                                                                        jmp   .Lx594_40
.Lx594_55:
                        cmp              esi, 2
                                                                                        jne   .Lx594_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx594_41
                        mov              r8, rax
                                                                                        jmp   .Lx594_40
.Lx594_56:
                        cmp              eax, 13
                                                                                        jne   .Lx594_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx594_41
                        cmp              rax, r8
                                                                                        je    .Lx594_41
                        mov              r8, rax
                                                                                        jmp   .Lx594_40
.Lx594_41:
                        lea              r9, [rbp + 1184]
.Lx594_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx594_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx594_43
                        cmp              esi, 1
                                                                                        jne   .Lx594_57
                        mov              r9, rax
                                                                                        jmp   .Lx594_42
.Lx594_57:
                        cmp              esi, 2
                                                                                        jne   .Lx594_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx594_43
                        mov              r9, rax
                                                                                        jmp   .Lx594_42
.Lx594_58:
                        cmp              eax, 13
                                                                                        jne   .Lx594_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx594_43
                        cmp              rax, r9
                                                                                        je    .Lx594_43
                        mov              r9, rax
                                                                                        jmp   .Lx594_42
.Lx594_43:
                        cmp              r8, r9
                                                                                        je    .Lx594_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx594_44
                        cmp              eax, 99
                                                                                        je    .Lx594_44
                        cmp              eax, 13
                                                                                        jne   .Lx594_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx594_44
                                                                                        jmp   .Lx594_45
.Lx594_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx594_53
                        cmp              eax, 99
                                                                                        je    .Lx594_53
                        cmp              eax, 13
                                                                                        jne   .Lx594_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx594_53
                                                                                        jmp   .Lx594_46
.Lx594_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx594_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx594_53
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
                                                                                        jmp   .Lx594_51
.Lx594_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx594_47
                        cmp              eax, 99
                                                                                        je    .Lx594_47
                        cmp              eax, 13
                                                                                        jne   .Lx594_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx594_47
                                                                                        jmp   .Lx594_48
.Lx594_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx594_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx594_53
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
                                                                                        jmp   .Lx594_51
.Lx594_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx594_49
                        cmp              edx, 14
                                                                                        je    .Lx594_53
                                                                                        jmp   .Lx594_52
.Lx594_49:
                        cmp              edx, 14
                                                                                        je    .Lx594_52
                        cmp              ecx, 7
                                                                                        je    .Lx594_53
                        cmp              edx, 7
                                                                                        je    .Lx594_53
                        cmp              ecx, 6
                                                                                        jne   .Lx594_50
                        cmp              edx, 6
                                                                                        jne   .Lx594_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx594_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx594_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx594_51
                                                                                        jmp   .Lx594_52
.Lx594_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx594_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx594_53
.Lx594_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx594_54
.Lx594_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx594_54
.Lx594_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx594_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n543_var_ref_α
n542_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_op11_α:
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
.Lx599_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx599_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx599_41
                        cmp              esi, 1
                                                                                        jne   .Lx599_55
                        mov              r8, rax
                                                                                        jmp   .Lx599_40
.Lx599_55:
                        cmp              esi, 2
                                                                                        jne   .Lx599_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx599_41
                        mov              r8, rax
                                                                                        jmp   .Lx599_40
.Lx599_56:
                        cmp              eax, 13
                                                                                        jne   .Lx599_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx599_41
                        cmp              rax, r8
                                                                                        je    .Lx599_41
                        mov              r8, rax
                                                                                        jmp   .Lx599_40
.Lx599_41:
                        lea              r9, [rbp + 1104]
.Lx599_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx599_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx599_43
                        cmp              esi, 1
                                                                                        jne   .Lx599_57
                        mov              r9, rax
                                                                                        jmp   .Lx599_42
.Lx599_57:
                        cmp              esi, 2
                                                                                        jne   .Lx599_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx599_43
                        mov              r9, rax
                                                                                        jmp   .Lx599_42
.Lx599_58:
                        cmp              eax, 13
                                                                                        jne   .Lx599_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx599_43
                        cmp              rax, r9
                                                                                        je    .Lx599_43
                        mov              r9, rax
                                                                                        jmp   .Lx599_42
.Lx599_43:
                        cmp              r8, r9
                                                                                        je    .Lx599_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx599_44
                        cmp              eax, 99
                                                                                        je    .Lx599_44
                        cmp              eax, 13
                                                                                        jne   .Lx599_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx599_44
                                                                                        jmp   .Lx599_45
.Lx599_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx599_53
                        cmp              eax, 99
                                                                                        je    .Lx599_53
                        cmp              eax, 13
                                                                                        jne   .Lx599_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx599_53
                                                                                        jmp   .Lx599_46
.Lx599_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx599_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx599_53
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
                                                                                        jmp   .Lx599_51
.Lx599_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx599_47
                        cmp              eax, 99
                                                                                        je    .Lx599_47
                        cmp              eax, 13
                                                                                        jne   .Lx599_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx599_47
                                                                                        jmp   .Lx599_48
.Lx599_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx599_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx599_53
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
                                                                                        jmp   .Lx599_51
.Lx599_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx599_49
                        cmp              edx, 14
                                                                                        je    .Lx599_53
                                                                                        jmp   .Lx599_52
.Lx599_49:
                        cmp              edx, 14
                                                                                        je    .Lx599_52
                        cmp              ecx, 7
                                                                                        je    .Lx599_53
                        cmp              edx, 7
                                                                                        je    .Lx599_53
                        cmp              ecx, 6
                                                                                        jne   .Lx599_50
                        cmp              edx, 6
                                                                                        jne   .Lx599_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx599_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx599_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx599_51
                                                                                        jmp   .Lx599_52
.Lx599_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx599_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx599_53
.Lx599_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx599_54
.Lx599_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx599_54
.Lx599_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx599_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n546_var_ref_α
n545_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n548_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n548_op11_α:
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
.Lx604_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx604_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_41
                        cmp              esi, 1
                                                                                        jne   .Lx604_55
                        mov              r8, rax
                                                                                        jmp   .Lx604_40
.Lx604_55:
                        cmp              esi, 2
                                                                                        jne   .Lx604_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx604_41
                        mov              r8, rax
                                                                                        jmp   .Lx604_40
.Lx604_56:
                        cmp              eax, 13
                                                                                        jne   .Lx604_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_41
                        cmp              rax, r8
                                                                                        je    .Lx604_41
                        mov              r8, rax
                                                                                        jmp   .Lx604_40
.Lx604_41:
                        lea              r9, [rbp + 1024]
.Lx604_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx604_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_43
                        cmp              esi, 1
                                                                                        jne   .Lx604_57
                        mov              r9, rax
                                                                                        jmp   .Lx604_42
.Lx604_57:
                        cmp              esi, 2
                                                                                        jne   .Lx604_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx604_43
                        mov              r9, rax
                                                                                        jmp   .Lx604_42
.Lx604_58:
                        cmp              eax, 13
                                                                                        jne   .Lx604_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_43
                        cmp              rax, r9
                                                                                        je    .Lx604_43
                        mov              r9, rax
                                                                                        jmp   .Lx604_42
.Lx604_43:
                        cmp              r8, r9
                                                                                        je    .Lx604_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx604_44
                        cmp              eax, 99
                                                                                        je    .Lx604_44
                        cmp              eax, 13
                                                                                        jne   .Lx604_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx604_44
                                                                                        jmp   .Lx604_45
.Lx604_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx604_53
                        cmp              eax, 99
                                                                                        je    .Lx604_53
                        cmp              eax, 13
                                                                                        jne   .Lx604_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx604_53
                                                                                        jmp   .Lx604_46
.Lx604_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx604_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx604_53
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
                                                                                        jmp   .Lx604_51
.Lx604_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx604_47
                        cmp              eax, 99
                                                                                        je    .Lx604_47
                        cmp              eax, 13
                                                                                        jne   .Lx604_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx604_47
                                                                                        jmp   .Lx604_48
.Lx604_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx604_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx604_53
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
                                                                                        jmp   .Lx604_51
.Lx604_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx604_49
                        cmp              edx, 14
                                                                                        je    .Lx604_53
                                                                                        jmp   .Lx604_52
.Lx604_49:
                        cmp              edx, 14
                                                                                        je    .Lx604_52
                        cmp              ecx, 7
                                                                                        je    .Lx604_53
                        cmp              edx, 7
                                                                                        je    .Lx604_53
                        cmp              ecx, 6
                                                                                        jne   .Lx604_50
                        cmp              edx, 6
                                                                                        jne   .Lx604_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx604_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx604_51
                                                                                        jmp   .Lx604_52
.Lx604_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx604_53
.Lx604_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx604_54
.Lx604_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx604_54
.Lx604_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx604_54:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n549_var_ref_α
n548_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n550_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n551_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n551_op11_α:
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
.Lx609_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx609_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        cmp              esi, 1
                                                                                        jne   .Lx609_55
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_55:
                        cmp              esi, 2
                                                                                        jne   .Lx609_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_56:
                        cmp              eax, 13
                                                                                        jne   .Lx609_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        cmp              rax, r8
                                                                                        je    .Lx609_41
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_41:
                        lea              r9, [rbp + 944]
.Lx609_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx609_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        cmp              esi, 1
                                                                                        jne   .Lx609_57
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_57:
                        cmp              esi, 2
                                                                                        jne   .Lx609_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_58:
                        cmp              eax, 13
                                                                                        jne   .Lx609_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        cmp              rax, r9
                                                                                        je    .Lx609_43
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_43:
                        cmp              r8, r9
                                                                                        je    .Lx609_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_44
                        cmp              eax, 99
                                                                                        je    .Lx609_44
                        cmp              eax, 13
                                                                                        jne   .Lx609_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx609_44
                                                                                        jmp   .Lx609_45
.Lx609_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_53
                        cmp              eax, 99
                                                                                        je    .Lx609_53
                        cmp              eax, 13
                                                                                        jne   .Lx609_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx609_53
                                                                                        jmp   .Lx609_46
.Lx609_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx609_53
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
                                                                                        jmp   .Lx609_51
.Lx609_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_47
                        cmp              eax, 99
                                                                                        je    .Lx609_47
                        cmp              eax, 13
                                                                                        jne   .Lx609_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx609_47
                                                                                        jmp   .Lx609_48
.Lx609_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx609_53
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
                                                                                        jmp   .Lx609_51
.Lx609_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx609_49
                        cmp              edx, 14
                                                                                        je    .Lx609_53
                                                                                        jmp   .Lx609_52
.Lx609_49:
                        cmp              edx, 14
                                                                                        je    .Lx609_52
                        cmp              ecx, 7
                                                                                        je    .Lx609_53
                        cmp              edx, 7
                                                                                        je    .Lx609_53
                        cmp              ecx, 6
                                                                                        jne   .Lx609_50
                        cmp              edx, 6
                                                                                        jne   .Lx609_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx609_51
                                                                                        jmp   .Lx609_52
.Lx609_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx609_53
.Lx609_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx609_54
.Lx609_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx609_54
.Lx609_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx609_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n552_var_ref_α
n551_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n553_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n554_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n554_op11_α:
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
.Lx614_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx614_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_41
                        cmp              esi, 1
                                                                                        jne   .Lx614_55
                        mov              r8, rax
                                                                                        jmp   .Lx614_40
.Lx614_55:
                        cmp              esi, 2
                                                                                        jne   .Lx614_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx614_41
                        mov              r8, rax
                                                                                        jmp   .Lx614_40
.Lx614_56:
                        cmp              eax, 13
                                                                                        jne   .Lx614_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_41
                        cmp              rax, r8
                                                                                        je    .Lx614_41
                        mov              r8, rax
                                                                                        jmp   .Lx614_40
.Lx614_41:
                        lea              r9, [rbp + 864]
.Lx614_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx614_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_43
                        cmp              esi, 1
                                                                                        jne   .Lx614_57
                        mov              r9, rax
                                                                                        jmp   .Lx614_42
.Lx614_57:
                        cmp              esi, 2
                                                                                        jne   .Lx614_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx614_43
                        mov              r9, rax
                                                                                        jmp   .Lx614_42
.Lx614_58:
                        cmp              eax, 13
                                                                                        jne   .Lx614_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_43
                        cmp              rax, r9
                                                                                        je    .Lx614_43
                        mov              r9, rax
                                                                                        jmp   .Lx614_42
.Lx614_43:
                        cmp              r8, r9
                                                                                        je    .Lx614_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx614_44
                        cmp              eax, 99
                                                                                        je    .Lx614_44
                        cmp              eax, 13
                                                                                        jne   .Lx614_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx614_44
                                                                                        jmp   .Lx614_45
.Lx614_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx614_53
                        cmp              eax, 99
                                                                                        je    .Lx614_53
                        cmp              eax, 13
                                                                                        jne   .Lx614_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx614_53
                                                                                        jmp   .Lx614_46
.Lx614_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx614_53
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
                                                                                        jmp   .Lx614_51
.Lx614_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx614_47
                        cmp              eax, 99
                                                                                        je    .Lx614_47
                        cmp              eax, 13
                                                                                        jne   .Lx614_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx614_47
                                                                                        jmp   .Lx614_48
.Lx614_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx614_53
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
                                                                                        jmp   .Lx614_51
.Lx614_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx614_49
                        cmp              edx, 14
                                                                                        je    .Lx614_53
                                                                                        jmp   .Lx614_52
.Lx614_49:
                        cmp              edx, 14
                                                                                        je    .Lx614_52
                        cmp              ecx, 7
                                                                                        je    .Lx614_53
                        cmp              edx, 7
                                                                                        je    .Lx614_53
                        cmp              ecx, 6
                                                                                        jne   .Lx614_50
                        cmp              edx, 6
                                                                                        jne   .Lx614_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx614_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx614_51
                                                                                        jmp   .Lx614_52
.Lx614_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx614_53
.Lx614_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx614_54
.Lx614_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx614_54
.Lx614_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx614_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n555_lit_string_α
n554_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n556_op11_α
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          "Victim="
#-----------------------------------------------------------------------------------------------------------------------
n556_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn617:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n557_var_α
n556_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n558_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n558_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn621:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n559_lit_string_α
n558_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n560_op11_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          " Murderer="
#-----------------------------------------------------------------------------------------------------------------------
n560_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn624:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n561_var_α
n560_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n561_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n562_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n562_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn628:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n563_lit_string_α
n562_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n564_op11_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          " Witness="
#-----------------------------------------------------------------------------------------------------------------------
n564_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn631:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n565_var_α
n564_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n565_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n566_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n566_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn635:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n567_lit_string_α
n566_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n568_op11_α
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          " Policeman="
#-----------------------------------------------------------------------------------------------------------------------
n568_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn638:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn638]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n569_var_α
n568_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n570_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n570_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn642:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn642]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n571_lit_string_α
n570_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n572_op11_α
.Lx643_0:
                        .quad            .Lx643_0_s
.Lx643_0_s:
                        .string          " Judge="
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn645:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n573_var_α
n572_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n574_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n574_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn649:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn649]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n575_lit_string_α
n574_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n576_op11_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          " Hangman="
#-----------------------------------------------------------------------------------------------------------------------
n576_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn652:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn652]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n577_var_α
n576_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n578_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n578_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn656:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn656]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n579_lit_string_α
n578_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n580_op11_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n580_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn659:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn659]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n581_move_label_α
n580_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n581_move_label_α:
                        lea              rax, [rip + n540_op11_α]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   proc_display$2F6_γ
#-----------------------------------------------------------------------------------------------------------------------
n582_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 128]
n582_disjunction_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_β:
                                                                                        jmp   n582_disjunction_α
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
.Lstartup_pname1:       .string          "last/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_last$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1008
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_last$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
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
                        mov              esi, 3456
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$disj0$2F0_α]
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
.Lstartup_pname4:       .string          "member/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_member$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "person/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_person$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 992
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
n664_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx669_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx669_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx669_101
.Lx669_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx669_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n665_call_proc_staged_α
n664_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n665_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx671_1
                        lea              rcx, [rip + .Lx671_3]
                        lea              rdx, [rip + .Lx671_4]
                                                                                        jmp   rax
.Lx671_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx671_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx671_2
.Lx671_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx671_2
.Lx671_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx671_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx671_2
.Lx671_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx671_2
.Lx671_1:
                        call             rt_faildescr@PLT
.Lx671_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n667_op11_α
                                                                                        jmp   n666_move_label_α
n665_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n666_move_label_α:
                        lea              rax, [rip + n665_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n667_op11_α:
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
n667_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n668_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n668_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n668_disjunction_α
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
