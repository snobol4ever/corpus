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
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 3424
                        mov              [rsp + 3400], rcx
                        mov              [rsp + 3408], rdx
                        mov              [rsp + 3416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3232
                        mov              edx, 3392
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx142_101
.Lx142_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx142_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n44_var_ref_α
n43_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        mov              qword ptr [rbp + 3184], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_20
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx146_21
.Lx146_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        call             rt_arg_stage@PLT
.Lx146_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx146_1
                        lea              rcx, [rip + .Lx146_3]
                        lea              rdx, [rip + .Lx146_4]
                                                                                        jmp   rax
.Lx146_3:
                        mov              qword ptr [rbp + 3192], rsp
                        mov              rax, qword ptr [rbp + 3184]
                        test             rax, rax
                                                                                        jne   .Lx146_5
                        mov              qword ptr [rbp + 3184], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_4:
                        mov              rax, qword ptr [rbp + 3184]
                        test             rax, rax
                                                                                        jne   .Lx146_6
                        mov              qword ptr [rbp + 3184], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_1:
                        call             rt_faildescr@PLT
.Lx146_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n47_op11_α
                                                                                        jmp   n46_var_ref_α
n45_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3192]
                                                                                        jmp   qword ptr [rsp]
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "profession/1"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n48_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
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
n47_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_call_proc_staged_α:
                        mov              qword ptr [rbp + 3104], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx151_20
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx151_21
.Lx151_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        call             rt_arg_stage@PLT
.Lx151_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx151_1
                        lea              rcx, [rip + .Lx151_3]
                        lea              rdx, [rip + .Lx151_4]
                                                                                        jmp   rax
.Lx151_3:
                        mov              qword ptr [rbp + 3112], rsp
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx151_5
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx151_2
.Lx151_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx151_2
.Lx151_4:
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx151_6
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx151_2
.Lx151_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx151_2
.Lx151_1:
                        call             rt_faildescr@PLT
.Lx151_2:
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n45_call_proc_staged_β
                                                                                        jmp   n49_var_ref_α
n48_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3112]
                                                                                        jmp   qword ptr [rsp]
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "profession/1"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n50_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_proc_staged_α:
                        mov              qword ptr [rbp + 3024], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx155_20
                        mov              rax, qword ptr [rbp + 3056]
                        mov              rdx, qword ptr [rbp + 3064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx155_21
.Lx155_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3056]
                        mov              rdx, qword ptr [rbp + 3064]
                        call             rt_arg_stage@PLT
.Lx155_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx155_1
                        lea              rcx, [rip + .Lx155_3]
                        lea              rdx, [rip + .Lx155_4]
                                                                                        jmp   rax
.Lx155_3:
                        mov              qword ptr [rbp + 3032], rsp
                        mov              rax, qword ptr [rbp + 3024]
                        test             rax, rax
                                                                                        jne   .Lx155_5
                        mov              qword ptr [rbp + 3024], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx155_2
.Lx155_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx155_2
.Lx155_4:
                        mov              rax, qword ptr [rbp + 3024]
                        test             rax, rax
                                                                                        jne   .Lx155_6
                        mov              qword ptr [rbp + 3024], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx155_2
.Lx155_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx155_2
.Lx155_1:
                        call             rt_faildescr@PLT
.Lx155_2:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n48_call_proc_staged_β
                                                                                        jmp   n51_var_ref_α
n50_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3032]
                                                                                        jmp   qword ptr [rsp]
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "profession/1"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α:
                        mov              qword ptr [rbp + 2928], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx161_20
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx161_21
.Lx161_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        call             rt_arg_stage@PLT
.Lx161_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx161_22
                        mov              rax, qword ptr [rbp + 2976]
                        mov              rdx, qword ptr [rbp + 2984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx161_23
.Lx161_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2976]
                        mov              rdx, qword ptr [rbp + 2984]
                        call             rt_arg_stage@PLT
.Lx161_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx161_1
                        lea              rcx, [rip + .Lx161_3]
                        lea              rdx, [rip + .Lx161_4]
                                                                                        jmp   rax
.Lx161_3:
                        mov              qword ptr [rbp + 2936], rsp
                        mov              rax, qword ptr [rbp + 2928]
                        test             rax, rax
                                                                                        jne   .Lx161_5
                        mov              qword ptr [rbp + 2928], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx161_2
.Lx161_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx161_2
.Lx161_4:
                        mov              rax, qword ptr [rbp + 2928]
                        test             rax, rax
                                                                                        jne   .Lx161_6
                        mov              qword ptr [rbp + 2928], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx161_2
.Lx161_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx161_2
.Lx161_1:
                        call             rt_faildescr@PLT
.Lx161_2:
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    n50_call_proc_staged_β
                                                                                        jmp   n54_var_ref_α
n53_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2936]
                                                                                        jmp   qword ptr [rsp]
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n56_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_proc_staged_α:
                        mov              qword ptr [rbp + 2816], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_20
                        mov              rax, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx167_21
.Lx167_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        call             rt_arg_stage@PLT
.Lx167_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_22
                        mov              rax, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx167_23
.Lx167_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        call             rt_arg_stage@PLT
.Lx167_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx167_1
                        lea              rcx, [rip + .Lx167_3]
                        lea              rdx, [rip + .Lx167_4]
                                                                                        jmp   rax
.Lx167_3:
                        mov              qword ptr [rbp + 2824], rsp
                        mov              rax, qword ptr [rbp + 2816]
                        test             rax, rax
                                                                                        jne   .Lx167_5
                        mov              qword ptr [rbp + 2816], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_4:
                        mov              rax, qword ptr [rbp + 2816]
                        test             rax, rax
                                                                                        jne   .Lx167_6
                        mov              qword ptr [rbp + 2816], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_1:
                        call             rt_faildescr@PLT
.Lx167_2:
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n53_call_proc_staged_β
                                                                                        jmp   n57_var_ref_α
n56_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2824]
                                                                                        jmp   qword ptr [rsp]
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n59_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_proc_staged_α:
                        mov              qword ptr [rbp + 2704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx173_20
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx173_21
.Lx173_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        call             rt_arg_stage@PLT
.Lx173_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx173_22
                        mov              rax, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx173_23
.Lx173_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        call             rt_arg_stage@PLT
.Lx173_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx173_1
                        lea              rcx, [rip + .Lx173_3]
                        lea              rdx, [rip + .Lx173_4]
                                                                                        jmp   rax
.Lx173_3:
                        mov              qword ptr [rbp + 2712], rsp
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx173_5
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx173_2
.Lx173_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx173_2
.Lx173_4:
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx173_6
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx173_2
.Lx173_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx173_2
.Lx173_1:
                        call             rt_faildescr@PLT
.Lx173_2:
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n56_call_proc_staged_β
                                                                                        jmp   n60_var_ref_α
n59_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2712]
                                                                                        jmp   qword ptr [rsp]
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n61_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        mov              qword ptr [rbp + 2608], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx177_20
                        mov              rax, qword ptr [rbp + 2640]
                        mov              rdx, qword ptr [rbp + 2648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx177_21
.Lx177_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2640]
                        mov              rdx, qword ptr [rbp + 2648]
                        call             rt_arg_stage@PLT
.Lx177_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx177_1
                        lea              rcx, [rip + .Lx177_3]
                        lea              rdx, [rip + .Lx177_4]
                                                                                        jmp   rax
.Lx177_3:
                        mov              qword ptr [rbp + 2616], rsp
                        mov              rax, qword ptr [rbp + 2608]
                        test             rax, rax
                                                                                        jne   .Lx177_5
                        mov              qword ptr [rbp + 2608], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx177_2
.Lx177_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx177_2
.Lx177_4:
                        mov              rax, qword ptr [rbp + 2608]
                        test             rax, rax
                                                                                        jne   .Lx177_6
                        mov              qword ptr [rbp + 2608], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx177_2
.Lx177_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx177_2
.Lx177_1:
                        call             rt_faildescr@PLT
.Lx177_2:
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n59_call_proc_staged_β
                                                                                        jmp   n62_var_ref_α
n61_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2616]
                                                                                        jmp   qword ptr [rsp]
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "secretary/1"
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n63_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α:
                        mov              qword ptr [rbp + 2528], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx181_20
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx181_21
.Lx181_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        call             rt_arg_stage@PLT
.Lx181_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx181_1
                        lea              rcx, [rip + .Lx181_3]
                        lea              rdx, [rip + .Lx181_4]
                                                                                        jmp   rax
.Lx181_3:
                        mov              qword ptr [rbp + 2536], rsp
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx181_5
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx181_2
.Lx181_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx181_2
.Lx181_4:
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx181_6
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx181_2
.Lx181_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx181_2
.Lx181_1:
                        call             rt_faildescr@PLT
.Lx181_2:
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n61_call_proc_staged_β
                                                                                        jmp   n64_var_ref_α
