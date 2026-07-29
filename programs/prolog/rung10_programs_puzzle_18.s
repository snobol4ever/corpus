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
                        .globl           proc_next_day$2F2_α
proc_next_day$2F2_α:
                        .global          proc_next_day$2F2_α
                        .global          proc_next_day$2F2_β
                        .global          proc_next_day$2F2_γ
                        .global          proc_next_day$2F2_ω
                        sub              rsp, 1168
                        mov              [rsp + 1144], rcx
                        mov              [rsp + 1152], rdx
                        mov              [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1136
                        call             rt_jmp_frame_lexprep2@PLT
proc_next_day$2F2_α_body:
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx84_101
.Lx84_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx84_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n44_var_ref_α
n43_op11_β:
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
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n46_op11_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n48_op11_α
                                                                                        jmp   n47_var_ref_α
n46_op11_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n50_var_ref_α
n48_op11_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n51_op11_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx95_2]
                                                                                        jmp   .Lx95_3
.Lx95_2:
                        .quad            .Lx95_2_s
.Lx95_2_s:
                        .string          "tuesday"
.Lx95_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n48_op11_α
                                                                                        jmp   n53_suspend_α
n51_op11_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n54_op11_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n53_suspend_α:
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n53_suspend_β:
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n55_var_ref_α
n54_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n58_var_ref_α
n56_op11_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n59_op11_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx106_2]
                                                                                        jmp   .Lx106_3
.Lx106_2:
                        .quad            .Lx106_2_s
.Lx106_2_s:
                        .string          "wednesday"
.Lx106_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n61_suspend_α
n59_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n62_op11_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n61_suspend_α:
                        lea              rax, [rip + n61_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n61_suspend_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n64_op11_α
                                                                                        jmp   n63_var_ref_α
n62_op11_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n66_var_ref_α
n64_op11_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n67_op11_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx117_2]
                                                                                        jmp   .Lx117_3
.Lx117_2:
                        .quad            .Lx117_2_s
.Lx117_2_s:
                        .string          "thursday"
.Lx117_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n64_op11_α
                                                                                        jmp   n69_suspend_α
n67_op11_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n70_op11_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n69_suspend_α:
                        lea              rax, [rip + n69_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n69_suspend_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n72_op11_α
                                                                                        jmp   n71_var_ref_α
n70_op11_β:
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
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
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   n74_var_ref_α
n72_op11_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n75_op11_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx128_2]
                                                                                        jmp   .Lx128_3
.Lx128_2:
                        .quad            .Lx128_2_s
.Lx128_2_s:
                        .string          "friday"
.Lx128_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n72_op11_α
                                                                                        jmp   n77_suspend_α
n75_op11_β:
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n78_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n77_suspend_α:
                        lea              rax, [rip + n77_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n77_suspend_β:
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n79_var_ref_α
n78_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
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
                                                                                        je    proc_next_day$2F2_ω
                                                                                        jmp   proc_next_day$2F2_ω
n80_op11_β:
                                                                                        jmp   proc_next_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n82_op11_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx137_2]
                                                                                        jmp   .Lx137_3
.Lx137_2:
                        .quad            .Lx137_2_s
.Lx137_2_s:
                        .string          "saturday"
.Lx137_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n83_suspend_α
n82_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_suspend_α:
                        lea              rax, [rip + n83_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_next_day$2F2_γ
n83_suspend_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_next_day$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1144]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_next_day$2F2_ω:
                        mov              rax, [rbp + 1152]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_store$2F1_α
proc_store$2F1_α:
                        .global          proc_store$2F1_α
                        .global          proc_store$2F1_β
                        .global          proc_store$2F1_γ
                        .global          proc_store$2F1_ω
                        sub              rsp, 800
                        mov              [rsp + 776], rcx
                        mov              [rsp + 784], rdx
                        mov              [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 768
                        call             rt_jmp_frame_lexprep2@PLT
proc_store$2F1_α_body:
                        lea              rax, [rip + n160_suspend_β]
                        mov              qword ptr [rbp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx161_101
.Lx161_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx161_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_store$2F1_ω
                                                                                        jmp   n141_var_ref_α
n140_op11_β:
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
                                                                                        jmp   n143_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx166_44
                        cmp              eax, 13
                                                                                        jne   .Lx166_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx166_44
                                                                                        jmp   .Lx166_45
.Lx166_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_53
                        cmp              eax, 99
                                                                                        je    .Lx166_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx166_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx166_49
                        cmp              edx, 14
                                                                                        je    .Lx166_53
                                                                                        jmp   .Lx166_52
.Lx166_49:
                        cmp              edx, 14
                                                                                        je    .Lx166_52
                        cmp              ecx, 7
                                                                                        je    .Lx166_53
                        cmp              edx, 7
                                                                                        je    .Lx166_53
                        cmp              ecx, 6
                                                                                        jne   .Lx166_50
                        cmp              edx, 6
                                                                                        jne   .Lx166_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx166_54
.Lx166_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx166_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n145_op11_α
                                                                                        jmp   n144_var_ref_α
n143_op11_β:
                                                                                        jmp   n145_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
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
                                                                                        je    proc_store$2F1_ω
                                                                                        jmp   proc_store$2F1_ω
n145_op11_β:
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n147_lit_string_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n148_lit_string_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n149_lit_string_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n150_lit_string_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n151_lit_string_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n152_lit_string_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n153_lit_string_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n154_lit_string_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n155_op11_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
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
                                                                                        je    proc_store$2F1_ω
                                                                                        jmp   n156_op11_α
n155_op11_β:
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_op11_α:
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
                                                                                        je    proc_store$2F1_ω
                                                                                        jmp   n157_op11_α
n156_op11_β:
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n157_op11_α:
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
                                                                                        je    proc_store$2F1_ω
                                                                                        jmp   n158_op11_α
n157_op11_β:
                                                                                        jmp   proc_store$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
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
                                                                                        je    n145_op11_α
                                                                                        jmp   n159_call_proc_staged_α
n158_op11_β:
                                                                                        jmp   n145_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx184_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx184_21
.Lx184_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx184_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx184_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx184_23
.Lx184_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx184_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx184_1
                        lea              rcx, [rip + .Lx184_3]
                        lea              rdx, [rip + .Lx184_4]
                                                                                        jmp   rax
.Lx184_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx184_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx184_2
.Lx184_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx184_2
.Lx184_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx184_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx184_2
.Lx184_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx184_2
.Lx184_1:
                        call             rt_faildescr@PLT
.Lx184_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n145_op11_α
                                                                                        jmp   n160_suspend_α
n159_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n160_suspend_α:
                        lea              rax, [rip + n160_suspend_β]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_store$2F1_γ
n160_suspend_β:
                                                                                        jmp   n159_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_β:
                                                                                        jmp   qword ptr [rbp + 736]
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_store$2F1_res]
                        push             rax
                        mov              rax, [rbp + 776]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_store$2F1_ω:
                        mov              rax, [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 4928
                        mov              [rsp + 4904], rcx
                        mov              [rsp + 4912], rdx
                        mov              [rsp + 4920], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4704
                        mov              edx, 4896
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx314_101
.Lx314_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx314_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n188_var_ref_α
n187_op11_β:
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
                        mov              qword ptr [rbp + 4688], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n190_lit_string_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n191_lit_string_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 4576], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n192_lit_string_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 4480], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n193_lit_string_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n194_lit_string_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 4368], 1
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n195_lit_string_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 4352], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n196_lit_string_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 4256], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n197_lit_string_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 4240], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n198_lit_string_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 4144], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n199_lit_string_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n200_lit_string_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n201_lit_string_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 4016], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n202_op11_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n202_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n203_op11_α
n202_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n203_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n204_op11_α
n203_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n204_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n205_op11_α
n204_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n206_op11_α
n205_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n207_op11_α
n206_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n207_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n209_op11_α
                                                                                        jmp   n208_call_proc_staged_α
n207_op11_β:
                                                                                        jmp   n209_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4000]
                        mov              rdx, qword ptr [rbp + 4008]
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        call             rt_arg_stage@PLT
.Lx337_23:
                        mov              edi, 5
                        mov              esi, 2
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
                        cmp              eax, 99
                                                                                        je    n209_op11_α
                                                                                        jmp   n210_var_ref_α
n208_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3976]
                                                                                        jmp   qword ptr [rsp]
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n209_op11_α:
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
n209_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n211_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        mov              qword ptr [rbp + 3872], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_20
                        mov              rax, qword ptr [rbp + 3904]
                        mov              rdx, qword ptr [rbp + 3912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx342_21
.Lx342_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3904]
                        mov              rdx, qword ptr [rbp + 3912]
                        call             rt_arg_stage@PLT
.Lx342_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx342_1
                        lea              rcx, [rip + .Lx342_3]
                        lea              rdx, [rip + .Lx342_4]
                                                                                        jmp   rax
.Lx342_3:
                        mov              qword ptr [rbp + 3880], rsp
                        mov              rax, qword ptr [rbp + 3872]
                        test             rax, rax
                                                                                        jne   .Lx342_5
                        mov              qword ptr [rbp + 3872], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_4:
                        mov              rax, qword ptr [rbp + 3872]
                        test             rax, rax
                                                                                        jne   .Lx342_6
                        mov              qword ptr [rbp + 3872], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_1:
                        call             rt_faildescr@PLT
.Lx342_2:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              eax, 99
                                                                                        je    n208_call_proc_staged_β
                                                                                        jmp   n212_var_ref_α
n211_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3880]
                                                                                        jmp   qword ptr [rsp]
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n213_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        mov              qword ptr [rbp + 3792], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx346_20
                        mov              rax, qword ptr [rbp + 3824]
                        mov              rdx, qword ptr [rbp + 3832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx346_21
.Lx346_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3824]
                        mov              rdx, qword ptr [rbp + 3832]
                        call             rt_arg_stage@PLT
.Lx346_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx346_1
                        lea              rcx, [rip + .Lx346_3]
                        lea              rdx, [rip + .Lx346_4]
                                                                                        jmp   rax
.Lx346_3:
                        mov              qword ptr [rbp + 3800], rsp
                        mov              rax, qword ptr [rbp + 3792]
                        test             rax, rax
                                                                                        jne   .Lx346_5
                        mov              qword ptr [rbp + 3792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx346_2
.Lx346_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx346_2
.Lx346_4:
                        mov              rax, qword ptr [rbp + 3792]
                        test             rax, rax
                                                                                        jne   .Lx346_6
                        mov              qword ptr [rbp + 3792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx346_2
.Lx346_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx346_2
.Lx346_1:
                        call             rt_faildescr@PLT
.Lx346_2:
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 99
                                                                                        je    n211_call_proc_staged_β
                                                                                        jmp   n214_var_ref_α
n213_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3800]
                                                                                        jmp   qword ptr [rsp]
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n215_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_proc_staged_α:
                        mov              qword ptr [rbp + 3712], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_20
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx350_21
.Lx350_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        call             rt_arg_stage@PLT
.Lx350_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx350_1
                        lea              rcx, [rip + .Lx350_3]
                        lea              rdx, [rip + .Lx350_4]
                                                                                        jmp   rax
.Lx350_3:
                        mov              qword ptr [rbp + 3720], rsp
                        mov              rax, qword ptr [rbp + 3712]
                        test             rax, rax
                                                                                        jne   .Lx350_5
                        mov              qword ptr [rbp + 3712], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_4:
                        mov              rax, qword ptr [rbp + 3712]
                        test             rax, rax
                                                                                        jne   .Lx350_6
                        mov              qword ptr [rbp + 3712], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_1:
                        call             rt_faildescr@PLT
.Lx350_2:
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    n213_call_proc_staged_β
                                                                                        jmp   n216_var_ref_α
n215_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3720]
                                                                                        jmp   qword ptr [rsp]
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n217_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_proc_staged_α:
                        mov              qword ptr [rbp + 3632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx354_20
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx354_21
.Lx354_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        call             rt_arg_stage@PLT
.Lx354_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx354_1
                        lea              rcx, [rip + .Lx354_3]
                        lea              rdx, [rip + .Lx354_4]
                                                                                        jmp   rax
.Lx354_3:
                        mov              qword ptr [rbp + 3640], rsp
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx354_5
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx354_2
.Lx354_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx354_2
.Lx354_4:
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx354_6
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx354_2
.Lx354_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx354_2
.Lx354_1:
                        call             rt_faildescr@PLT
.Lx354_2:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n215_call_proc_staged_β
                                                                                        jmp   n218_var_ref_α
n217_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3640]
                                                                                        jmp   qword ptr [rsp]
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "store/1"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n219_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n220_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_proc_staged_α:
                        mov              qword ptr [rbp + 3536], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx360_20
                        mov              rax, qword ptr [rbp + 3568]
                        mov              rdx, qword ptr [rbp + 3576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx360_21
.Lx360_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3568]
                        mov              rdx, qword ptr [rbp + 3576]
                        call             rt_arg_stage@PLT
.Lx360_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx360_22
                        mov              rax, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx360_23
.Lx360_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        call             rt_arg_stage@PLT
.Lx360_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx360_1
                        lea              rcx, [rip + .Lx360_3]
                        lea              rdx, [rip + .Lx360_4]
                                                                                        jmp   rax
.Lx360_3:
                        mov              qword ptr [rbp + 3544], rsp
                        mov              rax, qword ptr [rbp + 3536]
                        test             rax, rax
                                                                                        jne   .Lx360_5
                        mov              qword ptr [rbp + 3536], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx360_2
.Lx360_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx360_2
.Lx360_4:
                        mov              rax, qword ptr [rbp + 3536]
                        test             rax, rax
                                                                                        jne   .Lx360_6
                        mov              qword ptr [rbp + 3536], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx360_2
.Lx360_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx360_2
.Lx360_1:
                        call             rt_faildescr@PLT
.Lx360_2:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n217_call_proc_staged_β
                                                                                        jmp   n221_var_ref_α
n220_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3544]
                                                                                        jmp   qword ptr [rsp]
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n222_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        mov              qword ptr [rbp + 3424], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx366_20
                        mov              rax, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx366_21
.Lx366_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
                        call             rt_arg_stage@PLT
.Lx366_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx366_22
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx366_23
.Lx366_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3472]
                        mov              rdx, qword ptr [rbp + 3480]
                        call             rt_arg_stage@PLT
.Lx366_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx366_1
                        lea              rcx, [rip + .Lx366_3]
                        lea              rdx, [rip + .Lx366_4]
                                                                                        jmp   rax
.Lx366_3:
                        mov              qword ptr [rbp + 3432], rsp
                        mov              rax, qword ptr [rbp + 3424]
                        test             rax, rax
                                                                                        jne   .Lx366_5
                        mov              qword ptr [rbp + 3424], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx366_2
.Lx366_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx366_2
.Lx366_4:
                        mov              rax, qword ptr [rbp + 3424]
                        test             rax, rax
                                                                                        jne   .Lx366_6
                        mov              qword ptr [rbp + 3424], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx366_2
.Lx366_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx366_2
.Lx366_1:
                        call             rt_faildescr@PLT
.Lx366_2:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 99
                                                                                        je    n220_call_proc_staged_β
                                                                                        jmp   n224_var_ref_α
n223_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3432]
                                                                                        jmp   qword ptr [rsp]
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n226_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        mov              qword ptr [rbp + 3312], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx372_20
                        mov              rax, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx372_21
.Lx372_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        call             rt_arg_stage@PLT
.Lx372_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx372_22
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx372_23
.Lx372_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
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
                        mov              qword ptr [rbp + 3320], rsp
                        mov              rax, qword ptr [rbp + 3312]
                        test             rax, rax
                                                                                        jne   .Lx372_5
                        mov              qword ptr [rbp + 3312], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx372_2
.Lx372_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx372_2
.Lx372_4:
                        mov              rax, qword ptr [rbp + 3312]
                        test             rax, rax
                                                                                        jne   .Lx372_6
                        mov              qword ptr [rbp + 3312], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx372_2
.Lx372_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx372_2
.Lx372_1:
                        call             rt_faildescr@PLT
.Lx372_2:
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_proc_staged_β
                                                                                        jmp   n227_var_ref_α
n226_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3320]
                                                                                        jmp   qword ptr [rsp]
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n229_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_proc_staged_α:
                        mov              qword ptr [rbp + 3200], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx378_20
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx378_21
.Lx378_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        call             rt_arg_stage@PLT
.Lx378_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx378_22
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx378_23
.Lx378_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        call             rt_arg_stage@PLT
.Lx378_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx378_1
                        lea              rcx, [rip + .Lx378_3]
                        lea              rdx, [rip + .Lx378_4]
                                                                                        jmp   rax
.Lx378_3:
                        mov              qword ptr [rbp + 3208], rsp
                        mov              rax, qword ptr [rbp + 3200]
                        test             rax, rax
                                                                                        jne   .Lx378_5
                        mov              qword ptr [rbp + 3200], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx378_2
.Lx378_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx378_2
.Lx378_4:
                        mov              rax, qword ptr [rbp + 3200]
                        test             rax, rax
                                                                                        jne   .Lx378_6
                        mov              qword ptr [rbp + 3200], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx378_2
.Lx378_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx378_2
.Lx378_1:
                        call             rt_faildescr@PLT
.Lx378_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n226_call_proc_staged_β
                                                                                        jmp   n230_var_ref_α
n229_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3208]
                                                                                        jmp   qword ptr [rsp]
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n231_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n232_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_proc_staged_α:
                        mov              qword ptr [rbp + 3088], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx384_20
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx384_21
.Lx384_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        call             rt_arg_stage@PLT
.Lx384_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx384_22
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx384_23
.Lx384_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        call             rt_arg_stage@PLT
.Lx384_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx384_1
                        lea              rcx, [rip + .Lx384_3]
                        lea              rdx, [rip + .Lx384_4]
                                                                                        jmp   rax
.Lx384_3:
                        mov              qword ptr [rbp + 3096], rsp
                        mov              rax, qword ptr [rbp + 3088]
                        test             rax, rax
                                                                                        jne   .Lx384_5
                        mov              qword ptr [rbp + 3088], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx384_2
.Lx384_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx384_2
.Lx384_4:
                        mov              rax, qword ptr [rbp + 3088]
                        test             rax, rax
                                                                                        jne   .Lx384_6
                        mov              qword ptr [rbp + 3088], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx384_2
.Lx384_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx384_2
.Lx384_1:
                        call             rt_faildescr@PLT
.Lx384_2:
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n229_call_proc_staged_β
                                                                                        jmp   n233_var_ref_α
n232_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3096]
                                                                                        jmp   qword ptr [rsp]
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n234_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n235_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n235_call_proc_staged_α:
                        mov              qword ptr [rbp + 2976], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_20
                        mov              rax, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx390_21
.Lx390_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
                        call             rt_arg_stage@PLT
.Lx390_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_22
                        mov              rax, qword ptr [rbp + 3024]
                        mov              rdx, qword ptr [rbp + 3032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx390_23
.Lx390_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3024]
                        mov              rdx, qword ptr [rbp + 3032]
                        call             rt_arg_stage@PLT
.Lx390_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx390_1
                        lea              rcx, [rip + .Lx390_3]
                        lea              rdx, [rip + .Lx390_4]
                                                                                        jmp   rax
.Lx390_3:
                        mov              qword ptr [rbp + 2984], rsp
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx390_5
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_4:
                        mov              rax, qword ptr [rbp + 2976]
                        test             rax, rax
                                                                                        jne   .Lx390_6
                        mov              qword ptr [rbp + 2976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_1:
                        call             rt_faildescr@PLT
.Lx390_2:
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n232_call_proc_staged_β
                                                                                        jmp   n236_var_ref_α
n235_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2984]
                                                                                        jmp   qword ptr [rsp]
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n238_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_proc_staged_α:
                        mov              qword ptr [rbp + 2864], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx396_20
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx396_21
.Lx396_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        call             rt_arg_stage@PLT
.Lx396_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx396_22
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx396_23
.Lx396_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        call             rt_arg_stage@PLT
.Lx396_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx396_1
                        lea              rcx, [rip + .Lx396_3]
                        lea              rdx, [rip + .Lx396_4]
                                                                                        jmp   rax
.Lx396_3:
                        mov              qword ptr [rbp + 2872], rsp
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx396_5
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx396_2
.Lx396_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx396_2
.Lx396_4:
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx396_6
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx396_2
.Lx396_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx396_2
.Lx396_1:
                        call             rt_faildescr@PLT
.Lx396_2:
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n235_call_proc_staged_β
                                                                                        jmp   n239_var_ref_α
n238_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2872]
                                                                                        jmp   qword ptr [rsp]
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n241_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_proc_staged_α:
                        mov              qword ptr [rbp + 2752], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx402_20
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx402_21
.Lx402_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        call             rt_arg_stage@PLT
.Lx402_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx402_22
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx402_23
.Lx402_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        call             rt_arg_stage@PLT
.Lx402_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx402_1
                        lea              rcx, [rip + .Lx402_3]
                        lea              rdx, [rip + .Lx402_4]
                                                                                        jmp   rax
.Lx402_3:
                        mov              qword ptr [rbp + 2760], rsp
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax
                                                                                        jne   .Lx402_5
                        mov              qword ptr [rbp + 2752], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx402_2
.Lx402_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx402_2
.Lx402_4:
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax
                                                                                        jne   .Lx402_6
                        mov              qword ptr [rbp + 2752], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx402_2
.Lx402_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx402_2
.Lx402_1:
                        call             rt_faildescr@PLT
.Lx402_2:
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n238_call_proc_staged_β
                                                                                        jmp   n242_var_ref_α
n241_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2760]
                                                                                        jmp   qword ptr [rsp]
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n243_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n244_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_proc_staged_α:
                        mov              qword ptr [rbp + 2640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_20
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx408_21
.Lx408_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        call             rt_arg_stage@PLT
.Lx408_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_22
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx408_23
.Lx408_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        call             rt_arg_stage@PLT
.Lx408_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx408_1
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4]
                                                                                        jmp   rax
.Lx408_3:
                        mov              qword ptr [rbp + 2648], rsp
                        mov              rax, qword ptr [rbp + 2640]
                        test             rax, rax
                                                                                        jne   .Lx408_5
                        mov              qword ptr [rbp + 2640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_4:
                        mov              rax, qword ptr [rbp + 2640]
                        test             rax, rax
                                                                                        jne   .Lx408_6
                        mov              qword ptr [rbp + 2640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_1:
                        call             rt_faildescr@PLT
.Lx408_2:
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n241_call_proc_staged_β
                                                                                        jmp   n245_var_ref_α
n244_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2648]
                                                                                        jmp   qword ptr [rsp]
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n246_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n247_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_proc_staged_α:
                        mov              qword ptr [rbp + 2528], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx414_20
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx414_21
.Lx414_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        call             rt_arg_stage@PLT
.Lx414_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx414_22
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx414_23
.Lx414_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        call             rt_arg_stage@PLT
.Lx414_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx414_1
                        lea              rcx, [rip + .Lx414_3]
                        lea              rdx, [rip + .Lx414_4]
                                                                                        jmp   rax
.Lx414_3:
                        mov              qword ptr [rbp + 2536], rsp
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx414_5
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx414_2
.Lx414_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx414_2
.Lx414_4:
                        mov              rax, qword ptr [rbp + 2528]
                        test             rax, rax
                                                                                        jne   .Lx414_6
                        mov              qword ptr [rbp + 2528], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx414_2
.Lx414_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx414_2
.Lx414_1:
                        call             rt_faildescr@PLT
.Lx414_2:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n244_call_proc_staged_β
                                                                                        jmp   n248_var_ref_α
n247_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2536]
                                                                                        jmp   qword ptr [rsp]
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n250_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        mov              qword ptr [rbp + 2416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx420_20
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx420_21
.Lx420_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        call             rt_arg_stage@PLT
.Lx420_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx420_22
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx420_23
.Lx420_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        call             rt_arg_stage@PLT
.Lx420_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx420_1
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4]
                                                                                        jmp   rax