n63_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2536]
                                                                                        jmp   qword ptr [rsp]
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "secretary/1"
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n65_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α:
                        mov              qword ptr [rbp + 2448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx185_20
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx185_21
.Lx185_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        call             rt_arg_stage@PLT
.Lx185_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx185_1
                        lea              rcx, [rip + .Lx185_3]
                        lea              rdx, [rip + .Lx185_4]
                                                                                        jmp   rax
.Lx185_3:
                        mov              qword ptr [rbp + 2456], rsp
                        mov              rax, qword ptr [rbp + 2448]
                        test             rax, rax
                                                                                        jne   .Lx185_5
                        mov              qword ptr [rbp + 2448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx185_2
.Lx185_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx185_2
.Lx185_4:
                        mov              rax, qword ptr [rbp + 2448]
                        test             rax, rax
                                                                                        jne   .Lx185_6
                        mov              qword ptr [rbp + 2448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx185_2
.Lx185_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx185_2
.Lx185_1:
                        call             rt_faildescr@PLT
.Lx185_2:
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n63_call_proc_staged_β
                                                                                        jmp   n66_var_ref_α
n65_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2456]
                                                                                        jmp   qword ptr [rsp]
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "secretary/1"
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n68_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_proc_staged_α:
                        mov              qword ptr [rbp + 2352], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_20
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx191_21
.Lx191_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        call             rt_arg_stage@PLT
.Lx191_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_22
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx191_23
.Lx191_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        call             rt_arg_stage@PLT
.Lx191_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx191_1
                        lea              rcx, [rip + .Lx191_3]
                        lea              rdx, [rip + .Lx191_4]
                                                                                        jmp   rax
.Lx191_3:
                        mov              qword ptr [rbp + 2360], rsp
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax
                                                                                        jne   .Lx191_5
                        mov              qword ptr [rbp + 2352], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_4:
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax
                                                                                        jne   .Lx191_6
                        mov              qword ptr [rbp + 2352], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_1:
                        call             rt_faildescr@PLT
.Lx191_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n65_call_proc_staged_β
                                                                                        jmp   n69_var_ref_α
n68_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2360]
                                                                                        jmp   qword ptr [rsp]
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n71_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_proc_staged_α:
                        mov              qword ptr [rbp + 2240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx197_20
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx197_21
.Lx197_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        call             rt_arg_stage@PLT
.Lx197_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx197_22
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx197_23
.Lx197_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_arg_stage@PLT
.Lx197_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx197_1
                        lea              rcx, [rip + .Lx197_3]
                        lea              rdx, [rip + .Lx197_4]
                                                                                        jmp   rax
.Lx197_3:
                        mov              qword ptr [rbp + 2248], rsp
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx197_5
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx197_2
.Lx197_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx197_2
.Lx197_4:
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx197_6
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx197_2
.Lx197_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx197_2
.Lx197_1:
                        call             rt_faildescr@PLT
.Lx197_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n68_call_proc_staged_β
                                                                                        jmp   n72_var_ref_α
n71_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2248]
                                                                                        jmp   qword ptr [rsp]
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n74_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α:
                        mov              qword ptr [rbp + 2128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_20
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx203_21
.Lx203_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        call             rt_arg_stage@PLT
.Lx203_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_22
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx203_23
.Lx203_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        call             rt_arg_stage@PLT
.Lx203_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx203_1
                        lea              rcx, [rip + .Lx203_3]
                        lea              rdx, [rip + .Lx203_4]
                                                                                        jmp   rax
.Lx203_3:
                        mov              qword ptr [rbp + 2136], rsp
                        mov              rax, qword ptr [rbp + 2128]
                        test             rax, rax
                                                                                        jne   .Lx203_5
                        mov              qword ptr [rbp + 2128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx203_2
.Lx203_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx203_2
.Lx203_4:
                        mov              rax, qword ptr [rbp + 2128]
                        test             rax, rax
                                                                                        jne   .Lx203_6
                        mov              qword ptr [rbp + 2128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx203_2
.Lx203_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx203_2
.Lx203_1:
                        call             rt_faildescr@PLT
.Lx203_2:
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n71_call_proc_staged_β
                                                                                        jmp   n75_var_ref_α
n74_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2136]
                                                                                        jmp   qword ptr [rsp]
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n76_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_proc_staged_α:
                        mov              qword ptr [rbp + 2032], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_20
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx207_21
.Lx207_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        call             rt_arg_stage@PLT
.Lx207_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx207_1
                        lea              rcx, [rip + .Lx207_3]
                        lea              rdx, [rip + .Lx207_4]
                                                                                        jmp   rax
.Lx207_3:
                        mov              qword ptr [rbp + 2040], rsp
                        mov              rax, qword ptr [rbp + 2032]
                        test             rax, rax
                                                                                        jne   .Lx207_5
                        mov              qword ptr [rbp + 2032], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_4:
                        mov              rax, qword ptr [rbp + 2032]
                        test             rax, rax
                                                                                        jne   .Lx207_6
                        mov              qword ptr [rbp + 2032], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_1:
                        call             rt_faildescr@PLT
.Lx207_2:
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n74_call_proc_staged_β
                                                                                        jmp   n77_var_ref_α
n76_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2040]
                                                                                        jmp   qword ptr [rsp]
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "floor/1"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n78_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_proc_staged_α:
                        mov              qword ptr [rbp + 1952], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx211_20
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx211_21
.Lx211_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_arg_stage@PLT
.Lx211_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx211_1
                        lea              rcx, [rip + .Lx211_3]
                        lea              rdx, [rip + .Lx211_4]
                                                                                        jmp   rax
.Lx211_3:
                        mov              qword ptr [rbp + 1960], rsp
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx211_5
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx211_2
.Lx211_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx211_2
.Lx211_4:
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx211_6
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx211_2
.Lx211_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx211_2
.Lx211_1:
                        call             rt_faildescr@PLT
.Lx211_2:
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n76_call_proc_staged_β
                                                                                        jmp   n79_var_ref_α
n78_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1960]
                                                                                        jmp   qword ptr [rsp]
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "floor/1"
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n80_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α:
                        mov              qword ptr [rbp + 1872], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx215_20
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx215_21
.Lx215_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx215_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx215_1
                        lea              rcx, [rip + .Lx215_3]
                        lea              rdx, [rip + .Lx215_4]
                                                                                        jmp   rax
.Lx215_3:
                        mov              qword ptr [rbp + 1880], rsp
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax
                                                                                        jne   .Lx215_5
                        mov              qword ptr [rbp + 1872], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx215_2
.Lx215_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx215_2
.Lx215_4:
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax
                                                                                        jne   .Lx215_6
                        mov              qword ptr [rbp + 1872], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx215_2
.Lx215_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx215_2
.Lx215_1:
                        call             rt_faildescr@PLT
.Lx215_2:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n78_call_proc_staged_β
                                                                                        jmp   n81_var_ref_α
n80_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1880]
                                                                                        jmp   qword ptr [rsp]
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "floor/1"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n83_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α:
                        mov              qword ptr [rbp + 1776], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_20
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx221_21
.Lx221_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        call             rt_arg_stage@PLT
.Lx221_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_22
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx221_23
.Lx221_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx221_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx221_1
                        lea              rcx, [rip + .Lx221_3]
                        lea              rdx, [rip + .Lx221_4]
                                                                                        jmp   rax
.Lx221_3:
                        mov              qword ptr [rbp + 1784], rsp
                        mov              rax, qword ptr [rbp + 1776]
                        test             rax, rax
                                                                                        jne   .Lx221_5
                        mov              qword ptr [rbp + 1776], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_4:
                        mov              rax, qword ptr [rbp + 1776]
                        test             rax, rax
                                                                                        jne   .Lx221_6
                        mov              qword ptr [rbp + 1776], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_1:
                        call             rt_faildescr@PLT
.Lx221_2:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n80_call_proc_staged_β
                                                                                        jmp   n84_var_ref_α
n83_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1784]
                                                                                        jmp   qword ptr [rsp]
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n86_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α:
                        mov              qword ptr [rbp + 1664], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_20
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx227_21
.Lx227_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx227_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_22
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx227_23
.Lx227_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        call             rt_arg_stage@PLT
.Lx227_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx227_1
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4]
                                                                                        jmp   rax
.Lx227_3:
                        mov              qword ptr [rbp + 1672], rsp
                        mov              rax, qword ptr [rbp + 1664]
                        test             rax, rax
                                                                                        jne   .Lx227_5
                        mov              qword ptr [rbp + 1664], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_4:
                        mov              rax, qword ptr [rbp + 1664]
                        test             rax, rax
                                                                                        jne   .Lx227_6
                        mov              qword ptr [rbp + 1664], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_1:
                        call             rt_faildescr@PLT
.Lx227_2:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n83_call_proc_staged_β
                                                                                        jmp   n87_var_ref_α
n86_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1672]
                                                                                        jmp   qword ptr [rsp]
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        mov              qword ptr [rbp + 1552], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_20
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx233_21
.Lx233_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_arg_stage@PLT
.Lx233_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_22
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx233_23
.Lx233_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        call             rt_arg_stage@PLT
.Lx233_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx233_1
                        lea              rcx, [rip + .Lx233_3]
                        lea              rdx, [rip + .Lx233_4]
                                                                                        jmp   rax
.Lx233_3:
                        mov              qword ptr [rbp + 1560], rsp
                        mov              rax, qword ptr [rbp + 1552]
                        test             rax, rax
                                                                                        jne   .Lx233_5
                        mov              qword ptr [rbp + 1552], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_4:
                        mov              rax, qword ptr [rbp + 1552]
                        test             rax, rax
                                                                                        jne   .Lx233_6
                        mov              qword ptr [rbp + 1552], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_1:
                        call             rt_faildescr@PLT
.Lx233_2:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n86_call_proc_staged_β
                                                                                        jmp   n90_var_ref_α
n89_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1560]
                                                                                        jmp   qword ptr [rsp]
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n92_op11_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "barnette"
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              rsi, qword ptr [rip + .Lx237_2]
                                                                                        jmp   .Lx237_3
.Lx237_2:
                        .quad            .Lx237_2_s
.Lx237_2_s:
                        .string          "barnette"
.Lx237_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n93_var_ref_α
n92_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n94_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n95_op11_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "ainsley"
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              rsi, qword ptr [rip + .Lx241_2]
                                                                                        jmp   .Lx241_3
.Lx241_2:
                        .quad            .Lx241_2_s
.Lx241_2_s:
                        .string          "ainsley"
.Lx241_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n96_var_ref_α
n95_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n98_op11_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "coulter"
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              rsi, qword ptr [rip + .Lx245_2]
                                                                                        jmp   .Lx245_3
.Lx245_2:
                        .quad            .Lx245_2_s
.Lx245_2_s:
                        .string          "coulter"
.Lx245_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n99_var_α
n98_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n101_op11_α
.Lx248_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n102_var_ref_α
n101_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n104_op11_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lx253_2]
                                                                                        jmp   .Lx253_3
.Lx253_2:
                        .quad            .Lx253_2_s
.Lx253_2_s:
                        .string          "architect"
.Lx253_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n105_var_ref_α
                                                                                        jmp   n89_call_proc_staged_β
n104_op11_β:
                                                                                        jmp   n105_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n107_op11_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx257_2]
                                                                                        jmp   .Lx257_3
.Lx257_2:
                        .quad            .Lx257_2_s
.Lx257_2_s:
                        .string          "architect"
.Lx257_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n109_var_ref_α
                                                                                        jmp   n108_var_α
n107_op11_β:
                                                                                        jmp   n109_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n113_op11_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n109_var_ref_α
n112_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              rsi, qword ptr [rip + .Lx266_2]
                                                                                        jmp   .Lx266_3
.Lx266_2:
                        .quad            .Lx266_2_s
.Lx266_2_s:
                        .string          "architect"
.Lx266_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n115_var_ref_α
                                                                                        jmp   n114_var_α
n113_op11_β:
                                                                                        jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n118_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n119_op11_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "lawyer"
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n115_var_ref_α
n118_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              rsi, qword ptr [rip + .Lx275_2]
                                                                                        jmp   .Lx275_3
.Lx275_2:
                        .quad            .Lx275_2_s
.Lx275_2_s:
                        .string          "lawyer"
.Lx275_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n121_var_ref_α
                                                                                        jmp   n120_var_α
n119_op11_β:
                                                                                        jmp   n121_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n122_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n124_op11_α
.Lx280_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n125_op11_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "lawyer"
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_eq@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n121_var_ref_α
n124_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx283_2]
                                                                                        jmp   .Lx283_3
.Lx283_2:
                        .quad            .Lx283_2_s
.Lx283_2_s:
                        .string          "lawyer"
.Lx283_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n127_var_ref_α
                                                                                        jmp   n126_var_α
n125_op11_β:
                                                                                        jmp   n127_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n128_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n130_op11_α
.Lx288_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n131_op11_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "lawyer"
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_eq@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n127_var_ref_α
n130_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              rsi, qword ptr [rip + .Lx291_2]
                                                                                        jmp   .Lx291_3
.Lx291_2:
                        .quad            .Lx291_2_s
.Lx291_2_s:
                        .string          "lawyer"
.Lx291_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n133_var_ref_α
                                                                                        jmp   n132_var_α
n131_op11_β:
                                                                                        jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n134_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n136_op11_α
.Lx296_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n137_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_eq@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n133_var_ref_α
n136_op11_β:
                                                                                        jmp   n89_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n141_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx309_21
.Lx309_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx309_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx309_23
.Lx309_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx309_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx309_25
.Lx309_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx309_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_26
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx309_27
.Lx309_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx309_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_28
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx309_29
.Lx309_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx309_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_30
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx309_31
.Lx309_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx309_31:
                        mov              edi, 7
                        mov              esi, 6
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx309_1
                        lea              rcx, [rip + .Lx309_3]
                        lea              rdx, [rip + .Lx309_4]
                                                                                        jmp   rax
.Lx309_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx309_2
.Lx309_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx309_2
.Lx309_1:
                        call             rt_faildescr@PLT
.Lx309_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n89_call_proc_staged_β
                                                                                        jmp   n141_call_proc_staged_β