.Lx420_3:
                        mov              qword ptr [rbp + 2424], rsp
                        mov              rax, qword ptr [rbp + 2416]
                        test             rax, rax
                                                                                        jne   .Lx420_5
                        mov              qword ptr [rbp + 2416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_4:
                        mov              rax, qword ptr [rbp + 2416]
                        test             rax, rax
                                                                                        jne   .Lx420_6
                        mov              qword ptr [rbp + 2416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_1:
                        call             rt_faildescr@PLT
.Lx420_2:
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n247_call_proc_staged_β
                                                                                        jmp   n251_var_ref_α
n250_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2424]
                                                                                        jmp   qword ptr [rsp]
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "next_day/2"
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n253_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_proc_staged_α:
                        mov              qword ptr [rbp + 2304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_20
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx426_21
.Lx426_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        call             rt_arg_stage@PLT
.Lx426_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_22
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx426_23
.Lx426_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        call             rt_arg_stage@PLT
.Lx426_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx426_1
                        lea              rcx, [rip + .Lx426_3]
                        lea              rdx, [rip + .Lx426_4]
                                                                                        jmp   rax
.Lx426_3:
                        mov              qword ptr [rbp + 2312], rsp
                        mov              rax, qword ptr [rbp + 2304]
                        test             rax, rax
                                                                                        jne   .Lx426_5
                        mov              qword ptr [rbp + 2304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_4:
                        mov              rax, qword ptr [rbp + 2304]
                        test             rax, rax
                                                                                        jne   .Lx426_6
                        mov              qword ptr [rbp + 2304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_1:
                        call             rt_faildescr@PLT
.Lx426_2:
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n254_var_ref_α
                                                                                        jmp   n250_call_proc_staged_β
n253_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2312]
                                                                                        jmp   qword ptr [rsp]
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n255_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n256_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_proc_staged_α:
                        mov              qword ptr [rbp + 2192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx432_20
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx432_21
.Lx432_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        call             rt_arg_stage@PLT
.Lx432_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx432_22
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx432_23
.Lx432_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        call             rt_arg_stage@PLT
.Lx432_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx432_1
                        lea              rcx, [rip + .Lx432_3]
                        lea              rdx, [rip + .Lx432_4]
                                                                                        jmp   rax
.Lx432_3:
                        mov              qword ptr [rbp + 2200], rsp
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax
                                                                                        jne   .Lx432_5
                        mov              qword ptr [rbp + 2192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx432_2
.Lx432_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx432_2
.Lx432_4:
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax
                                                                                        jne   .Lx432_6
                        mov              qword ptr [rbp + 2192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx432_2
.Lx432_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx432_2
.Lx432_1:
                        call             rt_faildescr@PLT
.Lx432_2:
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n250_call_proc_staged_β
                                                                                        jmp   n257_var_ref_α
n256_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2200]
                                                                                        jmp   qword ptr [rsp]
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "prev_day/2"
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n258_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n259_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_proc_staged_α:
                        mov              qword ptr [rbp + 2080], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_20
                        mov              rax, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx438_21
.Lx438_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        call             rt_arg_stage@PLT
.Lx438_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_22
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx438_23
.Lx438_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        call             rt_arg_stage@PLT
.Lx438_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx438_1
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4]
                                                                                        jmp   rax
.Lx438_3:
                        mov              qword ptr [rbp + 2088], rsp
                        mov              rax, qword ptr [rbp + 2080]
                        test             rax, rax
                                                                                        jne   .Lx438_5
                        mov              qword ptr [rbp + 2080], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx438_2
.Lx438_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx438_2
.Lx438_4:
                        mov              rax, qword ptr [rbp + 2080]
                        test             rax, rax
                                                                                        jne   .Lx438_6
                        mov              qword ptr [rbp + 2080], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx438_2
.Lx438_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx438_2
.Lx438_1:
                        call             rt_faildescr@PLT
.Lx438_2:
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n256_call_proc_staged_β
                                                                                        jmp   n260_var_ref_α
n259_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2088]
                                                                                        jmp   qword ptr [rsp]
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n261_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n262_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_proc_staged_α:
                        mov              qword ptr [rbp + 1968], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx444_20
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx444_21
.Lx444_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        call             rt_arg_stage@PLT
.Lx444_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx444_22
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx444_23
.Lx444_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_arg_stage@PLT
.Lx444_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx444_1
                        lea              rcx, [rip + .Lx444_3]
                        lea              rdx, [rip + .Lx444_4]
                                                                                        jmp   rax
.Lx444_3:
                        mov              qword ptr [rbp + 1976], rsp
                        mov              rax, qword ptr [rbp + 1968]
                        test             rax, rax
                                                                                        jne   .Lx444_5
                        mov              qword ptr [rbp + 1968], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx444_2
.Lx444_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx444_2
.Lx444_4:
                        mov              rax, qword ptr [rbp + 1968]
                        test             rax, rax
                                                                                        jne   .Lx444_6
                        mov              qword ptr [rbp + 1968], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx444_2
.Lx444_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx444_2
.Lx444_1:
                        call             rt_faildescr@PLT
.Lx444_2:
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_proc_staged_β
                                                                                        jmp   n263_var_ref_α
n262_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1976]
                                                                                        jmp   qword ptr [rsp]
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "prev_day/2"
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n264_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n265_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_proc_staged_α:
                        mov              qword ptr [rbp + 1856], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx450_20
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx450_21
.Lx450_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        call             rt_arg_stage@PLT
.Lx450_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx450_22
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx450_23
.Lx450_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx450_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx450_1
                        lea              rcx, [rip + .Lx450_3]
                        lea              rdx, [rip + .Lx450_4]
                                                                                        jmp   rax
.Lx450_3:
                        mov              qword ptr [rbp + 1864], rsp
                        mov              rax, qword ptr [rbp + 1856]
                        test             rax, rax
                                                                                        jne   .Lx450_5
                        mov              qword ptr [rbp + 1856], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx450_2
.Lx450_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx450_2
.Lx450_4:
                        mov              rax, qword ptr [rbp + 1856]
                        test             rax, rax
                                                                                        jne   .Lx450_6
                        mov              qword ptr [rbp + 1856], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx450_2
.Lx450_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx450_2
.Lx450_1:
                        call             rt_faildescr@PLT
.Lx450_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n262_call_proc_staged_β
                                                                                        jmp   n266_var_ref_α
n265_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1864]
                                                                                        jmp   qword ptr [rsp]
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n268_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_proc_staged_α:
                        mov              qword ptr [rbp + 1744], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx456_20
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx456_21
.Lx456_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        call             rt_arg_stage@PLT
.Lx456_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx456_22
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx456_23
.Lx456_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        call             rt_arg_stage@PLT
.Lx456_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx456_1
                        lea              rcx, [rip + .Lx456_3]
                        lea              rdx, [rip + .Lx456_4]
                                                                                        jmp   rax
.Lx456_3:
                        mov              qword ptr [rbp + 1752], rsp
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx456_5
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx456_2
.Lx456_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx456_2
.Lx456_4:
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx456_6
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx456_2
.Lx456_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx456_2
.Lx456_1:
                        call             rt_faildescr@PLT
.Lx456_2:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n265_call_proc_staged_β
                                                                                        jmp   n269_var_ref_α
n268_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1752]
                                                                                        jmp   qword ptr [rsp]
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n270_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n271_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        mov              qword ptr [rbp + 1632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx462_20
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx462_21
.Lx462_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        call             rt_arg_stage@PLT
.Lx462_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx462_22
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx462_23
.Lx462_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        call             rt_arg_stage@PLT
.Lx462_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx462_1
                        lea              rcx, [rip + .Lx462_3]
                        lea              rdx, [rip + .Lx462_4]
                                                                                        jmp   rax
.Lx462_3:
                        mov              qword ptr [rbp + 1640], rsp
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx462_5
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx462_2
.Lx462_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx462_2
.Lx462_4:
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx462_6
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx462_2
.Lx462_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx462_2
.Lx462_1:
                        call             rt_faildescr@PLT
.Lx462_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n268_call_proc_staged_β
                                                                                        jmp   n272_var_ref_α
n271_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1640]
                                                                                        jmp   qword ptr [rsp]
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n273_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n274_lit_string_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n275_lit_string_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n276_lit_string_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n277_lit_string_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n278_lit_string_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n279_lit_string_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n280_lit_string_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n281_lit_string_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n282_lit_string_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n283_lit_string_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n284_lit_string_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n285_lit_string_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n286_op11_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n287_op11_α
n286_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n288_op11_α
n287_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n289_op11_α
n288_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n290_op11_α
n289_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n291_op11_α
n290_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n293_var_ref_α
                                                                                        jmp   n292_call_proc_staged_α
n291_op11_β:
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        mov              qword ptr [rbp + 848], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx485_20
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx485_21
.Lx485_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        call             rt_arg_stage@PLT
.Lx485_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx485_22
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx485_23
.Lx485_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_arg_stage@PLT
.Lx485_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx485_1
                        lea              rcx, [rip + .Lx485_3]
                        lea              rdx, [rip + .Lx485_4]
                                                                                        jmp   rax
.Lx485_3:
                        mov              qword ptr [rbp + 856], rsp
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx485_5
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx485_2
.Lx485_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx485_2
.Lx485_4:
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx485_6
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx485_2
.Lx485_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx485_2
.Lx485_1:
                        call             rt_faildescr@PLT
.Lx485_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n293_var_ref_α
                                                                                        jmp   n294_var_ref_α
n292_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 856]
                                                                                        jmp   qword ptr [rsp]
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n295_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n297_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n298_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4752]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n299_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_proc_staged_α:
                        mov              qword ptr [rbp + 736], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx497_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx497_21
.Lx497_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx497_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx497_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx497_23
.Lx497_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx497_23:
                        mov              edi, 9
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx497_1
                        lea              rcx, [rip + .Lx497_3]
                        lea              rdx, [rip + .Lx497_4]
                                                                                        jmp   rax
.Lx497_3:
                        mov              qword ptr [rbp + 744], rsp
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx497_5
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx497_2
.Lx497_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx497_2
.Lx497_4:
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx497_6
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx497_2
.Lx497_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx497_2
.Lx497_1:
                        call             rt_faildescr@PLT
.Lx497_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_proc_staged_β
                                                                                        jmp   n300_var_ref_α
n298_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 744]
                                                                                        jmp   qword ptr [rsp]
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "day_num/2"
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4768]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n301_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4720]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n302_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n303_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx507_21
.Lx507_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx507_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx507_23
.Lx507_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx507_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_24
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx507_25
.Lx507_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx507_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_26
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx507_27
.Lx507_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx507_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_28
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx507_29
.Lx507_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx507_29:
                        mov              edi, 8
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx507_1
                        lea              rcx, [rip + .Lx507_3]
                        lea              rdx, [rip + .Lx507_4]
                                                                                        jmp   rax
.Lx507_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx507_2
.Lx507_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx507_2
.Lx507_1:
                        call             rt_faildescr@PLT
.Lx507_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n271_call_proc_staged_β
                                                                                        jmp   n303_call_proc_staged_β
n303_call_proc_staged_β:
                                                                                        jmp   n271_call_proc_staged_β
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "display/5"
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        mov              qword ptr [rbp + 624], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx509_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx509_21
.Lx509_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx509_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx509_22
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx509_23
.Lx509_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx509_23:
                        mov              edi, 9
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx509_1
                        lea              rcx, [rip + .Lx509_3]
                        lea              rdx, [rip + .Lx509_4]
                                                                                        jmp   rax
.Lx509_3:
                        mov              qword ptr [rbp + 632], rsp
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx509_5
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx509_2
.Lx509_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx509_2
.Lx509_4:
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx509_6
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx509_2
.Lx509_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx509_2
.Lx509_1:
                        call             rt_faildescr@PLT
.Lx509_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n298_call_proc_staged_β
                                                                                        jmp   n305_var_α
n304_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 632]
                                                                                        jmp   qword ptr [rsp]
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "day_num/2"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n307_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n304_call_proc_staged_β
                                                                                        jmp   n308_var_ref_α
n307_op11_β:
                                                                                        jmp   n304_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4736]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx520_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx520_21
.Lx520_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx520_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx520_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx520_23
.Lx520_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx520_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx520_1
                        lea              rcx, [rip + .Lx520_3]
                        lea              rdx, [rip + .Lx520_4]
                                                                                        jmp   rax
.Lx520_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx520_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx520_2
.Lx520_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx520_2
.Lx520_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx520_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx520_2
.Lx520_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx520_2
.Lx520_1:
                        call             rt_faildescr@PLT
.Lx520_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n304_call_proc_staged_β
                                                                                        jmp   n311_var_ref_α
n310_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "open/2"
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n313_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx526_21
.Lx526_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx526_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx526_23
.Lx526_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx526_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx526_1
                        lea              rcx, [rip + .Lx526_3]
                        lea              rdx, [rip + .Lx526_4]
                                                                                        jmp   rax
.Lx526_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx526_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx526_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_1:
                        call             rt_faildescr@PLT
.Lx526_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n310_call_proc_staged_β
                                                                                        jmp   n271_call_proc_staged_β