n141_call_proc_staged_β:
                                                                                        jmp   n89_call_proc_staged_β
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
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
                        mov              rax, [rbp + 3400]
                        mov              rbp, [rbp + 3416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 3408]
                        lea              rsp, [rbp + 3424]
                        mov              rbp, [rbp + 3416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_floor$2F1_α
proc_floor$2F1_α:
                        .global          proc_floor$2F1_α
                        .global          proc_floor$2F1_β
                        .global          proc_floor$2F1_γ
                        .global          proc_floor$2F1_ω
                        sub              rsp, 688
                        mov              [rsp + 664], rcx
                        mov              [rsp + 672], rdx
                        mov              [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
proc_floor$2F1_α_body:
                        lea              rax, [rip + n327_suspend_β]
                        mov              qword ptr [rbp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n310_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx328_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx328_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx328_101
.Lx328_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx328_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_floor$2F1_ω
                                                                                        jmp   n311_var_ref_α
n310_op11_β:
                                                                                        jmp   proc_floor$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n313_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx333_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx333_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_41
                        cmp              esi, 1
                                                                                        jne   .Lx333_55
                        mov              r8, rax
                                                                                        jmp   .Lx333_40
.Lx333_55:
                        cmp              esi, 2
                                                                                        jne   .Lx333_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx333_41
                        mov              r8, rax
                                                                                        jmp   .Lx333_40
.Lx333_56:
                        cmp              eax, 13
                                                                                        jne   .Lx333_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_41
                        cmp              rax, r8
                                                                                        je    .Lx333_41
                        mov              r8, rax
                                                                                        jmp   .Lx333_40
.Lx333_41:
                        lea              r9, [rbp + 576]
.Lx333_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx333_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_43
                        cmp              esi, 1
                                                                                        jne   .Lx333_57
                        mov              r9, rax
                                                                                        jmp   .Lx333_42
.Lx333_57:
                        cmp              esi, 2
                                                                                        jne   .Lx333_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx333_43
                        mov              r9, rax
                                                                                        jmp   .Lx333_42
.Lx333_58:
                        cmp              eax, 13
                                                                                        jne   .Lx333_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx333_43
                        cmp              rax, r9
                                                                                        je    .Lx333_43
                        mov              r9, rax
                                                                                        jmp   .Lx333_42
.Lx333_43:
                        cmp              r8, r9
                                                                                        je    .Lx333_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx333_44
                        cmp              eax, 99
                                                                                        je    .Lx333_44
                        cmp              eax, 13
                                                                                        jne   .Lx333_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx333_44
                                                                                        jmp   .Lx333_45
.Lx333_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx333_53
                        cmp              eax, 99
                                                                                        je    .Lx333_53
                        cmp              eax, 13
                                                                                        jne   .Lx333_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx333_53
                                                                                        jmp   .Lx333_46
.Lx333_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx333_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx333_53
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
                                                                                        jmp   .Lx333_51
.Lx333_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx333_47
                        cmp              eax, 99
                                                                                        je    .Lx333_47
                        cmp              eax, 13
                                                                                        jne   .Lx333_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx333_47
                                                                                        jmp   .Lx333_48
.Lx333_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx333_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx333_53
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
                                                                                        jmp   .Lx333_51
.Lx333_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx333_49
                        cmp              edx, 14
                                                                                        je    .Lx333_53
                                                                                        jmp   .Lx333_52
.Lx333_49:
                        cmp              edx, 14
                                                                                        je    .Lx333_52
                        cmp              ecx, 7
                                                                                        je    .Lx333_53
                        cmp              edx, 7
                                                                                        je    .Lx333_53
                        cmp              ecx, 6
                                                                                        jne   .Lx333_50
                        cmp              edx, 6
                                                                                        jne   .Lx333_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx333_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx333_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx333_51
                                                                                        jmp   .Lx333_52
.Lx333_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx333_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx333_53
.Lx333_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx333_54
.Lx333_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx333_54
.Lx333_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx333_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n314_var_ref_α
n313_op11_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_op11_α:
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
                                                                                        je    proc_floor$2F1_ω
                                                                                        jmp   proc_floor$2F1_ω
n315_op11_β:
                                                                                        jmp   proc_floor$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n317_lit_integer_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n318_lit_string_α
.Lx338_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n319_lit_integer_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n320_lit_string_α
.Lx340_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n321_lit_integer_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n322_lit_string_α
.Lx342_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n323_op11_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n323_op11_α:
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
                                                                                        je    proc_floor$2F1_ω
                                                                                        jmp   n324_op11_α
n323_op11_β:
                                                                                        jmp   proc_floor$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n324_op11_α:
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
                                                                                        je    proc_floor$2F1_ω
                                                                                        jmp   n325_op11_α
n324_op11_β:
                                                                                        jmp   proc_floor$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_op11_α:
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
                                                                                        je    n315_op11_α
                                                                                        jmp   n326_call_proc_staged_α
n325_op11_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx348_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx348_21
.Lx348_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx348_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx348_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx348_23
.Lx348_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx348_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx348_1
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4]
                                                                                        jmp   rax
.Lx348_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx348_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx348_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_1:
                        call             rt_faildescr@PLT
.Lx348_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n327_suspend_α
n326_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n327_suspend_α:
                        lea              rax, [rip + n327_suspend_β]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_floor$2F1_γ
n327_suspend_β:
                                                                                        jmp   n326_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_floor$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_floor$2F1_β:
                                                                                        jmp   qword ptr [rbp + 624]
#-----------------------------------------------------------------------------------------------------------------------
proc_floor$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_floor$2F1_res]
                        push             rax
                        mov              rax, [rbp + 664]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_floor$2F1_ω:
                        mov              rax, [rbp + 672]
                        lea              rsp, [rbp + 688]
                        mov              rbp, [rbp + 680]
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
                        lea              rax, [rip + n353_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx357_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx357_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx357_101
.Lx357_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx357_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n352_call_proc_staged_α
n351_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 1
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx359_1
                        lea              rcx, [rip + .Lx359_3]
                        lea              rdx, [rip + .Lx359_4]
                                                                                        jmp   rax
.Lx359_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx359_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx359_2
.Lx359_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx359_2
.Lx359_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx359_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx359_2
.Lx359_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx359_2
.Lx359_1:
                        call             rt_faildescr@PLT
.Lx359_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n354_op11_α
                                                                                        jmp   n353_suspend_α
n352_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n353_suspend_α:
                        lea              rax, [rip + n353_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n353_suspend_β:
                                                                                        jmp   n352_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
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
                                                                                        jmp   n355_suspend_α
n354_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n355_suspend_α:
                        lea              rax, [rip + n355_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n355_suspend_β:
                                                                                        jmp   n356_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
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
n356_op11_β:
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
                        .globl           proc_profession$2F1_α
proc_profession$2F1_α:
                        .global          proc_profession$2F1_α
                        .global          proc_profession$2F1_β
                        .global          proc_profession$2F1_γ
                        .global          proc_profession$2F1_ω
                        sub              rsp, 688
                        mov              [rsp + 664], rcx
                        mov              [rsp + 672], rdx
                        mov              [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
proc_profession$2F1_α_body:
                        lea              rax, [rip + n383_suspend_β]
                        mov              qword ptr [rbp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx384_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx384_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx384_101
.Lx384_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx384_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_profession$2F1_ω
                                                                                        jmp   n367_var_ref_α
n366_op11_β:
                                                                                        jmp   proc_profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n368_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n369_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n369_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx389_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx389_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        cmp              esi, 1
                                                                                        jne   .Lx389_55
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_55:
                        cmp              esi, 2
                                                                                        jne   .Lx389_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_56:
                        cmp              eax, 13
                                                                                        jne   .Lx389_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        cmp              rax, r8
                                                                                        je    .Lx389_41
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_41:
                        lea              r9, [rbp + 576]
.Lx389_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx389_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        cmp              esi, 1
                                                                                        jne   .Lx389_57
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_57:
                        cmp              esi, 2
                                                                                        jne   .Lx389_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_58:
                        cmp              eax, 13
                                                                                        jne   .Lx389_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        cmp              rax, r9
                                                                                        je    .Lx389_43
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_43:
                        cmp              r8, r9
                                                                                        je    .Lx389_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_44
                        cmp              eax, 99
                                                                                        je    .Lx389_44
                        cmp              eax, 13
                                                                                        jne   .Lx389_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx389_44
                                                                                        jmp   .Lx389_45
.Lx389_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_53
                        cmp              eax, 99
                                                                                        je    .Lx389_53
                        cmp              eax, 13
                                                                                        jne   .Lx389_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx389_53
                                                                                        jmp   .Lx389_46
.Lx389_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx389_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx389_53
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
                                                                                        jmp   .Lx389_51
.Lx389_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_47
                        cmp              eax, 99
                                                                                        je    .Lx389_47
                        cmp              eax, 13
                                                                                        jne   .Lx389_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx389_47
                                                                                        jmp   .Lx389_48
.Lx389_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx389_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx389_53
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
                                                                                        jmp   .Lx389_51
.Lx389_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx389_49
                        cmp              edx, 14
                                                                                        je    .Lx389_53
                                                                                        jmp   .Lx389_52
.Lx389_49:
                        cmp              edx, 14
                                                                                        je    .Lx389_52
                        cmp              ecx, 7
                                                                                        je    .Lx389_53
                        cmp              edx, 7
                                                                                        je    .Lx389_53
                        cmp              ecx, 6
                                                                                        jne   .Lx389_50
                        cmp              edx, 6
                                                                                        jne   .Lx389_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx389_51
                                                                                        jmp   .Lx389_52
.Lx389_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx389_53
.Lx389_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx389_54
.Lx389_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx389_54
.Lx389_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx389_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n371_op11_α
                                                                                        jmp   n370_var_ref_α
n369_op11_β:
                                                                                        jmp   n371_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n372_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
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
                                                                                        je    proc_profession$2F1_ω
                                                                                        jmp   proc_profession$2F1_ω
n371_op11_β:
                                                                                        jmp   proc_profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n373_lit_string_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n374_lit_string_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n375_lit_string_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n376_lit_string_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "doctor"
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n377_lit_string_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n378_lit_string_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "lawyer"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n379_op11_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n379_op11_α:
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
                                                                                        je    proc_profession$2F1_ω
                                                                                        jmp   n380_op11_α
n379_op11_β:
                                                                                        jmp   proc_profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n380_op11_α:
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
                                                                                        je    proc_profession$2F1_ω
                                                                                        jmp   n381_op11_α
n380_op11_β:
                                                                                        jmp   proc_profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
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
                                                                                        je    n371_op11_α
                                                                                        jmp   n382_call_proc_staged_α
n381_op11_β:
                                                                                        jmp   n371_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n382_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx404_21
.Lx404_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx404_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx404_23
.Lx404_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx404_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx404_1
                        lea              rcx, [rip + .Lx404_3]
                        lea              rdx, [rip + .Lx404_4]
                                                                                        jmp   rax
.Lx404_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx404_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx404_2
.Lx404_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx404_2
.Lx404_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx404_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx404_2
.Lx404_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx404_2
.Lx404_1:
                        call             rt_faildescr@PLT
.Lx404_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n371_op11_α
                                                                                        jmp   n383_suspend_α
n382_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n383_suspend_α:
                        lea              rax, [rip + n383_suspend_β]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_profession$2F1_γ
n383_suspend_β:
                                                                                        jmp   n382_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_profession$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_profession$2F1_β:
                                                                                        jmp   qword ptr [rbp + 624]
#-----------------------------------------------------------------------------------------------------------------------
proc_profession$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_profession$2F1_res]
                        push             rax
                        mov              rax, [rbp + 664]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_profession$2F1_ω:
                        mov              rax, [rbp + 672]
                        lea              rsp, [rbp + 688]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_secretary$2F1_α
proc_secretary$2F1_α:
                        .global          proc_secretary$2F1_α
                        .global          proc_secretary$2F1_β
                        .global          proc_secretary$2F1_γ
                        .global          proc_secretary$2F1_ω
                        sub              rsp, 688
                        mov              [rsp + 664], rcx
                        mov              [rsp + 672], rdx
                        mov              [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
proc_secretary$2F1_α_body:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n407_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx425_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx425_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx425_101
.Lx425_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx425_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_secretary$2F1_ω
                                                                                        jmp   n408_var_ref_α
n407_op11_β:
                                                                                        jmp   proc_secretary$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n409_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n410_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n410_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx430_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx430_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_41
                        cmp              esi, 1
                                                                                        jne   .Lx430_55
                        mov              r8, rax
                                                                                        jmp   .Lx430_40
.Lx430_55:
                        cmp              esi, 2
                                                                                        jne   .Lx430_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx430_41
                        mov              r8, rax
                                                                                        jmp   .Lx430_40
.Lx430_56:
                        cmp              eax, 13
                                                                                        jne   .Lx430_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_41
                        cmp              rax, r8
                                                                                        je    .Lx430_41
                        mov              r8, rax
                                                                                        jmp   .Lx430_40
.Lx430_41:
                        lea              r9, [rbp + 576]
.Lx430_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx430_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_43
                        cmp              esi, 1
                                                                                        jne   .Lx430_57
                        mov              r9, rax
                                                                                        jmp   .Lx430_42
.Lx430_57:
                        cmp              esi, 2
                                                                                        jne   .Lx430_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx430_43
                        mov              r9, rax
                                                                                        jmp   .Lx430_42
.Lx430_58:
                        cmp              eax, 13
                                                                                        jne   .Lx430_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_43
                        cmp              rax, r9
                                                                                        je    .Lx430_43
                        mov              r9, rax
                                                                                        jmp   .Lx430_42
.Lx430_43:
                        cmp              r8, r9
                                                                                        je    .Lx430_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx430_44
                        cmp              eax, 99
                                                                                        je    .Lx430_44
                        cmp              eax, 13
                                                                                        jne   .Lx430_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx430_44
                                                                                        jmp   .Lx430_45
.Lx430_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx430_53
                        cmp              eax, 99
                                                                                        je    .Lx430_53
                        cmp              eax, 13
                                                                                        jne   .Lx430_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx430_53
                                                                                        jmp   .Lx430_46
.Lx430_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx430_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx430_53
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
                                                                                        jmp   .Lx430_51
.Lx430_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx430_47
                        cmp              eax, 99
                                                                                        je    .Lx430_47
                        cmp              eax, 13
                                                                                        jne   .Lx430_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx430_47
                                                                                        jmp   .Lx430_48
.Lx430_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx430_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx430_53
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
                                                                                        jmp   .Lx430_51
.Lx430_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx430_49
                        cmp              edx, 14
                                                                                        je    .Lx430_53
                                                                                        jmp   .Lx430_52
.Lx430_49:
                        cmp              edx, 14
                                                                                        je    .Lx430_52
                        cmp              ecx, 7
                                                                                        je    .Lx430_53
                        cmp              edx, 7
                                                                                        je    .Lx430_53
                        cmp              ecx, 6
                                                                                        jne   .Lx430_50
                        cmp              edx, 6
                                                                                        jne   .Lx430_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx430_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx430_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx430_51
                                                                                        jmp   .Lx430_52
.Lx430_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx430_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx430_53
.Lx430_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx430_54
.Lx430_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx430_54
.Lx430_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx430_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n412_op11_α
                                                                                        jmp   n411_var_ref_α
n410_op11_β:
                                                                                        jmp   n412_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n413_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n412_op11_α:
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
                                                                                        je    proc_secretary$2F1_ω
                                                                                        jmp   proc_secretary$2F1_ω
n412_op11_β:
                                                                                        jmp   proc_secretary$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n414_lit_string_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n415_lit_string_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "ainsley"
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n416_lit_string_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n417_lit_string_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "barnette"
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n418_lit_string_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n419_lit_string_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "coulter"
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n420_op11_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
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
                                                                                        je    proc_secretary$2F1_ω
                                                                                        jmp   n421_op11_α
n420_op11_β:
                                                                                        jmp   proc_secretary$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_op11_α:
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
                                                                                        je    proc_secretary$2F1_ω
                                                                                        jmp   n422_op11_α
n421_op11_β:
                                                                                        jmp   proc_secretary$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_op11_α:
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
                                                                                        je    n412_op11_α
                                                                                        jmp   n423_call_proc_staged_α
n422_op11_β:
                                                                                        jmp   n412_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx445_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx445_21
.Lx445_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx445_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx445_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx445_23
.Lx445_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx445_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx445_1
                        lea              rcx, [rip + .Lx445_3]
                        lea              rdx, [rip + .Lx445_4]
                                                                                        jmp   rax
.Lx445_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx445_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx445_2
.Lx445_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx445_2
.Lx445_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx445_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx445_2
.Lx445_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx445_2
.Lx445_1:
                        call             rt_faildescr@PLT
.Lx445_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n412_op11_α
                                                                                        jmp   n424_suspend_α
n423_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n424_suspend_α:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_secretary$2F1_γ
n424_suspend_β:
                                                                                        jmp   n423_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_secretary$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_secretary$2F1_β:
                                                                                        jmp   qword ptr [rbp + 624]
#-----------------------------------------------------------------------------------------------------------------------
proc_secretary$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_secretary$2F1_res]
                        push             rax
                        mov              rax, [rbp + 664]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_secretary$2F1_ω:
                        mov              rax, [rbp + 672]
                        lea              rsp, [rbp + 688]
                        mov              rbp, [rbp + 680]
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
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n448_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx470_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx470_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx470_101
.Lx470_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx470_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n449_var_ref_α
n448_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n450_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n451_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
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
.Lx475_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx475_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_41
                        cmp              esi, 1
                                                                                        jne   .Lx475_55
                        mov              r8, rax
                                                                                        jmp   .Lx475_40
.Lx475_55:
                        cmp              esi, 2
                                                                                        jne   .Lx475_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx475_41
                        mov              r8, rax
                                                                                        jmp   .Lx475_40
.Lx475_56:
                        cmp              eax, 13
                                                                                        jne   .Lx475_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_41
                        cmp              rax, r8
                                                                                        je    .Lx475_41
                        mov              r8, rax
                                                                                        jmp   .Lx475_40
.Lx475_41:
                        lea              r9, [rbp + 608]
.Lx475_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx475_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_43
                        cmp              esi, 1
                                                                                        jne   .Lx475_57
                        mov              r9, rax
                                                                                        jmp   .Lx475_42
.Lx475_57:
                        cmp              esi, 2
                                                                                        jne   .Lx475_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx475_43
                        mov              r9, rax
                                                                                        jmp   .Lx475_42
.Lx475_58:
                        cmp              eax, 13
                                                                                        jne   .Lx475_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_43
                        cmp              rax, r9
                                                                                        je    .Lx475_43
                        mov              r9, rax
                                                                                        jmp   .Lx475_42
.Lx475_43:
                        cmp              r8, r9
                                                                                        je    .Lx475_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx475_44
                        cmp              eax, 99
                                                                                        je    .Lx475_44
                        cmp              eax, 13
                                                                                        jne   .Lx475_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx475_44
                                                                                        jmp   .Lx475_45
.Lx475_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx475_53
                        cmp              eax, 99
                                                                                        je    .Lx475_53
                        cmp              eax, 13
                                                                                        jne   .Lx475_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx475_53
                                                                                        jmp   .Lx475_46
.Lx475_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx475_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx475_53
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
                                                                                        jmp   .Lx475_51
.Lx475_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx475_47
                        cmp              eax, 99
                                                                                        je    .Lx475_47
                        cmp              eax, 13
                                                                                        jne   .Lx475_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx475_47
                                                                                        jmp   .Lx475_48
.Lx475_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx475_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx475_53
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
                                                                                        jmp   .Lx475_51
.Lx475_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx475_49
                        cmp              edx, 14
                                                                                        je    .Lx475_53
                                                                                        jmp   .Lx475_52
.Lx475_49:
                        cmp              edx, 14
                                                                                        je    .Lx475_52
                        cmp              ecx, 7
                                                                                        je    .Lx475_53
                        cmp              edx, 7
                                                                                        je    .Lx475_53
                        cmp              ecx, 6
                                                                                        jne   .Lx475_50
                        cmp              edx, 6
                                                                                        jne   .Lx475_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx475_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx475_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx475_51
                                                                                        jmp   .Lx475_52
.Lx475_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx475_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx475_53
.Lx475_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx475_54
.Lx475_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx475_54
.Lx475_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx475_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n453_op11_α
                                                                                        jmp   n452_var_ref_α
n451_op11_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n454_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n453_op11_α:
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
                                                                                        jmp   n455_var_ref_α
n453_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n458_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n458_op11_α:
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
.Lx487_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_61
                        cmp              esi, 1
                                                                                        jne   .Lx487_62
                        mov              r8, rax
                                                                                        jmp   .Lx487_60
.Lx487_62:
                        cmp              esi, 2
                                                                                        jne   .Lx487_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_61
                        mov              r8, rax
                                                                                        jmp   .Lx487_60
.Lx487_63:
                        cmp              eax, 13
                                                                                        jne   .Lx487_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_61
                        cmp              rax, r8
                                                                                        je    .Lx487_61
                        mov              r8, rax
                                                                                        jmp   .Lx487_60
.Lx487_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_80
                        cmp              eax, 99
                                                                                        je    .Lx487_80
                        cmp              eax, 13
                                                                                        jne   .Lx487_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx487_80
                                                                                        jmp   .Lx487_74
.Lx487_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx487_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx487_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx487_73
                        lea              r9, [rbp + 512]
.Lx487_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_65
                        cmp              esi, 1
                                                                                        jne   .Lx487_66
                        mov              r9, rax
                                                                                        jmp   .Lx487_64
.Lx487_66:
                        cmp              esi, 2
                                                                                        jne   .Lx487_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_65
                        mov              r9, rax
                                                                                        jmp   .Lx487_64
.Lx487_67:
                        cmp              eax, 13
                                                                                        jne   .Lx487_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_65
                        cmp              rax, r9
                                                                                        je    .Lx487_65
                        mov              r9, rax
                                                                                        jmp   .Lx487_64
.Lx487_65:
                        lea              rcx, [rbp + 528]
.Lx487_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx487_69
                        cmp              esi, 1
                                                                                        jne   .Lx487_70
                        mov              rcx, rax
                                                                                        jmp   .Lx487_68
.Lx487_70:
                        cmp              esi, 2
                                                                                        jne   .Lx487_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_69
                        mov              rcx, rax
                                                                                        jmp   .Lx487_68
.Lx487_71:
                        cmp              eax, 13
                                                                                        jne   .Lx487_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx487_69
                        cmp              rax, rcx
                                                                                        je    .Lx487_69
                        mov              rcx, rax
                                                                                        jmp   .Lx487_68
.Lx487_69:
                        cmp              r9, rcx
                                                                                        je    .Lx487_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_75
                        cmp              eax, 99
                                                                                        je    .Lx487_75
                        cmp              eax, 13
                                                                                        jne   .Lx487_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx487_75
                                                                                        jmp   .Lx487_72
.Lx487_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_76
                        cmp              eax, 99
                                                                                        je    .Lx487_76
                        cmp              eax, 13
                                                                                        jne   .Lx487_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx487_76
                                                                                        jmp   .Lx487_72
.Lx487_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx487_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx487_72
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
                                                                                        jmp   .Lx487_77
.Lx487_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx487_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx487_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx487_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx487_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx487_72
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
.Lx487_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_82
                        cmp              esi, 1
                                                                                        jne   .Lx487_83
                        mov              r9, rax
                                                                                        jmp   .Lx487_81
.Lx487_83:
                        cmp              esi, 2
                                                                                        jne   .Lx487_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_82
                        mov              r9, rax
                                                                                        jmp   .Lx487_81
.Lx487_84:
                        cmp              eax, 13
                                                                                        jne   .Lx487_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_82
                        cmp              rax, r9
                                                                                        je    .Lx487_82
                        mov              r9, rax
                                                                                        jmp   .Lx487_81
.Lx487_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_85
                        cmp              eax, 99
                                                                                        je    .Lx487_85
                        cmp              eax, 13
                                                                                        jne   .Lx487_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx487_85
                                                                                        jmp   .Lx487_86
.Lx487_85:
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
                                                                                        jmp   .Lx487_87
.Lx487_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx487_87:
                        lea              rcx, [rbp + 528]
.Lx487_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx487_89
                        cmp              esi, 1
                                                                                        jne   .Lx487_90
                        mov              rcx, rax
                                                                                        jmp   .Lx487_88
.Lx487_90:
                        cmp              esi, 2
                                                                                        jne   .Lx487_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_89
                        mov              rcx, rax
                                                                                        jmp   .Lx487_88
.Lx487_91:
                        cmp              eax, 13
                                                                                        jne   .Lx487_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx487_89
                        cmp              rax, rcx
                                                                                        je    .Lx487_89
                        mov              rcx, rax
                                                                                        jmp   .Lx487_88
.Lx487_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_92
                        cmp              eax, 99
                                                                                        je    .Lx487_92
                        cmp              eax, 13
                                                                                        jne   .Lx487_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx487_92
                                                                                        jmp   .Lx487_93
.Lx487_92:
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
                                                                                        jmp   .Lx487_94
.Lx487_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx487_94:
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
                                                                                        jmp   .Lx487_77
.Lx487_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx487_77
.Lx487_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx487_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n453_op11_α
                                                                                        jmp   n460_suspend_α
n458_op11_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n459_op11_α:
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
.Lx488_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx488_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        cmp              esi, 1
                                                                                        jne   .Lx488_55
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_55:
                        cmp              esi, 2
                                                                                        jne   .Lx488_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_56:
                        cmp              eax, 13
                                                                                        jne   .Lx488_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        cmp              rax, r8
                                                                                        je    .Lx488_41
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_41:
                        lea              r9, [rbp + 368]
.Lx488_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx488_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        cmp              esi, 1
                                                                                        jne   .Lx488_57
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_57:
                        cmp              esi, 2
                                                                                        jne   .Lx488_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_58:
                        cmp              eax, 13
                                                                                        jne   .Lx488_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        cmp              rax, r9
                                                                                        je    .Lx488_43
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_43:
                        cmp              r8, r9
                                                                                        je    .Lx488_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_44
                        cmp              eax, 99
                                                                                        je    .Lx488_44
                        cmp              eax, 13
                                                                                        jne   .Lx488_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx488_44
                                                                                        jmp   .Lx488_45
.Lx488_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_53
                        cmp              eax, 99
                                                                                        je    .Lx488_53
                        cmp              eax, 13
                                                                                        jne   .Lx488_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx488_53
                                                                                        jmp   .Lx488_46
.Lx488_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx488_53
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
                                                                                        jmp   .Lx488_51
.Lx488_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_47
                        cmp              eax, 99
                                                                                        je    .Lx488_47
                        cmp              eax, 13
                                                                                        jne   .Lx488_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx488_47
                                                                                        jmp   .Lx488_48
.Lx488_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx488_53
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
                                                                                        jmp   .Lx488_51
.Lx488_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx488_49
                        cmp              edx, 14
                                                                                        je    .Lx488_53
                                                                                        jmp   .Lx488_52
.Lx488_49:
                        cmp              edx, 14
                                                                                        je    .Lx488_52
                        cmp              ecx, 7
                                                                                        je    .Lx488_53
                        cmp              edx, 7
                                                                                        je    .Lx488_53
                        cmp              ecx, 6
                                                                                        jne   .Lx488_50
                        cmp              edx, 6
                                                                                        jne   .Lx488_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx488_51
                                                                                        jmp   .Lx488_52
.Lx488_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx488_53
.Lx488_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx488_54
.Lx488_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx488_54
.Lx488_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx488_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n462_op11_α
                                                                                        jmp   n461_var_ref_α
n459_op11_β:
                                                                                        jmp   n462_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n460_suspend_α:
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n460_suspend_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n463_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n462_op11_α:
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
n462_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n464_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n465_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n465_op11_α:
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
.Lx498_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx498_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_61
                        cmp              esi, 1
                                                                                        jne   .Lx498_62
                        mov              r8, rax
                                                                                        jmp   .Lx498_60
.Lx498_62:
                        cmp              esi, 2
                                                                                        jne   .Lx498_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx498_61
                        mov              r8, rax
                                                                                        jmp   .Lx498_60
.Lx498_63:
                        cmp              eax, 13
                                                                                        jne   .Lx498_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_61
                        cmp              rax, r8
                                                                                        je    .Lx498_61
                        mov              r8, rax
                                                                                        jmp   .Lx498_60
.Lx498_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_80
                        cmp              eax, 99
                                                                                        je    .Lx498_80
                        cmp              eax, 13
                                                                                        jne   .Lx498_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx498_80
                                                                                        jmp   .Lx498_74
.Lx498_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx498_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx498_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx498_73
                        lea              r9, [rbp + 272]
.Lx498_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx498_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_65
                        cmp              esi, 1
                                                                                        jne   .Lx498_66
                        mov              r9, rax
                                                                                        jmp   .Lx498_64
.Lx498_66:
                        cmp              esi, 2
                                                                                        jne   .Lx498_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx498_65
                        mov              r9, rax
                                                                                        jmp   .Lx498_64
.Lx498_67:
                        cmp              eax, 13
                                                                                        jne   .Lx498_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_65
                        cmp              rax, r9
                                                                                        je    .Lx498_65
                        mov              r9, rax
                                                                                        jmp   .Lx498_64
.Lx498_65:
                        lea              rcx, [rbp + 288]
.Lx498_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx498_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx498_69
                        cmp              esi, 1
                                                                                        jne   .Lx498_70
                        mov              rcx, rax
                                                                                        jmp   .Lx498_68
.Lx498_70:
                        cmp              esi, 2
                                                                                        jne   .Lx498_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx498_69
                        mov              rcx, rax
                                                                                        jmp   .Lx498_68
.Lx498_71:
                        cmp              eax, 13
                                                                                        jne   .Lx498_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx498_69
                        cmp              rax, rcx
                                                                                        je    .Lx498_69
                        mov              rcx, rax
                                                                                        jmp   .Lx498_68
.Lx498_69:
                        cmp              r9, rcx
                                                                                        je    .Lx498_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_75
                        cmp              eax, 99
                                                                                        je    .Lx498_75
                        cmp              eax, 13
                                                                                        jne   .Lx498_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx498_75
                                                                                        jmp   .Lx498_72
.Lx498_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_76
                        cmp              eax, 99
                                                                                        je    .Lx498_76
                        cmp              eax, 13
                                                                                        jne   .Lx498_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx498_76
                                                                                        jmp   .Lx498_72
.Lx498_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx498_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx498_72
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
                                                                                        jmp   .Lx498_77
.Lx498_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx498_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx498_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx498_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx498_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx498_72
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
.Lx498_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx498_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_82
                        cmp              esi, 1
                                                                                        jne   .Lx498_83
                        mov              r9, rax
                                                                                        jmp   .Lx498_81
.Lx498_83:
                        cmp              esi, 2
                                                                                        jne   .Lx498_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx498_82
                        mov              r9, rax
                                                                                        jmp   .Lx498_81
.Lx498_84:
                        cmp              eax, 13
                                                                                        jne   .Lx498_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_82
                        cmp              rax, r9
                                                                                        je    .Lx498_82
                        mov              r9, rax
                                                                                        jmp   .Lx498_81
.Lx498_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_85
                        cmp              eax, 99
                                                                                        je    .Lx498_85
                        cmp              eax, 13
                                                                                        jne   .Lx498_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx498_85
                                                                                        jmp   .Lx498_86
.Lx498_85:
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
                                                                                        jmp   .Lx498_87
.Lx498_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx498_87:
                        lea              rcx, [rbp + 288]
.Lx498_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx498_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx498_89
                        cmp              esi, 1
                                                                                        jne   .Lx498_90
                        mov              rcx, rax
                                                                                        jmp   .Lx498_88
.Lx498_90:
                        cmp              esi, 2
                                                                                        jne   .Lx498_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx498_89
                        mov              rcx, rax
                                                                                        jmp   .Lx498_88
.Lx498_91:
                        cmp              eax, 13
                                                                                        jne   .Lx498_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx498_89
                        cmp              rax, rcx
                                                                                        je    .Lx498_89
                        mov              rcx, rax
                                                                                        jmp   .Lx498_88
.Lx498_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_92
                        cmp              eax, 99
                                                                                        je    .Lx498_92
                        cmp              eax, 13
                                                                                        jne   .Lx498_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx498_92
                                                                                        jmp   .Lx498_93
.Lx498_92:
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
                                                                                        jmp   .Lx498_94
.Lx498_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx498_94:
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
                                                                                        jmp   .Lx498_77
.Lx498_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx498_77
.Lx498_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx498_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n462_op11_α
                                                                                        jmp   n466_var_ref_α
n465_op11_β:
                                                                                        jmp   n462_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n468_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n468_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx504_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx504_21
.Lx504_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx504_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx504_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx504_23
.Lx504_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx504_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx504_1
                        lea              rcx, [rip + .Lx504_3]
                        lea              rdx, [rip + .Lx504_4]
                                                                                        jmp   rax
.Lx504_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx504_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx504_2
.Lx504_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx504_2
.Lx504_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx504_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx504_2
.Lx504_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx504_2
.Lx504_1:
                        call             rt_faildescr@PLT
.Lx504_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n462_op11_α
                                                                                        jmp   n469_suspend_α
n468_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n469_suspend_α:
                        lea              rax, [rip + n469_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n469_suspend_β:
                                                                                        jmp   n468_call_proc_staged_β
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
n507_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx555_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx555_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx555_101
.Lx555_100:
                        lea              rdi, [rbp + 160]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx555_101:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F6_ω
                                                                                        jmp   n508_var_ref_α
n507_op11_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n509_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n510_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
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
.Lx560_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx560_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_41
                        cmp              esi, 1
                                                                                        jne   .Lx560_55
                        mov              r8, rax
                                                                                        jmp   .Lx560_40
.Lx560_55:
                        cmp              esi, 2
                                                                                        jne   .Lx560_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx560_41
                        mov              r8, rax
                                                                                        jmp   .Lx560_40
.Lx560_56:
                        cmp              eax, 13
                                                                                        jne   .Lx560_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_41
                        cmp              rax, r8
                                                                                        je    .Lx560_41
                        mov              r8, rax
                                                                                        jmp   .Lx560_40
.Lx560_41:
                        lea              r9, [rbp + 1264]
.Lx560_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx560_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_43
                        cmp              esi, 1
                                                                                        jne   .Lx560_57
                        mov              r9, rax
                                                                                        jmp   .Lx560_42
.Lx560_57:
                        cmp              esi, 2
                                                                                        jne   .Lx560_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx560_43
                        mov              r9, rax
                                                                                        jmp   .Lx560_42
.Lx560_58:
                        cmp              eax, 13
                                                                                        jne   .Lx560_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_43
                        cmp              rax, r9
                                                                                        je    .Lx560_43
                        mov              r9, rax
                                                                                        jmp   .Lx560_42
.Lx560_43:
                        cmp              r8, r9
                                                                                        je    .Lx560_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx560_44
                        cmp              eax, 99
                                                                                        je    .Lx560_44
                        cmp              eax, 13
                                                                                        jne   .Lx560_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx560_44
                                                                                        jmp   .Lx560_45
.Lx560_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx560_53
                        cmp              eax, 99
                                                                                        je    .Lx560_53
                        cmp              eax, 13
                                                                                        jne   .Lx560_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx560_53
                                                                                        jmp   .Lx560_46
.Lx560_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx560_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx560_53
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
                                                                                        jmp   .Lx560_51
.Lx560_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx560_47
                        cmp              eax, 99
                                                                                        je    .Lx560_47
                        cmp              eax, 13
                                                                                        jne   .Lx560_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx560_47
                                                                                        jmp   .Lx560_48
.Lx560_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx560_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx560_53
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
                                                                                        jmp   .Lx560_51
.Lx560_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx560_49
                        cmp              edx, 14
                                                                                        je    .Lx560_53
                                                                                        jmp   .Lx560_52
.Lx560_49:
                        cmp              edx, 14
                                                                                        je    .Lx560_52
                        cmp              ecx, 7
                                                                                        je    .Lx560_53
                        cmp              edx, 7
                                                                                        je    .Lx560_53
                        cmp              ecx, 6
                                                                                        jne   .Lx560_50
                        cmp              edx, 6
                                                                                        jne   .Lx560_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx560_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx560_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx560_51
                                                                                        jmp   .Lx560_52
.Lx560_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx560_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx560_53
.Lx560_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx560_54
.Lx560_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx560_54
.Lx560_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx560_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n511_var_ref_α
n510_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n513_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n512_op11_α:
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
n512_op11_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n514_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n514_op11_α:
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
.Lx566_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx566_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_41
                        cmp              esi, 1
                                                                                        jne   .Lx566_55
                        mov              r8, rax
                                                                                        jmp   .Lx566_40
.Lx566_55:
                        cmp              esi, 2
                                                                                        jne   .Lx566_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx566_41
                        mov              r8, rax
                                                                                        jmp   .Lx566_40
.Lx566_56:
                        cmp              eax, 13
                                                                                        jne   .Lx566_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_41
                        cmp              rax, r8
                                                                                        je    .Lx566_41
                        mov              r8, rax
                                                                                        jmp   .Lx566_40
.Lx566_41:
                        lea              r9, [rbp + 1184]
.Lx566_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx566_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_43
                        cmp              esi, 1
                                                                                        jne   .Lx566_57
                        mov              r9, rax
                                                                                        jmp   .Lx566_42
.Lx566_57:
                        cmp              esi, 2
                                                                                        jne   .Lx566_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx566_43
                        mov              r9, rax
                                                                                        jmp   .Lx566_42
.Lx566_58:
                        cmp              eax, 13
                                                                                        jne   .Lx566_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_43
                        cmp              rax, r9
                                                                                        je    .Lx566_43
                        mov              r9, rax
                                                                                        jmp   .Lx566_42
.Lx566_43:
                        cmp              r8, r9
                                                                                        je    .Lx566_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx566_44
                        cmp              eax, 99
                                                                                        je    .Lx566_44
                        cmp              eax, 13
                                                                                        jne   .Lx566_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx566_44
                                                                                        jmp   .Lx566_45
.Lx566_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx566_53
                        cmp              eax, 99
                                                                                        je    .Lx566_53
                        cmp              eax, 13
                                                                                        jne   .Lx566_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx566_53
                                                                                        jmp   .Lx566_46
.Lx566_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx566_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx566_53
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
                                                                                        jmp   .Lx566_51
.Lx566_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx566_47
                        cmp              eax, 99
                                                                                        je    .Lx566_47
                        cmp              eax, 13
                                                                                        jne   .Lx566_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx566_47
                                                                                        jmp   .Lx566_48
.Lx566_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx566_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx566_53
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
                                                                                        jmp   .Lx566_51
.Lx566_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx566_49
                        cmp              edx, 14
                                                                                        je    .Lx566_53
                                                                                        jmp   .Lx566_52
.Lx566_49:
                        cmp              edx, 14
                                                                                        je    .Lx566_52
                        cmp              ecx, 7
                                                                                        je    .Lx566_53
                        cmp              edx, 7
                                                                                        je    .Lx566_53
                        cmp              ecx, 6
                                                                                        jne   .Lx566_50
                        cmp              edx, 6
                                                                                        jne   .Lx566_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx566_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx566_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx566_51
                                                                                        jmp   .Lx566_52
.Lx566_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx566_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx566_53
.Lx566_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx566_54
.Lx566_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx566_54
.Lx566_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx566_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n515_var_ref_α
n514_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n516_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n517_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n517_op11_α:
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
.Lx571_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx571_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx571_41
                        cmp              esi, 1
                                                                                        jne   .Lx571_55
                        mov              r8, rax
                                                                                        jmp   .Lx571_40
.Lx571_55:
                        cmp              esi, 2
                                                                                        jne   .Lx571_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx571_41
                        mov              r8, rax
                                                                                        jmp   .Lx571_40
.Lx571_56:
                        cmp              eax, 13
                                                                                        jne   .Lx571_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx571_41
                        cmp              rax, r8
                                                                                        je    .Lx571_41
                        mov              r8, rax
                                                                                        jmp   .Lx571_40
.Lx571_41:
                        lea              r9, [rbp + 1104]
.Lx571_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx571_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx571_43
                        cmp              esi, 1
                                                                                        jne   .Lx571_57
                        mov              r9, rax
                                                                                        jmp   .Lx571_42
.Lx571_57:
                        cmp              esi, 2
                                                                                        jne   .Lx571_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx571_43
                        mov              r9, rax
                                                                                        jmp   .Lx571_42
.Lx571_58:
                        cmp              eax, 13
                                                                                        jne   .Lx571_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx571_43
                        cmp              rax, r9
                                                                                        je    .Lx571_43
                        mov              r9, rax
                                                                                        jmp   .Lx571_42
.Lx571_43:
                        cmp              r8, r9
                                                                                        je    .Lx571_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx571_44
                        cmp              eax, 99
                                                                                        je    .Lx571_44
                        cmp              eax, 13
                                                                                        jne   .Lx571_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx571_44
                                                                                        jmp   .Lx571_45
.Lx571_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx571_53
                        cmp              eax, 99
                                                                                        je    .Lx571_53
                        cmp              eax, 13
                                                                                        jne   .Lx571_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx571_53
                                                                                        jmp   .Lx571_46
.Lx571_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx571_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx571_53
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
                                                                                        jmp   .Lx571_51
.Lx571_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx571_47
                        cmp              eax, 99
                                                                                        je    .Lx571_47
                        cmp              eax, 13
                                                                                        jne   .Lx571_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx571_47
                                                                                        jmp   .Lx571_48
.Lx571_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx571_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx571_53
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
                                                                                        jmp   .Lx571_51
.Lx571_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx571_49
                        cmp              edx, 14
                                                                                        je    .Lx571_53
                                                                                        jmp   .Lx571_52
.Lx571_49:
                        cmp              edx, 14
                                                                                        je    .Lx571_52
                        cmp              ecx, 7
                                                                                        je    .Lx571_53
                        cmp              edx, 7
                                                                                        je    .Lx571_53
                        cmp              ecx, 6
                                                                                        jne   .Lx571_50
                        cmp              edx, 6
                                                                                        jne   .Lx571_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx571_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx571_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx571_51
                                                                                        jmp   .Lx571_52
.Lx571_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx571_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx571_53
.Lx571_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx571_54
.Lx571_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx571_54
.Lx571_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx571_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n518_var_ref_α
n517_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n519_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n520_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n520_op11_α:
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
.Lx576_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx576_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_41
                        cmp              esi, 1
                                                                                        jne   .Lx576_55
                        mov              r8, rax
                                                                                        jmp   .Lx576_40
.Lx576_55:
                        cmp              esi, 2
                                                                                        jne   .Lx576_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_41
                        mov              r8, rax
                                                                                        jmp   .Lx576_40
.Lx576_56:
                        cmp              eax, 13
                                                                                        jne   .Lx576_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_41
                        cmp              rax, r8
                                                                                        je    .Lx576_41
                        mov              r8, rax
                                                                                        jmp   .Lx576_40
.Lx576_41:
                        lea              r9, [rbp + 1024]
.Lx576_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx576_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_43
                        cmp              esi, 1
                                                                                        jne   .Lx576_57
                        mov              r9, rax
                                                                                        jmp   .Lx576_42
.Lx576_57:
                        cmp              esi, 2
                                                                                        jne   .Lx576_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_43
                        mov              r9, rax
                                                                                        jmp   .Lx576_42
.Lx576_58:
                        cmp              eax, 13
                                                                                        jne   .Lx576_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_43
                        cmp              rax, r9
                                                                                        je    .Lx576_43
                        mov              r9, rax
                                                                                        jmp   .Lx576_42
.Lx576_43:
                        cmp              r8, r9
                                                                                        je    .Lx576_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_44
                        cmp              eax, 99
                                                                                        je    .Lx576_44
                        cmp              eax, 13
                                                                                        jne   .Lx576_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx576_44
                                                                                        jmp   .Lx576_45
.Lx576_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_53
                        cmp              eax, 99
                                                                                        je    .Lx576_53
                        cmp              eax, 13
                                                                                        jne   .Lx576_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx576_53
                                                                                        jmp   .Lx576_46
.Lx576_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx576_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx576_53
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
                                                                                        jmp   .Lx576_51
.Lx576_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_47
                        cmp              eax, 99
                                                                                        je    .Lx576_47
                        cmp              eax, 13
                                                                                        jne   .Lx576_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx576_47
                                                                                        jmp   .Lx576_48
.Lx576_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx576_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx576_53
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
                                                                                        jmp   .Lx576_51
.Lx576_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx576_49
                        cmp              edx, 14
                                                                                        je    .Lx576_53
                                                                                        jmp   .Lx576_52
.Lx576_49:
                        cmp              edx, 14
                                                                                        je    .Lx576_52
                        cmp              ecx, 7
                                                                                        je    .Lx576_53
                        cmp              edx, 7
                                                                                        je    .Lx576_53
                        cmp              ecx, 6
                                                                                        jne   .Lx576_50
                        cmp              edx, 6
                                                                                        jne   .Lx576_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx576_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx576_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx576_51
                                                                                        jmp   .Lx576_52
.Lx576_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx576_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx576_53
.Lx576_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx576_54
.Lx576_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx576_54
.Lx576_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx576_54:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n521_var_ref_α
n520_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n522_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n523_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n523_op11_α:
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
.Lx581_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_41
                        cmp              esi, 1
                                                                                        jne   .Lx581_55
                        mov              r8, rax
                                                                                        jmp   .Lx581_40
.Lx581_55:
                        cmp              esi, 2
                                                                                        jne   .Lx581_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_41
                        mov              r8, rax
                                                                                        jmp   .Lx581_40
.Lx581_56:
                        cmp              eax, 13
                                                                                        jne   .Lx581_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_41
                        cmp              rax, r8
                                                                                        je    .Lx581_41
                        mov              r8, rax
                                                                                        jmp   .Lx581_40
.Lx581_41:
                        lea              r9, [rbp + 944]
.Lx581_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_43
                        cmp              esi, 1
                                                                                        jne   .Lx581_57
                        mov              r9, rax
                                                                                        jmp   .Lx581_42
.Lx581_57:
                        cmp              esi, 2
                                                                                        jne   .Lx581_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_43
                        mov              r9, rax
                                                                                        jmp   .Lx581_42
.Lx581_58:
                        cmp              eax, 13
                                                                                        jne   .Lx581_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_43
                        cmp              rax, r9
                                                                                        je    .Lx581_43
                        mov              r9, rax
                                                                                        jmp   .Lx581_42
.Lx581_43:
                        cmp              r8, r9
                                                                                        je    .Lx581_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_44
                        cmp              eax, 99
                                                                                        je    .Lx581_44
                        cmp              eax, 13
                                                                                        jne   .Lx581_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx581_44
                                                                                        jmp   .Lx581_45
.Lx581_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_53
                        cmp              eax, 99
                                                                                        je    .Lx581_53
                        cmp              eax, 13
                                                                                        jne   .Lx581_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx581_53
                                                                                        jmp   .Lx581_46
.Lx581_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx581_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx581_53
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
                                                                                        jmp   .Lx581_51
.Lx581_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_47
                        cmp              eax, 99
                                                                                        je    .Lx581_47
                        cmp              eax, 13
                                                                                        jne   .Lx581_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx581_47
                                                                                        jmp   .Lx581_48
.Lx581_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx581_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx581_53
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
                                                                                        jmp   .Lx581_51
.Lx581_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx581_49
                        cmp              edx, 14
                                                                                        je    .Lx581_53
                                                                                        jmp   .Lx581_52
.Lx581_49:
                        cmp              edx, 14
                                                                                        je    .Lx581_52
                        cmp              ecx, 7
                                                                                        je    .Lx581_53
                        cmp              edx, 7
                                                                                        je    .Lx581_53
                        cmp              ecx, 6
                                                                                        jne   .Lx581_50
                        cmp              edx, 6
                                                                                        jne   .Lx581_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx581_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx581_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx581_51
                                                                                        jmp   .Lx581_52
.Lx581_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx581_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx581_53
.Lx581_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx581_54
.Lx581_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx581_54
.Lx581_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx581_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n524_var_ref_α
n523_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n525_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n526_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n526_op11_α:
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
.Lx586_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx586_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx586_41
                        cmp              esi, 1
                                                                                        jne   .Lx586_55
                        mov              r8, rax
                                                                                        jmp   .Lx586_40
.Lx586_55:
                        cmp              esi, 2
                                                                                        jne   .Lx586_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx586_41
                        mov              r8, rax
                                                                                        jmp   .Lx586_40
.Lx586_56:
                        cmp              eax, 13
                                                                                        jne   .Lx586_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx586_41
                        cmp              rax, r8
                                                                                        je    .Lx586_41
                        mov              r8, rax
                                                                                        jmp   .Lx586_40
.Lx586_41:
                        lea              r9, [rbp + 864]
.Lx586_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx586_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx586_43
                        cmp              esi, 1
                                                                                        jne   .Lx586_57
                        mov              r9, rax
                                                                                        jmp   .Lx586_42
.Lx586_57:
                        cmp              esi, 2
                                                                                        jne   .Lx586_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx586_43
                        mov              r9, rax
                                                                                        jmp   .Lx586_42
.Lx586_58:
                        cmp              eax, 13
                                                                                        jne   .Lx586_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx586_43
                        cmp              rax, r9
                                                                                        je    .Lx586_43
                        mov              r9, rax
                                                                                        jmp   .Lx586_42
.Lx586_43:
                        cmp              r8, r9
                                                                                        je    .Lx586_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx586_44
                        cmp              eax, 99
                                                                                        je    .Lx586_44
                        cmp              eax, 13
                                                                                        jne   .Lx586_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx586_44
                                                                                        jmp   .Lx586_45
.Lx586_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx586_53
                        cmp              eax, 99
                                                                                        je    .Lx586_53
                        cmp              eax, 13
                                                                                        jne   .Lx586_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx586_53
                                                                                        jmp   .Lx586_46
.Lx586_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx586_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx586_53
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
                                                                                        jmp   .Lx586_51
.Lx586_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx586_47
                        cmp              eax, 99
                                                                                        je    .Lx586_47
                        cmp              eax, 13
                                                                                        jne   .Lx586_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx586_47
                                                                                        jmp   .Lx586_48
.Lx586_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx586_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx586_53
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
                                                                                        jmp   .Lx586_51
.Lx586_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx586_49
                        cmp              edx, 14
                                                                                        je    .Lx586_53
                                                                                        jmp   .Lx586_52
.Lx586_49:
                        cmp              edx, 14
                                                                                        je    .Lx586_52
                        cmp              ecx, 7
                                                                                        je    .Lx586_53
                        cmp              edx, 7
                                                                                        je    .Lx586_53
                        cmp              ecx, 6
                                                                                        jne   .Lx586_50
                        cmp              edx, 6
                                                                                        jne   .Lx586_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx586_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx586_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx586_51
                                                                                        jmp   .Lx586_52
.Lx586_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx586_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx586_53
.Lx586_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx586_54
.Lx586_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx586_54
.Lx586_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx586_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n527_lit_string_α
n526_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n528_op11_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "Vernon="
#-----------------------------------------------------------------------------------------------------------------------
n528_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn589:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn589]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n529_var_α
n528_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n529_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n530_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn593:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n531_lit_string_α
n530_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n532_op11_α
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          " sec="
#-----------------------------------------------------------------------------------------------------------------------
n532_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn596:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn596]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n533_var_α
n532_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n534_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n534_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn600:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n535_lit_string_α
n534_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n536_op11_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          " Wilson="
#-----------------------------------------------------------------------------------------------------------------------
n536_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn603:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn603]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n537_var_α
n536_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n538_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n538_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn607:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n539_lit_string_α
n538_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n540_op11_α
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          " sec="
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn610:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n541_var_α
n540_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n541_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n542_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n542_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn614:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn614]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n543_lit_string_α
n542_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n544_op11_α
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          " Yates="
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn617:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n545_var_α
n544_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n546_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n546_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn621:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n547_lit_string_α
n546_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n548_op11_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          " sec="
#-----------------------------------------------------------------------------------------------------------------------
n548_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn624:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn624]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n549_var_α
n548_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n550_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n550_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn628:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n551_lit_string_α
n550_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n552_op11_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn631:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n512_op11_α
                                                                                        jmp   n553_move_label_α
n552_op11_β:
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n553_move_label_α:
                        lea              rax, [rip + n512_op11_α]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   proc_display$2F6_γ
#-----------------------------------------------------------------------------------------------------------------------
n554_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 128]
n554_disjunction_β:
                                                                                        jmp   proc_display$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F6_β:
                                                                                        jmp   n554_disjunction_α
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
.Lstartup_pname1:       .string          "puzzle/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_puzzle$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3392
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "floor/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_floor$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 656
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
.Lstartup_pname4:       .string          "profession/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_profession$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "secretary/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_secretary$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "member/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_member$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "display/6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_display$2F6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1408
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
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
n636_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx641_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx641_101
.Lx641_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx641_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n637_call_proc_staged_α
n636_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n637_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx643_1
                        lea              rcx, [rip + .Lx643_3]
                        lea              rdx, [rip + .Lx643_4]
                                                                                        jmp   rax
.Lx643_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx643_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx643_2
.Lx643_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx643_2
.Lx643_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx643_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx643_2
.Lx643_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx643_2
.Lx643_1:
                        call             rt_faildescr@PLT
.Lx643_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n639_op11_α
                                                                                        jmp   n638_move_label_α
n637_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx643_0:
                        .quad            .Lx643_0_s
.Lx643_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n638_move_label_α:
                        lea              rax, [rip + n637_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n639_op11_α:
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
n639_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n640_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n640_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n640_disjunction_α
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