n313_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "open/2"
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
                        mov              rax, [rbp + 4904]
                        mov              rbp, [rbp + 4920]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 4912]
                        lea              rsp, [rbp + 4928]
                        mov              rbp, [rbp + 4920]
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
                        lea              rax, [rip + n529_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx533_101
.Lx533_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx533_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n528_call_proc_staged_α
n527_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n528_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 3
                        mov              esi, 0
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
                        cmp              eax, 99
                                                                                        je    n530_op11_α
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
n530_op11_α:
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
                                                                                        jmp   n531_suspend_α
n530_op11_β:
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
                                                                                        jmp   n532_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_op11_α:
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
n532_op11_β:
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
                        lea              rax, [rip + n554_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n542_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx564_101
.Lx564_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx564_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n543_var_ref_α
n542_op11_β:
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
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx569_44
                        cmp              eax, 13
                                                                                        jne   .Lx569_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx569_44
                                                                                        jmp   .Lx569_45
.Lx569_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx569_53
                        cmp              eax, 99
                                                                                        je    .Lx569_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx569_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx569_49
                        cmp              edx, 14
                                                                                        je    .Lx569_53
                                                                                        jmp   .Lx569_52
.Lx569_49:
                        cmp              edx, 14
                                                                                        je    .Lx569_52
                        cmp              ecx, 7
                                                                                        je    .Lx569_53
                        cmp              edx, 7
                                                                                        je    .Lx569_53
                        cmp              ecx, 6
                                                                                        jne   .Lx569_50
                        cmp              edx, 6
                                                                                        jne   .Lx569_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx569_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx569_54
.Lx569_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx569_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n547_op11_α
                                                                                        jmp   n546_var_ref_α
n545_op11_β:
                                                                                        jmp   n547_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n548_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n547_op11_α:
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
                                                                                        jmp   n549_var_ref_α
n547_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n550_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n551_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n553_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
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
.Lx581_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_61
                        cmp              esi, 1
                                                                                        jne   .Lx581_62
                        mov              r8, rax
                                                                                        jmp   .Lx581_60
.Lx581_62:
                        cmp              esi, 2
                                                                                        jne   .Lx581_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_61
                        mov              r8, rax
                                                                                        jmp   .Lx581_60
.Lx581_63:
                        cmp              eax, 13
                                                                                        jne   .Lx581_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_61
                        cmp              rax, r8
                                                                                        je    .Lx581_61
                        mov              r8, rax
                                                                                        jmp   .Lx581_60
.Lx581_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_80
                        cmp              eax, 99
                                                                                        je    .Lx581_80
                        cmp              eax, 13
                                                                                        jne   .Lx581_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx581_80
                                                                                        jmp   .Lx581_74
.Lx581_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx581_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx581_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx581_73
                        lea              r9, [rbp + 512]
.Lx581_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_65
                        cmp              esi, 1
                                                                                        jne   .Lx581_66
                        mov              r9, rax
                                                                                        jmp   .Lx581_64
.Lx581_66:
                        cmp              esi, 2
                                                                                        jne   .Lx581_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_65
                        mov              r9, rax
                                                                                        jmp   .Lx581_64
.Lx581_67:
                        cmp              eax, 13
                                                                                        jne   .Lx581_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_65
                        cmp              rax, r9
                                                                                        je    .Lx581_65
                        mov              r9, rax
                                                                                        jmp   .Lx581_64
.Lx581_65:
                        lea              rcx, [rbp + 528]
.Lx581_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx581_69
                        cmp              esi, 1
                                                                                        jne   .Lx581_70
                        mov              rcx, rax
                                                                                        jmp   .Lx581_68
.Lx581_70:
                        cmp              esi, 2
                                                                                        jne   .Lx581_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_69
                        mov              rcx, rax
                                                                                        jmp   .Lx581_68
.Lx581_71:
                        cmp              eax, 13
                                                                                        jne   .Lx581_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx581_69
                        cmp              rax, rcx
                                                                                        je    .Lx581_69
                        mov              rcx, rax
                                                                                        jmp   .Lx581_68
.Lx581_69:
                        cmp              r9, rcx
                                                                                        je    .Lx581_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_75
                        cmp              eax, 99
                                                                                        je    .Lx581_75
                        cmp              eax, 13
                                                                                        jne   .Lx581_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx581_75
                                                                                        jmp   .Lx581_72
.Lx581_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_76
                        cmp              eax, 99
                                                                                        je    .Lx581_76
                        cmp              eax, 13
                                                                                        jne   .Lx581_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx581_76
                                                                                        jmp   .Lx581_72
.Lx581_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx581_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx581_72
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
                                                                                        jmp   .Lx581_77
.Lx581_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx581_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx581_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx581_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx581_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx581_72
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
.Lx581_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_82
                        cmp              esi, 1
                                                                                        jne   .Lx581_83
                        mov              r9, rax
                                                                                        jmp   .Lx581_81
.Lx581_83:
                        cmp              esi, 2
                                                                                        jne   .Lx581_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_82
                        mov              r9, rax
                                                                                        jmp   .Lx581_81
.Lx581_84:
                        cmp              eax, 13
                                                                                        jne   .Lx581_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_82
                        cmp              rax, r9
                                                                                        je    .Lx581_82
                        mov              r9, rax
                                                                                        jmp   .Lx581_81
.Lx581_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_85
                        cmp              eax, 99
                                                                                        je    .Lx581_85
                        cmp              eax, 13
                                                                                        jne   .Lx581_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx581_85
                                                                                        jmp   .Lx581_86
.Lx581_85:
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
                                                                                        jmp   .Lx581_87
.Lx581_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx581_87:
                        lea              rcx, [rbp + 528]
.Lx581_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx581_89
                        cmp              esi, 1
                                                                                        jne   .Lx581_90
                        mov              rcx, rax
                                                                                        jmp   .Lx581_88
.Lx581_90:
                        cmp              esi, 2
                                                                                        jne   .Lx581_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_89
                        mov              rcx, rax
                                                                                        jmp   .Lx581_88
.Lx581_91:
                        cmp              eax, 13
                                                                                        jne   .Lx581_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx581_89
                        cmp              rax, rcx
                                                                                        je    .Lx581_89
                        mov              rcx, rax
                                                                                        jmp   .Lx581_88
.Lx581_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_92
                        cmp              eax, 99
                                                                                        je    .Lx581_92
                        cmp              eax, 13
                                                                                        jne   .Lx581_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx581_92
                                                                                        jmp   .Lx581_93
.Lx581_92:
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
                                                                                        jmp   .Lx581_94
.Lx581_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx581_94:
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
                                                                                        jmp   .Lx581_77
.Lx581_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx581_77
.Lx581_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx581_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n547_op11_α
                                                                                        jmp   n554_suspend_α
n552_op11_β:
                                                                                        jmp   n547_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n553_op11_α:
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
.Lx582_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx582_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_41
                        cmp              esi, 1
                                                                                        jne   .Lx582_55
                        mov              r8, rax
                                                                                        jmp   .Lx582_40
.Lx582_55:
                        cmp              esi, 2
                                                                                        jne   .Lx582_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx582_41
                        mov              r8, rax
                                                                                        jmp   .Lx582_40
.Lx582_56:
                        cmp              eax, 13
                                                                                        jne   .Lx582_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_41
                        cmp              rax, r8
                                                                                        je    .Lx582_41
                        mov              r8, rax
                                                                                        jmp   .Lx582_40
.Lx582_41:
                        lea              r9, [rbp + 368]
.Lx582_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx582_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_43
                        cmp              esi, 1
                                                                                        jne   .Lx582_57
                        mov              r9, rax
                                                                                        jmp   .Lx582_42
.Lx582_57:
                        cmp              esi, 2
                                                                                        jne   .Lx582_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx582_43
                        mov              r9, rax
                                                                                        jmp   .Lx582_42
.Lx582_58:
                        cmp              eax, 13
                                                                                        jne   .Lx582_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_43
                        cmp              rax, r9
                                                                                        je    .Lx582_43
                        mov              r9, rax
                                                                                        jmp   .Lx582_42
.Lx582_43:
                        cmp              r8, r9
                                                                                        je    .Lx582_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx582_44
                        cmp              eax, 99
                                                                                        je    .Lx582_44
                        cmp              eax, 13
                                                                                        jne   .Lx582_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx582_44
                                                                                        jmp   .Lx582_45
.Lx582_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx582_53
                        cmp              eax, 99
                                                                                        je    .Lx582_53
                        cmp              eax, 13
                                                                                        jne   .Lx582_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx582_53
                                                                                        jmp   .Lx582_46
.Lx582_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx582_53
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
                                                                                        jmp   .Lx582_51
.Lx582_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx582_47
                        cmp              eax, 99
                                                                                        je    .Lx582_47
                        cmp              eax, 13
                                                                                        jne   .Lx582_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx582_47
                                                                                        jmp   .Lx582_48
.Lx582_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx582_53
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
                                                                                        jmp   .Lx582_51
.Lx582_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx582_49
                        cmp              edx, 14
                                                                                        je    .Lx582_53
                                                                                        jmp   .Lx582_52
.Lx582_49:
                        cmp              edx, 14
                                                                                        je    .Lx582_52
                        cmp              ecx, 7
                                                                                        je    .Lx582_53
                        cmp              edx, 7
                                                                                        je    .Lx582_53
                        cmp              ecx, 6
                                                                                        jne   .Lx582_50
                        cmp              edx, 6
                                                                                        jne   .Lx582_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx582_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx582_51
                                                                                        jmp   .Lx582_52
.Lx582_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx582_53
.Lx582_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx582_54
.Lx582_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx582_54
.Lx582_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx582_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n556_op11_α
                                                                                        jmp   n555_var_ref_α
n553_op11_β:
                                                                                        jmp   n556_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n554_suspend_α:
                        lea              rax, [rip + n554_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n554_suspend_β:
                                                                                        jmp   n547_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n557_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n556_op11_α:
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
n556_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n558_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n559_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n559_op11_α:
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
.Lx592_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx592_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_61
                        cmp              esi, 1
                                                                                        jne   .Lx592_62
                        mov              r8, rax
                                                                                        jmp   .Lx592_60
.Lx592_62:
                        cmp              esi, 2
                                                                                        jne   .Lx592_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx592_61
                        mov              r8, rax
                                                                                        jmp   .Lx592_60
.Lx592_63:
                        cmp              eax, 13
                                                                                        jne   .Lx592_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_61
                        cmp              rax, r8
                                                                                        je    .Lx592_61
                        mov              r8, rax
                                                                                        jmp   .Lx592_60
.Lx592_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_80
                        cmp              eax, 99
                                                                                        je    .Lx592_80
                        cmp              eax, 13
                                                                                        jne   .Lx592_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx592_80
                                                                                        jmp   .Lx592_74
.Lx592_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx592_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx592_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx592_73
                        lea              r9, [rbp + 272]
.Lx592_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx592_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_65
                        cmp              esi, 1
                                                                                        jne   .Lx592_66
                        mov              r9, rax
                                                                                        jmp   .Lx592_64
.Lx592_66:
                        cmp              esi, 2
                                                                                        jne   .Lx592_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx592_65
                        mov              r9, rax
                                                                                        jmp   .Lx592_64
.Lx592_67:
                        cmp              eax, 13
                                                                                        jne   .Lx592_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_65
                        cmp              rax, r9
                                                                                        je    .Lx592_65
                        mov              r9, rax
                                                                                        jmp   .Lx592_64
.Lx592_65:
                        lea              rcx, [rbp + 288]
.Lx592_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx592_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx592_69
                        cmp              esi, 1
                                                                                        jne   .Lx592_70
                        mov              rcx, rax
                                                                                        jmp   .Lx592_68
.Lx592_70:
                        cmp              esi, 2
                                                                                        jne   .Lx592_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx592_69
                        mov              rcx, rax
                                                                                        jmp   .Lx592_68
.Lx592_71:
                        cmp              eax, 13
                                                                                        jne   .Lx592_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx592_69
                        cmp              rax, rcx
                                                                                        je    .Lx592_69
                        mov              rcx, rax
                                                                                        jmp   .Lx592_68
.Lx592_69:
                        cmp              r9, rcx
                                                                                        je    .Lx592_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_75
                        cmp              eax, 99
                                                                                        je    .Lx592_75
                        cmp              eax, 13
                                                                                        jne   .Lx592_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx592_75
                                                                                        jmp   .Lx592_72
.Lx592_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_76
                        cmp              eax, 99
                                                                                        je    .Lx592_76
                        cmp              eax, 13
                                                                                        jne   .Lx592_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx592_76
                                                                                        jmp   .Lx592_72
.Lx592_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx592_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx592_72
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
                                                                                        jmp   .Lx592_77
.Lx592_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx592_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx592_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx592_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx592_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx592_72
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
.Lx592_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx592_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_82
                        cmp              esi, 1
                                                                                        jne   .Lx592_83
                        mov              r9, rax
                                                                                        jmp   .Lx592_81
.Lx592_83:
                        cmp              esi, 2
                                                                                        jne   .Lx592_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx592_82
                        mov              r9, rax
                                                                                        jmp   .Lx592_81
.Lx592_84:
                        cmp              eax, 13
                                                                                        jne   .Lx592_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_82
                        cmp              rax, r9
                                                                                        je    .Lx592_82
                        mov              r9, rax
                                                                                        jmp   .Lx592_81
.Lx592_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_85
                        cmp              eax, 99
                                                                                        je    .Lx592_85
                        cmp              eax, 13
                                                                                        jne   .Lx592_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx592_85
                                                                                        jmp   .Lx592_86
.Lx592_85:
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
                                                                                        jmp   .Lx592_87
.Lx592_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx592_87:
                        lea              rcx, [rbp + 288]
.Lx592_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx592_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx592_89
                        cmp              esi, 1
                                                                                        jne   .Lx592_90
                        mov              rcx, rax
                                                                                        jmp   .Lx592_88
.Lx592_90:
                        cmp              esi, 2
                                                                                        jne   .Lx592_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx592_89
                        mov              rcx, rax
                                                                                        jmp   .Lx592_88
.Lx592_91:
                        cmp              eax, 13
                                                                                        jne   .Lx592_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx592_89
                        cmp              rax, rcx
                                                                                        je    .Lx592_89
                        mov              rcx, rax
                                                                                        jmp   .Lx592_88
.Lx592_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_92
                        cmp              eax, 99
                                                                                        je    .Lx592_92
                        cmp              eax, 13
                                                                                        jne   .Lx592_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx592_92
                                                                                        jmp   .Lx592_93
.Lx592_92:
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
                                                                                        jmp   .Lx592_94
.Lx592_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx592_94:
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
                                                                                        jmp   .Lx592_77
.Lx592_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx592_77
.Lx592_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx592_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n556_op11_α
                                                                                        jmp   n560_var_ref_α
n559_op11_β:
                                                                                        jmp   n556_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n561_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n561_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n562_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n562_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx598_21
.Lx598_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx598_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx598_23
.Lx598_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx598_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx598_1
                        lea              rcx, [rip + .Lx598_3]
                        lea              rdx, [rip + .Lx598_4]
                                                                                        jmp   rax
.Lx598_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx598_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx598_2
.Lx598_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx598_2
.Lx598_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx598_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx598_2
.Lx598_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx598_2
.Lx598_1:
                        call             rt_faildescr@PLT
.Lx598_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n556_op11_α
                                                                                        jmp   n563_suspend_α
n562_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx598_0:
                        .quad            .Lx598_0_s
.Lx598_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n563_suspend_α:
                        lea              rax, [rip + n563_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n563_suspend_β:
                                                                                        jmp   n562_call_proc_staged_β
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
                        .globl           proc_prev_day$2F2_α
proc_prev_day$2F2_α:
                        .global          proc_prev_day$2F2_α
                        .global          proc_prev_day$2F2_β
                        .global          proc_prev_day$2F2_γ
                        .global          proc_prev_day$2F2_ω
                        sub              rsp, 1168
                        mov              [rsp + 1144], rcx
                        mov              [rsp + 1152], rdx
                        mov              [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1136
                        call             rt_jmp_frame_lexprep2@PLT
proc_prev_day$2F2_α_body:
                        lea              rax, [rip + n611_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n601_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx642_101
.Lx642_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx642_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n602_var_ref_α
n601_op11_β:
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
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n604_op11_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n604_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n606_op11_α
                                                                                        jmp   n605_var_ref_α
n604_op11_β:
                                                                                        jmp   n606_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n607_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n606_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n608_var_ref_α
n606_op11_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n609_op11_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n610_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n609_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx653_2]
                                                                                        jmp   .Lx653_3
.Lx653_2:
                        .quad            .Lx653_2_s
.Lx653_2_s:
                        .string          "monday"
.Lx653_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n606_op11_α
                                                                                        jmp   n611_suspend_α
n609_op11_β:
                                                                                        jmp   n606_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n612_op11_α
.Lx654_0:
                        .quad            .Lx654_0_s
.Lx654_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n611_suspend_α:
                        lea              rax, [rip + n611_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n611_suspend_β:
                                                                                        jmp   n606_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n612_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n614_op11_α
                                                                                        jmp   n613_var_ref_α
n612_op11_β:
                                                                                        jmp   n614_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n615_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n614_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n616_var_ref_α
n614_op11_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n617_op11_α
.Lx661_0:
                        .quad            .Lx661_0_s
.Lx661_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n618_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n617_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx664_2]
                                                                                        jmp   .Lx664_3
.Lx664_2:
                        .quad            .Lx664_2_s
.Lx664_2_s:
                        .string          "tuesday"
.Lx664_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n614_op11_α
                                                                                        jmp   n619_suspend_α
n617_op11_β:
                                                                                        jmp   n614_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n620_op11_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n619_suspend_α:
                        lea              rax, [rip + n619_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n619_suspend_β:
                                                                                        jmp   n614_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n620_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n622_op11_α
                                                                                        jmp   n621_var_ref_α
n620_op11_β:
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n623_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n622_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n624_var_ref_α
n622_op11_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n625_op11_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n626_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n625_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx675_2]
                                                                                        jmp   .Lx675_3
.Lx675_2:
                        .quad            .Lx675_2_s
.Lx675_2_s:
                        .string          "wednesday"
.Lx675_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n622_op11_α
                                                                                        jmp   n627_suspend_α
n625_op11_β:
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n628_op11_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n627_suspend_α:
                        lea              rax, [rip + n627_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n627_suspend_β:
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n630_op11_α
                                                                                        jmp   n629_var_ref_α
n628_op11_β:
                                                                                        jmp   n630_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n631_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n630_op11_α:
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
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   n632_var_ref_α
n630_op11_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n633_op11_α
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n632_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n634_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n633_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx686_2]
                                                                                        jmp   .Lx686_3
.Lx686_2:
                        .quad            .Lx686_2_s
.Lx686_2_s:
                        .string          "thursday"
.Lx686_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n630_op11_α
                                                                                        jmp   n635_suspend_α
n633_op11_β:
                                                                                        jmp   n630_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n636_op11_α
.Lx687_0:
                        .quad            .Lx687_0_s
.Lx687_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n635_suspend_α:
                        lea              rax, [rip + n635_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n635_suspend_β:
                                                                                        jmp   n630_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n636_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n638_op11_α
                                                                                        jmp   n637_var_ref_α
n636_op11_β:
                                                                                        jmp   n638_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n639_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n638_op11_α:
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
                                                                                        je    proc_prev_day$2F2_ω
                                                                                        jmp   proc_prev_day$2F2_ω
n638_op11_β:
                                                                                        jmp   proc_prev_day$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n640_op11_α
.Lx694_0:
                        .quad            .Lx694_0_s
.Lx694_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n640_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx695_2]
                                                                                        jmp   .Lx695_3
.Lx695_2:
                        .quad            .Lx695_2_s
.Lx695_2_s:
                        .string          "friday"
.Lx695_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n638_op11_α
                                                                                        jmp   n641_suspend_α
n640_op11_β:
                                                                                        jmp   n638_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n641_suspend_α:
                        lea              rax, [rip + n641_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prev_day$2F2_γ
n641_suspend_β:
                                                                                        jmp   n638_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_prev_day$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1144]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prev_day$2F2_ω:
                        mov              rax, [rbp + 1152]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_open$2F2_α
proc_open$2F2_α:
                        .global          proc_open$2F2_α
                        .global          proc_open$2F2_β
                        .global          proc_open$2F2_γ
                        .global          proc_open$2F2_ω
                        sub              rsp, 3872
                        mov              [rsp + 3848], rcx
                        mov              [rsp + 3856], rdx
                        mov              [rsp + 3864], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3824
                        mov              edx, 3840
                        call             rt_jmp_frame_lexprep2@PLT
proc_open$2F2_α_body:
                        lea              rax, [rip + n708_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
#-----------------------------------------------------------------------------------------------------------------------
n698_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx843_101
.Lx843_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx843_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n699_var_ref_α
n698_op11_β:
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
                        mov              qword ptr [rbp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n701_op11_α
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n701_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n703_op11_α
                                                                                        jmp   n702_var_ref_α
n701_op11_β:
                                                                                        jmp   n703_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n704_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n703_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n705_var_ref_α
n703_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_string_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n706_op11_α
.Lx851_0:
                        .quad            .Lx851_0_s
.Lx851_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n707_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n706_op11_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rdi, [rbp + 3680]
                        mov              rsi, qword ptr [rip + .Lx854_2]
                                                                                        jmp   .Lx854_3
.Lx854_2:
                        .quad            .Lx854_2_s
.Lx854_2_s:
                        .string          "tuesday"
.Lx854_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 99
                                                                                        je    n703_op11_α
                                                                                        jmp   n708_suspend_α
n706_op11_β:
                                                                                        jmp   n703_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n709_op11_α
.Lx855_0:
                        .quad            .Lx855_0_s
.Lx855_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n708_suspend_α:
                        lea              rax, [rip + n708_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n708_suspend_β:
                                                                                        jmp   n703_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n709_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n711_op11_α
                                                                                        jmp   n710_var_ref_α
n709_op11_β:
                                                                                        jmp   n711_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n710_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n712_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n711_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n713_var_ref_α
n711_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n714_op11_α
.Lx862_0:
                        .quad            .Lx862_0_s
.Lx862_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n713_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n715_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n714_op11_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3472]
                        mov              rsi, qword ptr [rip + .Lx865_2]
                                                                                        jmp   .Lx865_3
.Lx865_2:
                        .quad            .Lx865_2_s
.Lx865_2_s:
                        .string          "wednesday"
.Lx865_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n711_op11_α
                                                                                        jmp   n716_suspend_α
n714_op11_β:
                                                                                        jmp   n711_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n717_op11_α
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n716_suspend_α:
                        lea              rax, [rip + n716_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n716_suspend_β:
                                                                                        jmp   n711_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n717_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n719_op11_α
                                                                                        jmp   n718_var_ref_α
n717_op11_β:
                                                                                        jmp   n719_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n718_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n720_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n719_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n721_var_ref_α
n719_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n722_op11_α
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n721_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n723_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n722_op11_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3264]
                        mov              rsi, qword ptr [rip + .Lx876_2]
                                                                                        jmp   .Lx876_3
.Lx876_2:
                        .quad            .Lx876_2_s
.Lx876_2_s:
                        .string          "thursday"
.Lx876_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n719_op11_α
                                                                                        jmp   n724_suspend_α
n722_op11_β:
                                                                                        jmp   n719_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n725_op11_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n724_suspend_α:
                        lea              rax, [rip + n724_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n724_suspend_β:
                                                                                        jmp   n719_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n725_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n727_op11_α
                                                                                        jmp   n726_var_ref_α
n725_op11_β:
                                                                                        jmp   n727_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n728_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n727_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n729_var_ref_α
n727_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n730_op11_α
.Lx884_0:
                        .quad            .Lx884_0_s
.Lx884_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n729_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n730_op11_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        mov              rsi, qword ptr [rip + .Lx887_2]
                                                                                        jmp   .Lx887_3
.Lx887_2:
                        .quad            .Lx887_2_s
.Lx887_2_s:
                        .string          "friday"
.Lx887_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n727_op11_α
                                                                                        jmp   n732_suspend_α
n730_op11_β:
                                                                                        jmp   n727_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n733_op11_α
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "shoe"
#-----------------------------------------------------------------------------------------------------------------------
n732_suspend_α:
                        lea              rax, [rip + n732_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n732_suspend_β:
                                                                                        jmp   n727_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n733_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n735_op11_α
                                                                                        jmp   n734_var_ref_α
n733_op11_β:
                                                                                        jmp   n735_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n734_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n736_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n735_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n737_var_ref_α
n735_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n736_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n738_op11_α
.Lx895_0:
                        .quad            .Lx895_0_s
.Lx895_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n737_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n739_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n738_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              rsi, qword ptr [rip + .Lx898_2]
                                                                                        jmp   .Lx898_3
.Lx898_2:
                        .quad            .Lx898_2_s
.Lx898_2_s:
                        .string          "saturday"
.Lx898_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n735_op11_α
                                                                                        jmp   n740_suspend_α
n738_op11_β:
                                                                                        jmp   n735_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n741_op11_α
.Lx899_0:
                        .quad            .Lx899_0_s
.Lx899_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n740_suspend_α:
                        lea              rax, [rip + n740_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n740_suspend_β:
                                                                                        jmp   n735_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n741_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n743_op11_α
                                                                                        jmp   n742_var_ref_α
n741_op11_β:
                                                                                        jmp   n743_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n744_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n743_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n745_var_ref_α
n743_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n746_op11_α
.Lx906_0:
                        .quad            .Lx906_0_s
.Lx906_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n745_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n746_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        mov              rsi, qword ptr [rip + .Lx909_2]
                                                                                        jmp   .Lx909_3
.Lx909_2:
                        .quad            .Lx909_2_s
.Lx909_2_s:
                        .string          "monday"
.Lx909_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n743_op11_α
                                                                                        jmp   n748_suspend_α
n746_op11_β:
                                                                                        jmp   n743_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n749_op11_α
.Lx910_0:
                        .quad            .Lx910_0_s
.Lx910_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n748_suspend_α:
                        lea              rax, [rip + n748_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n748_suspend_β:
                                                                                        jmp   n743_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n749_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n751_op11_α
                                                                                        jmp   n750_var_ref_α
n749_op11_β:
                                                                                        jmp   n751_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n750_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n752_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n751_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n753_var_ref_α
n751_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n754_op11_α
.Lx917_0:
                        .quad            .Lx917_0_s
.Lx917_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n753_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n755_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n754_op11_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2432]
                        mov              rsi, qword ptr [rip + .Lx920_2]
                                                                                        jmp   .Lx920_3
.Lx920_2:
                        .quad            .Lx920_2_s
.Lx920_2_s:
                        .string          "wednesday"
.Lx920_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n751_op11_α
                                                                                        jmp   n756_suspend_α
n754_op11_β:
                                                                                        jmp   n751_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n757_op11_α
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n756_suspend_α:
                        lea              rax, [rip + n756_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n756_suspend_β:
                                                                                        jmp   n751_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n757_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n759_op11_α
                                                                                        jmp   n758_var_ref_α
n757_op11_β:
                                                                                        jmp   n759_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n758_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n760_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n759_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n761_var_ref_α
n759_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n762_op11_α
.Lx928_0:
                        .quad            .Lx928_0_s
.Lx928_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n761_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n763_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n762_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        mov              rsi, qword ptr [rip + .Lx931_2]
                                                                                        jmp   .Lx931_3
.Lx931_2:
                        .quad            .Lx931_2_s
.Lx931_2_s:
                        .string          "thursday"
.Lx931_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n759_op11_α
                                                                                        jmp   n764_suspend_α
n762_op11_β:
                                                                                        jmp   n759_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n765_op11_α
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n764_suspend_α:
                        lea              rax, [rip + n764_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n764_suspend_β:
                                                                                        jmp   n759_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n765_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n767_op11_α
                                                                                        jmp   n766_var_ref_α
n765_op11_β:
                                                                                        jmp   n767_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n766_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n767_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n769_var_ref_α
n767_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n770_op11_α
.Lx939_0:
                        .quad            .Lx939_0_s
.Lx939_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n769_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n771_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n770_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              rsi, qword ptr [rip + .Lx942_2]
                                                                                        jmp   .Lx942_3
.Lx942_2:
                        .quad            .Lx942_2_s
.Lx942_2_s:
                        .string          "friday"
.Lx942_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n767_op11_α
                                                                                        jmp   n772_suspend_α
n770_op11_β:
                                                                                        jmp   n767_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n773_op11_α
.Lx943_0:
                        .quad            .Lx943_0_s
.Lx943_0_s:
                        .string          "hardware"
#-----------------------------------------------------------------------------------------------------------------------
n772_suspend_α:
                        lea              rax, [rip + n772_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n772_suspend_β:
                                                                                        jmp   n767_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n773_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n775_op11_α
                                                                                        jmp   n774_var_ref_α
n773_op11_β:
                                                                                        jmp   n775_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n774_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n776_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n775_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n777_var_ref_α
n775_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n778_op11_α
.Lx950_0:
                        .quad            .Lx950_0_s
.Lx950_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n777_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n779_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n778_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        mov              rsi, qword ptr [rip + .Lx953_2]
                                                                                        jmp   .Lx953_3
.Lx953_2:
                        .quad            .Lx953_2_s
.Lx953_2_s:
                        .string          "saturday"
.Lx953_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n775_op11_α
                                                                                        jmp   n780_suspend_α
n778_op11_β:
                                                                                        jmp   n775_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n781_op11_α
.Lx954_0:
                        .quad            .Lx954_0_s
.Lx954_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n780_suspend_α:
                        lea              rax, [rip + n780_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n780_suspend_β:
                                                                                        jmp   n775_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n781_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n783_op11_α
                                                                                        jmp   n782_var_ref_α
n781_op11_β:
                                                                                        jmp   n783_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n782_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n784_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n783_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n785_var_ref_α
n783_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n786_op11_α
.Lx961_0:
                        .quad            .Lx961_0_s
.Lx961_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n785_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n787_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n786_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              rsi, qword ptr [rip + .Lx964_2]
                                                                                        jmp   .Lx964_3
.Lx964_2:
                        .quad            .Lx964_2_s
.Lx964_2_s:
                        .string          "monday"
.Lx964_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n783_op11_α
                                                                                        jmp   n788_suspend_α
n786_op11_β:
                                                                                        jmp   n783_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx965_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n789_op11_α
.Lx965_0:
                        .quad            .Lx965_0_s
.Lx965_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n788_suspend_α:
                        lea              rax, [rip + n788_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n788_suspend_β:
                                                                                        jmp   n783_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n789_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n791_op11_α
                                                                                        jmp   n790_var_ref_α
n789_op11_β:
                                                                                        jmp   n791_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n792_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n791_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n793_var_ref_α
n791_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx972_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n794_op11_α
.Lx972_0:
                        .quad            .Lx972_0_s
.Lx972_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n795_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n794_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              rsi, qword ptr [rip + .Lx975_2]
                                                                                        jmp   .Lx975_3
.Lx975_2:
                        .quad            .Lx975_2_s
.Lx975_2_s:
                        .string          "tuesday"
.Lx975_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n791_op11_α
                                                                                        jmp   n796_suspend_α
n794_op11_β:
                                                                                        jmp   n791_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n797_op11_α
.Lx976_0:
                        .quad            .Lx976_0_s
.Lx976_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n796_suspend_α:
                        lea              rax, [rip + n796_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n796_suspend_β:
                                                                                        jmp   n791_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n797_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n799_op11_α
                                                                                        jmp   n798_var_ref_α
n797_op11_β:
                                                                                        jmp   n799_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n800_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n799_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n801_var_ref_α
n799_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n800_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n802_op11_α
.Lx983_0:
                        .quad            .Lx983_0_s
.Lx983_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n803_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n802_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              rsi, qword ptr [rip + .Lx986_2]
                                                                                        jmp   .Lx986_3
.Lx986_2:
                        .quad            .Lx986_2_s
.Lx986_2_s:
                        .string          "wednesday"
.Lx986_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n799_op11_α
                                                                                        jmp   n804_suspend_α
n802_op11_β:
                                                                                        jmp   n799_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx987_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n805_op11_α
.Lx987_0:
                        .quad            .Lx987_0_s
.Lx987_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n804_suspend_α:
                        lea              rax, [rip + n804_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n804_suspend_β:
                                                                                        jmp   n799_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n805_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n807_op11_α
                                                                                        jmp   n806_var_ref_α
n805_op11_β:
                                                                                        jmp   n807_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n806_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n808_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n807_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n809_var_ref_α
n807_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n810_op11_α
.Lx994_0:
                        .quad            .Lx994_0_s
.Lx994_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n809_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n811_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n810_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx997_2]
                                                                                        jmp   .Lx997_3
.Lx997_2:
                        .quad            .Lx997_2_s
.Lx997_2_s:
                        .string          "friday"
.Lx997_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n807_op11_α
                                                                                        jmp   n812_suspend_α
n810_op11_β:
                                                                                        jmp   n807_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n811_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n813_op11_α
.Lx998_0:
                        .quad            .Lx998_0_s
.Lx998_0_s:
                        .string          "grocery"
#-----------------------------------------------------------------------------------------------------------------------
n812_suspend_α:
                        lea              rax, [rip + n812_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n812_suspend_β:
                                                                                        jmp   n807_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n813_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n815_op11_α
                                                                                        jmp   n814_var_ref_α
n813_op11_β:
                                                                                        jmp   n815_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n814_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n816_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n815_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n817_var_ref_α
n815_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n816_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n818_op11_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n817_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n819_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n818_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx1008_2]
                                                                                        jmp   .Lx1008_3
.Lx1008_2:
                        .quad            .Lx1008_2_s
.Lx1008_2_s:
                        .string          "saturday"
.Lx1008_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n815_op11_α
                                                                                        jmp   n820_suspend_α
n818_op11_β:
                                                                                        jmp   n815_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx1009_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n821_op11_α
.Lx1009_0:
                        .quad            .Lx1009_0_s
.Lx1009_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n820_suspend_α:
                        lea              rax, [rip + n820_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n820_suspend_β:
                                                                                        jmp   n815_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n821_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n823_op11_α
                                                                                        jmp   n822_var_ref_α
n821_op11_β:
                                                                                        jmp   n823_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n822_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n824_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n823_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n825_var_ref_α
n823_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n824_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx1016_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n826_op11_α
.Lx1016_0:
                        .quad            .Lx1016_0_s
.Lx1016_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n825_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n827_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n826_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx1019_2]
                                                                                        jmp   .Lx1019_3
.Lx1019_2:
                        .quad            .Lx1019_2_s
.Lx1019_2_s:
                        .string          "monday"
.Lx1019_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n823_op11_α
                                                                                        jmp   n828_suspend_α
n826_op11_β:
                                                                                        jmp   n823_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n827_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n829_op11_α
.Lx1020_0:
                        .quad            .Lx1020_0_s
.Lx1020_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n828_suspend_α:
                        lea              rax, [rip + n828_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n828_suspend_β:
                                                                                        jmp   n823_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n829_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n831_op11_α
                                                                                        jmp   n830_var_ref_α
n829_op11_β:
                                                                                        jmp   n831_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n830_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n832_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n831_op11_α:
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
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   n833_var_ref_α
n831_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n834_op11_α
.Lx1027_0:
                        .quad            .Lx1027_0_s
.Lx1027_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n833_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n835_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx1030_2]
                                                                                        jmp   .Lx1030_3
.Lx1030_2:
                        .quad            .Lx1030_2_s
.Lx1030_2_s:
                        .string          "wednesday"
.Lx1030_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n831_op11_α
                                                                                        jmp   n836_suspend_α
n834_op11_β:
                                                                                        jmp   n831_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n835_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx1031_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n837_op11_α
.Lx1031_0:
                        .quad            .Lx1031_0_s
.Lx1031_0_s:
                        .string          "bank"
#-----------------------------------------------------------------------------------------------------------------------
n836_suspend_α:
                        lea              rax, [rip + n836_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n836_suspend_β:
                                                                                        jmp   n831_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n837_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n839_op11_α
                                                                                        jmp   n838_var_ref_α
n837_op11_β:
                                                                                        jmp   n839_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n838_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n840_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n839_op11_α:
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
                                                                                        je    proc_open$2F2_ω
                                                                                        jmp   proc_open$2F2_ω
n839_op11_β:
                                                                                        jmp   proc_open$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n840_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx1038_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n841_op11_α
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n841_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx1039_2]
                                                                                        jmp   .Lx1039_3
.Lx1039_2:
                        .quad            .Lx1039_2_s
.Lx1039_2_s:
                        .string          "friday"
.Lx1039_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n839_op11_α
                                                                                        jmp   n842_suspend_α
n841_op11_β:
                                                                                        jmp   n839_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n842_suspend_α:
                        lea              rax, [rip + n842_suspend_β]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_open$2F2_γ
n842_suspend_β:
                                                                                        jmp   n839_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_β:
                                                                                        jmp   qword ptr [rbp + 3824]
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_open$2F2_res]
                        push             rax
                        mov              rax, [rbp + 3848]
                        mov              rbp, [rbp + 3864]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_open$2F2_ω:
                        mov              rax, [rbp + 3856]
                        lea              rsp, [rbp + 3872]
                        mov              rbp, [rbp + 3864]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_display$2F5_α
proc_display$2F5_α:
                        .global          proc_display$2F5_α
                        .global          proc_display$2F5_β
                        .global          proc_display$2F5_γ
                        .global          proc_display$2F5_ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_display$2F5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1042_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1083_101
.Lx1083_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1083_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F5_ω
                                                                                        jmp   n1043_var_ref_α
n1042_op11_β:
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
                                                                                        jmp   n1045_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx1088_44
                        cmp              eax, 13
                                                                                        jne   .Lx1088_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1088_44
                                                                                        jmp   .Lx1088_45
.Lx1088_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1088_53
                        cmp              eax, 99
                                                                                        je    .Lx1088_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx1088_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx1088_49
                        cmp              edx, 14
                                                                                        je    .Lx1088_53
                                                                                        jmp   .Lx1088_52
.Lx1088_49:
                        cmp              edx, 14
                                                                                        je    .Lx1088_52
                        cmp              ecx, 7
                                                                                        je    .Lx1088_53
                        cmp              edx, 7
                                                                                        je    .Lx1088_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1088_50
                        cmp              edx, 6
                                                                                        jne   .Lx1088_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1088_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1088_54
.Lx1088_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1088_54:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1046_var_ref_α
n1045_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n1048_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F5_ω
                                                                                        jmp   proc_display$2F5_ω
n1047_op11_β:
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n1048_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n1049_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1049_op11_α:
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
.Lx1094_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1094_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_41
                        cmp              esi, 1
                                                                                        jne   .Lx1094_55
                        mov              r8, rax
                                                                                        jmp   .Lx1094_40
.Lx1094_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1094_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1094_41
                        mov              r8, rax
                                                                                        jmp   .Lx1094_40
.Lx1094_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1094_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_41
                        cmp              rax, r8
                                                                                        je    .Lx1094_41
                        mov              r8, rax
                                                                                        jmp   .Lx1094_40
.Lx1094_41:
                        lea              r9, [rbp + 992]
.Lx1094_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1094_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_43
                        cmp              esi, 1
                                                                                        jne   .Lx1094_57
                        mov              r9, rax
                                                                                        jmp   .Lx1094_42
.Lx1094_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1094_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1094_43
                        mov              r9, rax
                                                                                        jmp   .Lx1094_42
.Lx1094_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1094_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1094_43
                        cmp              rax, r9
                                                                                        je    .Lx1094_43
                        mov              r9, rax
                                                                                        jmp   .Lx1094_42
.Lx1094_43:
                        cmp              r8, r9
                                                                                        je    .Lx1094_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1094_44
                        cmp              eax, 99
                                                                                        je    .Lx1094_44
                        cmp              eax, 13
                                                                                        jne   .Lx1094_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1094_44
                                                                                        jmp   .Lx1094_45
.Lx1094_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1094_53
                        cmp              eax, 99
                                                                                        je    .Lx1094_53
                        cmp              eax, 13
                                                                                        jne   .Lx1094_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1094_53
                                                                                        jmp   .Lx1094_46
.Lx1094_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1094_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1094_53
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
                                                                                        jmp   .Lx1094_51
.Lx1094_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1094_47
                        cmp              eax, 99
                                                                                        je    .Lx1094_47
                        cmp              eax, 13
                                                                                        jne   .Lx1094_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1094_47
                                                                                        jmp   .Lx1094_48
.Lx1094_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1094_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1094_53
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
                                                                                        jmp   .Lx1094_51
.Lx1094_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1094_49
                        cmp              edx, 14
                                                                                        je    .Lx1094_53
                                                                                        jmp   .Lx1094_52
.Lx1094_49:
                        cmp              edx, 14
                                                                                        je    .Lx1094_52
                        cmp              ecx, 7
                                                                                        je    .Lx1094_53
                        cmp              edx, 7
                                                                                        je    .Lx1094_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1094_50
                        cmp              edx, 6
                                                                                        jne   .Lx1094_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1094_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1094_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1094_51
                                                                                        jmp   .Lx1094_52
.Lx1094_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1094_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1094_53
.Lx1094_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1094_54
.Lx1094_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1094_54
.Lx1094_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1094_54:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1050_var_ref_α
n1049_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1050_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n1051_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n1052_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_op11_α:
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
.Lx1099_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1099_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1099_41
                        cmp              esi, 1
                                                                                        jne   .Lx1099_55
                        mov              r8, rax
                                                                                        jmp   .Lx1099_40
.Lx1099_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1099_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1099_41
                        mov              r8, rax
                                                                                        jmp   .Lx1099_40
.Lx1099_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1099_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1099_41
                        cmp              rax, r8
                                                                                        je    .Lx1099_41
                        mov              r8, rax
                                                                                        jmp   .Lx1099_40
.Lx1099_41:
                        lea              r9, [rbp + 912]
.Lx1099_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1099_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1099_43
                        cmp              esi, 1
                                                                                        jne   .Lx1099_57
                        mov              r9, rax
                                                                                        jmp   .Lx1099_42
.Lx1099_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1099_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1099_43
                        mov              r9, rax
                                                                                        jmp   .Lx1099_42
.Lx1099_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1099_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1099_43
                        cmp              rax, r9
                                                                                        je    .Lx1099_43
                        mov              r9, rax
                                                                                        jmp   .Lx1099_42
.Lx1099_43:
                        cmp              r8, r9
                                                                                        je    .Lx1099_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1099_44
                        cmp              eax, 99
                                                                                        je    .Lx1099_44
                        cmp              eax, 13
                                                                                        jne   .Lx1099_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1099_44
                                                                                        jmp   .Lx1099_45
.Lx1099_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1099_53
                        cmp              eax, 99
                                                                                        je    .Lx1099_53
                        cmp              eax, 13
                                                                                        jne   .Lx1099_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1099_53
                                                                                        jmp   .Lx1099_46
.Lx1099_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1099_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1099_53
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
                                                                                        jmp   .Lx1099_51
.Lx1099_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1099_47
                        cmp              eax, 99
                                                                                        je    .Lx1099_47
                        cmp              eax, 13
                                                                                        jne   .Lx1099_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1099_47
                                                                                        jmp   .Lx1099_48
.Lx1099_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1099_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1099_53
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
                                                                                        jmp   .Lx1099_51
.Lx1099_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1099_49
                        cmp              edx, 14
                                                                                        je    .Lx1099_53
                                                                                        jmp   .Lx1099_52
.Lx1099_49:
                        cmp              edx, 14
                                                                                        je    .Lx1099_52
                        cmp              ecx, 7
                                                                                        je    .Lx1099_53
                        cmp              edx, 7
                                                                                        je    .Lx1099_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1099_50
                        cmp              edx, 6
                                                                                        jne   .Lx1099_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1099_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1099_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1099_51
                                                                                        jmp   .Lx1099_52
.Lx1099_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1099_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1099_53
.Lx1099_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1099_54
.Lx1099_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1099_54
.Lx1099_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1099_54:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1053_var_ref_α
n1052_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1053_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n1054_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n1055_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_op11_α:
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
.Lx1104_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1104_41
                        cmp              esi, 1
                                                                                        jne   .Lx1104_55
                        mov              r8, rax
                                                                                        jmp   .Lx1104_40
.Lx1104_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1104_41
                        mov              r8, rax
                                                                                        jmp   .Lx1104_40
.Lx1104_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1104_41
                        cmp              rax, r8
                                                                                        je    .Lx1104_41
                        mov              r8, rax
                                                                                        jmp   .Lx1104_40
.Lx1104_41:
                        lea              r9, [rbp + 832]
.Lx1104_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1104_43
                        cmp              esi, 1
                                                                                        jne   .Lx1104_57
                        mov              r9, rax
                                                                                        jmp   .Lx1104_42
.Lx1104_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1104_43
                        mov              r9, rax
                                                                                        jmp   .Lx1104_42
.Lx1104_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1104_43
                        cmp              rax, r9
                                                                                        je    .Lx1104_43
                        mov              r9, rax
                                                                                        jmp   .Lx1104_42
.Lx1104_43:
                        cmp              r8, r9
                                                                                        je    .Lx1104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1104_44
                        cmp              eax, 99
                                                                                        je    .Lx1104_44
                        cmp              eax, 13
                                                                                        jne   .Lx1104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1104_44
                                                                                        jmp   .Lx1104_45
.Lx1104_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1104_53
                        cmp              eax, 99
                                                                                        je    .Lx1104_53
                        cmp              eax, 13
                                                                                        jne   .Lx1104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1104_53
                                                                                        jmp   .Lx1104_46
.Lx1104_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1104_53
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
                                                                                        jmp   .Lx1104_51
.Lx1104_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1104_47
                        cmp              eax, 99
                                                                                        je    .Lx1104_47
                        cmp              eax, 13
                                                                                        jne   .Lx1104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1104_47
                                                                                        jmp   .Lx1104_48
.Lx1104_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1104_53
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
                                                                                        jmp   .Lx1104_51
.Lx1104_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1104_49
                        cmp              edx, 14
                                                                                        je    .Lx1104_53
                                                                                        jmp   .Lx1104_52
.Lx1104_49:
                        cmp              edx, 14
                                                                                        je    .Lx1104_52
                        cmp              ecx, 7
                                                                                        je    .Lx1104_53
                        cmp              edx, 7
                                                                                        je    .Lx1104_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1104_50
                        cmp              edx, 6
                                                                                        jne   .Lx1104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1104_51
                                                                                        jmp   .Lx1104_52
.Lx1104_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1104_53
.Lx1104_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1104_54
.Lx1104_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1104_54
.Lx1104_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1104_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1056_var_ref_α
n1055_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n1057_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1058_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_op11_α:
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
.Lx1109_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1109_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1109_41
                        cmp              esi, 1
                                                                                        jne   .Lx1109_55
                        mov              r8, rax
                                                                                        jmp   .Lx1109_40
.Lx1109_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1109_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1109_41
                        mov              r8, rax
                                                                                        jmp   .Lx1109_40
.Lx1109_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1109_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1109_41
                        cmp              rax, r8
                                                                                        je    .Lx1109_41
                        mov              r8, rax
                                                                                        jmp   .Lx1109_40
.Lx1109_41:
                        lea              r9, [rbp + 752]
.Lx1109_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1109_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1109_43
                        cmp              esi, 1
                                                                                        jne   .Lx1109_57
                        mov              r9, rax
                                                                                        jmp   .Lx1109_42
.Lx1109_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1109_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1109_43
                        mov              r9, rax
                                                                                        jmp   .Lx1109_42
.Lx1109_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1109_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1109_43
                        cmp              rax, r9
                                                                                        je    .Lx1109_43
                        mov              r9, rax
                                                                                        jmp   .Lx1109_42
.Lx1109_43:
                        cmp              r8, r9
                                                                                        je    .Lx1109_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1109_44
                        cmp              eax, 99
                                                                                        je    .Lx1109_44
                        cmp              eax, 13
                                                                                        jne   .Lx1109_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1109_44
                                                                                        jmp   .Lx1109_45
.Lx1109_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1109_53
                        cmp              eax, 99
                                                                                        je    .Lx1109_53
                        cmp              eax, 13
                                                                                        jne   .Lx1109_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1109_53
                                                                                        jmp   .Lx1109_46
.Lx1109_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1109_53
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
                                                                                        jmp   .Lx1109_51
.Lx1109_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1109_47
                        cmp              eax, 99
                                                                                        je    .Lx1109_47
                        cmp              eax, 13
                                                                                        jne   .Lx1109_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1109_47
                                                                                        jmp   .Lx1109_48
.Lx1109_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1109_53
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
                                                                                        jmp   .Lx1109_51
.Lx1109_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1109_49
                        cmp              edx, 14
                                                                                        je    .Lx1109_53
                                                                                        jmp   .Lx1109_52
.Lx1109_49:
                        cmp              edx, 14
                                                                                        je    .Lx1109_52
                        cmp              ecx, 7
                                                                                        je    .Lx1109_53
                        cmp              edx, 7
                                                                                        je    .Lx1109_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1109_50
                        cmp              edx, 6
                                                                                        jne   .Lx1109_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1109_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1109_51
                                                                                        jmp   .Lx1109_52
.Lx1109_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1109_53
.Lx1109_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1109_54
.Lx1109_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1109_54
.Lx1109_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1109_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1059_lit_string_α
n1058_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx1110_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1060_op11_α
.Lx1110_0:
                        .quad            .Lx1110_0_s
.Lx1110_0_s:
                        .string          "Day="
#-----------------------------------------------------------------------------------------------------------------------
n1060_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn1112:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1112]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1061_var_α
n1060_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1062_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn1116:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1116]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1063_lit_string_α
n1062_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1063_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n1064_op11_α
.Lx1117_0:
                        .quad            .Lx1117_0_s
.Lx1117_0_s:
                        .string          " Abbott="
#-----------------------------------------------------------------------------------------------------------------------
n1064_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn1119:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1119]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1065_var_α
n1064_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1066_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn1123:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1123]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1067_lit_string_α
n1066_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1067_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx1124_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1068_op11_α
.Lx1124_0:
                        .quad            .Lx1124_0_s
.Lx1124_0_s:
                        .string          " Briggs="
#-----------------------------------------------------------------------------------------------------------------------
n1068_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn1126:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1126]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1069_var_α
n1068_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1070_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1070_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1130:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1130]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1071_lit_string_α
n1070_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1071_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx1131_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1072_op11_α
.Lx1131_0:
                        .quad            .Lx1131_0_s
.Lx1131_0_s:
                        .string          " Culver="
#-----------------------------------------------------------------------------------------------------------------------
n1072_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1133:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1133]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1073_var_α
n1072_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1073_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1074_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn1137:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1075_lit_string_α
n1074_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1075_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx1138_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1076_op11_α
.Lx1138_0:
                        .quad            .Lx1138_0_s
.Lx1138_0_s:
                        .string          " Denny="
#-----------------------------------------------------------------------------------------------------------------------
n1076_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1140:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1140]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1077_var_α
n1076_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1077_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1078_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1078_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn1144:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1144]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1079_lit_string_α
n1078_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1079_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1080_op11_α
.Lx1145_0:
                        .quad            .Lx1145_0_s
.Lx1145_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n1080_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn1147:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1147]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1081_move_label_α
n1080_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1081_move_label_α:
                        lea              rax, [rip + n1047_op11_α]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   proc_display$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
n1082_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 112]
n1082_disjunction_β:
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_β:
                                                                                        jmp   n1082_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1208]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_day_num$2F2_α
proc_day_num$2F2_α:
                        .global          proc_day_num$2F2_α
                        .global          proc_day_num$2F2_β
                        .global          proc_day_num$2F2_γ
                        .global          proc_day_num$2F2_ω
                        sub              rsp, 1376
                        mov              [rsp + 1352], rcx
                        mov              [rsp + 1360], rdx
                        mov              [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1344
                        call             rt_jmp_frame_lexprep2@PLT
proc_day_num$2F2_α_body:
                        lea              rax, [rip + n1162_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
#-----------------------------------------------------------------------------------------------------------------------
n1152_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1201_101
.Lx1201_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1201_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1153_var_ref_α
n1152_op11_β:
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
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n1155_op11_α
.Lx1204_0:
                        .quad            .Lx1204_0_s
.Lx1204_0_s:
                        .string          "monday"
#-----------------------------------------------------------------------------------------------------------------------
n1155_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1157_op11_α
                                                                                        jmp   n1156_var_ref_α
n1155_op11_β:
                                                                                        jmp   n1157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n1158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1157_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1159_var_ref_α
n1157_op11_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1158_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx1209_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n1160_op11_α
.Lx1209_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n1161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1160_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n1157_op11_α
                                                                                        jmp   n1162_suspend_α
n1160_op11_β:
                                                                                        jmp   n1157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1161_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx1213_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1163_op11_α
.Lx1213_0:
                        .quad            .Lx1213_0_s
.Lx1213_0_s:
                        .string          "tuesday"
#-----------------------------------------------------------------------------------------------------------------------
n1162_suspend_α:
                        lea              rax, [rip + n1162_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1162_suspend_β:
                                                                                        jmp   n1157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1163_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1165_op11_α
                                                                                        jmp   n1164_var_ref_α
n1163_op11_β:
                                                                                        jmp   n1165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n1166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1165_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1167_var_ref_α
n1165_op11_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1166_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx1220_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1168_op11_α
.Lx1220_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n1169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1168_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n1165_op11_α
                                                                                        jmp   n1170_suspend_α
n1168_op11_β:
                                                                                        jmp   n1165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1169_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx1224_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1171_op11_α
.Lx1224_0:
                        .quad            .Lx1224_0_s
.Lx1224_0_s:
                        .string          "wednesday"
#-----------------------------------------------------------------------------------------------------------------------
n1170_suspend_α:
                        lea              rax, [rip + n1170_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1170_suspend_β:
                                                                                        jmp   n1165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1171_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1173_op11_α
                                                                                        jmp   n1172_var_ref_α
n1171_op11_β:
                                                                                        jmp   n1173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n1174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1173_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1175_var_ref_α
n1173_op11_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1174_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx1231_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1176_op11_α
.Lx1231_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n1177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1176_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n1173_op11_α
                                                                                        jmp   n1178_suspend_α
n1176_op11_β:
                                                                                        jmp   n1173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1177_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1179_op11_α
.Lx1235_0:
                        .quad            .Lx1235_0_s
.Lx1235_0_s:
                        .string          "thursday"
#-----------------------------------------------------------------------------------------------------------------------
n1178_suspend_α:
                        lea              rax, [rip + n1178_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1178_suspend_β:
                                                                                        jmp   n1173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1179_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1181_op11_α
                                                                                        jmp   n1180_var_ref_α
n1179_op11_β:
                                                                                        jmp   n1181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n1182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1181_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1183_var_ref_α
n1181_op11_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1182_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx1242_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n1184_op11_α
.Lx1242_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n1185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        movabs           rsi, 4
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n1181_op11_α
                                                                                        jmp   n1186_suspend_α
n1184_op11_β:
                                                                                        jmp   n1181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx1246_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1187_op11_α
.Lx1246_0:
                        .quad            .Lx1246_0_s
.Lx1246_0_s:
                        .string          "friday"
#-----------------------------------------------------------------------------------------------------------------------
n1186_suspend_α:
                        lea              rax, [rip + n1186_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1186_suspend_β:
                                                                                        jmp   n1181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1187_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1189_op11_α
                                                                                        jmp   n1188_var_ref_α
n1187_op11_β:
                                                                                        jmp   n1189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n1190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_op11_α:
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
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   n1191_var_ref_α
n1189_op11_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1190_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx1253_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n1192_op11_α
.Lx1253_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1191_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1192_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 5
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n1189_op11_α
                                                                                        jmp   n1194_suspend_α
n1192_op11_β:
                                                                                        jmp   n1189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1193_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx1257_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1195_op11_α
.Lx1257_0:
                        .quad            .Lx1257_0_s
.Lx1257_0_s:
                        .string          "saturday"
#-----------------------------------------------------------------------------------------------------------------------
n1194_suspend_α:
                        lea              rax, [rip + n1194_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1194_suspend_β:
                                                                                        jmp   n1189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1195_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1197_op11_α
                                                                                        jmp   n1196_var_ref_α
n1195_op11_β:
                                                                                        jmp   n1197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n1198_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_op11_α:
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
                                                                                        je    proc_day_num$2F2_ω
                                                                                        jmp   proc_day_num$2F2_ω
n1197_op11_β:
                                                                                        jmp   proc_day_num$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1198_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1264_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1199_op11_α
.Lx1264_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1199_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 6
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n1197_op11_α
                                                                                        jmp   n1200_suspend_α
n1199_op11_β:
                                                                                        jmp   n1197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1200_suspend_α:
                        lea              rax, [rip + n1200_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_day_num$2F2_γ
n1200_suspend_β:
                                                                                        jmp   n1197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1328]
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_day_num$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1352]
                        mov              rbp, [rbp + 1368]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_day_num$2F2_ω:
                        mov              rax, [rbp + 1360]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, [rbp + 1368]
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
n1268_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1273_101
.Lx1273_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1273_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1269_call_proc_staged_α
n1268_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1269_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 4
                        mov              esi, 0
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
                        cmp              eax, 99
                                                                                        je    n1271_op11_α
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
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1271_op11_α:
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
n1271_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1272_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n1272_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n1272_disjunction_α
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
