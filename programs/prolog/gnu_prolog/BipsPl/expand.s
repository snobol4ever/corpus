                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$phrase$2F4_α
proc_$phrase$2F4_α:
                        .global          proc_$phrase$2F4_α
                        .global          proc_$phrase$2F4_β
                        .global          proc_$phrase$2F4_γ
                        .global          proc_$phrase$2F4_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1136
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
proc_$phrase$2F4_α_body:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1136], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx37_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx37_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx37_101
.Lx37_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx37_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$phrase$2F4_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_$phrase$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx42_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx42_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_41
                        cmp              esi, 1
                                                                                        jne   .Lx42_55
                        mov              r8, rax
                                                                                        jmp   .Lx42_40
.Lx42_55:
                        cmp              esi, 2
                                                                                        jne   .Lx42_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_41
                        mov              r8, rax
                                                                                        jmp   .Lx42_40
.Lx42_56:
                        cmp              eax, 13
                                                                                        jne   .Lx42_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_41
                        cmp              rax, r8
                                                                                        je    .Lx42_41
                        mov              r8, rax
                                                                                        jmp   .Lx42_40
.Lx42_41:
                        lea              r9, [rbp + 1088]
.Lx42_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx42_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_43
                        cmp              esi, 1
                                                                                        jne   .Lx42_57
                        mov              r9, rax
                                                                                        jmp   .Lx42_42
.Lx42_57:
                        cmp              esi, 2
                                                                                        jne   .Lx42_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_43
                        mov              r9, rax
                                                                                        jmp   .Lx42_42
.Lx42_58:
                        cmp              eax, 13
                                                                                        jne   .Lx42_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_43
                        cmp              rax, r9
                                                                                        je    .Lx42_43
                        mov              r9, rax
                                                                                        jmp   .Lx42_42
.Lx42_43:
                        cmp              r8, r9
                                                                                        je    .Lx42_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_44
                        cmp              eax, 99
                                                                                        je    .Lx42_44
                        cmp              eax, 13
                                                                                        jne   .Lx42_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx42_44
                                                                                        jmp   .Lx42_45
.Lx42_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_53
                        cmp              eax, 99
                                                                                        je    .Lx42_53
                        cmp              eax, 13
                                                                                        jne   .Lx42_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx42_53
                                                                                        jmp   .Lx42_46
.Lx42_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx42_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx42_53
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
                                                                                        jmp   .Lx42_51
.Lx42_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_47
                        cmp              eax, 99
                                                                                        je    .Lx42_47
                        cmp              eax, 13
                                                                                        jne   .Lx42_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx42_47
                                                                                        jmp   .Lx42_48
.Lx42_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx42_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx42_53
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
                                                                                        jmp   .Lx42_51
.Lx42_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx42_49
                        cmp              edx, 14
                                                                                        je    .Lx42_53
                                                                                        jmp   .Lx42_52
.Lx42_49:
                        cmp              edx, 14
                                                                                        je    .Lx42_52
                        cmp              ecx, 7
                                                                                        je    .Lx42_53
                        cmp              edx, 7
                                                                                        je    .Lx42_53
                        cmp              ecx, 6
                                                                                        jne   .Lx42_50
                        cmp              edx, 6
                                                                                        jne   .Lx42_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx42_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx42_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx42_51
                                                                                        jmp   .Lx42_52
.Lx42_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx42_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx42_53
.Lx42_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx42_54
.Lx42_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx42_54
.Lx42_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx42_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_$phrase$2F4_ω
                                                                                        jmp   proc_$phrase$2F4_ω
n5_op11_β:
                                                                                        jmp   proc_$phrase$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx48_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx48_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_41
                        cmp              esi, 1
                                                                                        jne   .Lx48_55
                        mov              r8, rax
                                                                                        jmp   .Lx48_40
.Lx48_55:
                        cmp              esi, 2
                                                                                        jne   .Lx48_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx48_41
                        mov              r8, rax
                                                                                        jmp   .Lx48_40
.Lx48_56:
                        cmp              eax, 13
                                                                                        jne   .Lx48_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_41
                        cmp              rax, r8
                                                                                        je    .Lx48_41
                        mov              r8, rax
                                                                                        jmp   .Lx48_40
.Lx48_41:
                        lea              r9, [rbp + 1008]
.Lx48_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx48_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_43
                        cmp              esi, 1
                                                                                        jne   .Lx48_57
                        mov              r9, rax
                                                                                        jmp   .Lx48_42
.Lx48_57:
                        cmp              esi, 2
                                                                                        jne   .Lx48_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx48_43
                        mov              r9, rax
                                                                                        jmp   .Lx48_42
.Lx48_58:
                        cmp              eax, 13
                                                                                        jne   .Lx48_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_43
                        cmp              rax, r9
                                                                                        je    .Lx48_43
                        mov              r9, rax
                                                                                        jmp   .Lx48_42
.Lx48_43:
                        cmp              r8, r9
                                                                                        je    .Lx48_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_44
                        cmp              eax, 99
                                                                                        je    .Lx48_44
                        cmp              eax, 13
                                                                                        jne   .Lx48_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx48_44
                                                                                        jmp   .Lx48_45
.Lx48_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_53
                        cmp              eax, 99
                                                                                        je    .Lx48_53
                        cmp              eax, 13
                                                                                        jne   .Lx48_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx48_53
                                                                                        jmp   .Lx48_46
.Lx48_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx48_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx48_53
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
                                                                                        jmp   .Lx48_51
.Lx48_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_47
                        cmp              eax, 99
                                                                                        je    .Lx48_47
                        cmp              eax, 13
                                                                                        jne   .Lx48_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx48_47
                                                                                        jmp   .Lx48_48
.Lx48_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx48_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx48_53
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
                                                                                        jmp   .Lx48_51
.Lx48_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx48_49
                        cmp              edx, 14
                                                                                        je    .Lx48_53
                                                                                        jmp   .Lx48_52
.Lx48_49:
                        cmp              edx, 14
                                                                                        je    .Lx48_52
                        cmp              ecx, 7
                                                                                        je    .Lx48_53
                        cmp              edx, 7
                                                                                        je    .Lx48_53
                        cmp              ecx, 6
                                                                                        jne   .Lx48_50
                        cmp              edx, 6
                                                                                        jne   .Lx48_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx48_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx48_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx48_51
                                                                                        jmp   .Lx48_52
.Lx48_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx48_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx48_53
.Lx48_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx48_54
.Lx48_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx48_54
.Lx48_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx48_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_ref_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
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
.Lx53_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              esi, 1
                                                                                        jne   .Lx53_55
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_55:
                        cmp              esi, 2
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_56:
                        cmp              eax, 13
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              rax, r8
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_41:
                        lea              r9, [rbp + 928]
.Lx53_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              esi, 1
                                                                                        jne   .Lx53_57
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_57:
                        cmp              esi, 2
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_58:
                        cmp              eax, 13
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              rax, r9
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_43:
                        cmp              r8, r9
                                                                                        je    .Lx53_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_44
                        cmp              eax, 99
                                                                                        je    .Lx53_44
                        cmp              eax, 13
                                                                                        jne   .Lx53_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx53_44
                                                                                        jmp   .Lx53_45
.Lx53_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_53
                        cmp              eax, 99
                                                                                        je    .Lx53_53
                        cmp              eax, 13
                                                                                        jne   .Lx53_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_46
.Lx53_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                                                                                        jmp   .Lx53_51
.Lx53_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_47
                        cmp              eax, 99
                                                                                        je    .Lx53_47
                        cmp              eax, 13
                                                                                        jne   .Lx53_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_47
                                                                                        jmp   .Lx53_48
.Lx53_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                                                                                        jmp   .Lx53_51
.Lx53_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx53_49
                        cmp              edx, 14
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_52
.Lx53_49:
                        cmp              edx, 14
                                                                                        je    .Lx53_52
                        cmp              ecx, 7
                                                                                        je    .Lx53_53
                        cmp              edx, 7
                                                                                        je    .Lx53_53
                        cmp              ecx, 6
                                                                                        jne   .Lx53_50
                        cmp              edx, 6
                                                                                        jne   .Lx53_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx53_51
                                                                                        jmp   .Lx53_52
.Lx53_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
.Lx53_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx53_54
.Lx53_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx53_54
.Lx53_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx53_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n11_var_ref_α
n10_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
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
.Lx58_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx58_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_41
                        cmp              esi, 1
                                                                                        jne   .Lx58_55
                        mov              r8, rax
                                                                                        jmp   .Lx58_40
.Lx58_55:
                        cmp              esi, 2
                                                                                        jne   .Lx58_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx58_41
                        mov              r8, rax
                                                                                        jmp   .Lx58_40
.Lx58_56:
                        cmp              eax, 13
                                                                                        jne   .Lx58_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_41
                        cmp              rax, r8
                                                                                        je    .Lx58_41
                        mov              r8, rax
                                                                                        jmp   .Lx58_40
.Lx58_41:
                        lea              r9, [rbp + 848]
.Lx58_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx58_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_43
                        cmp              esi, 1
                                                                                        jne   .Lx58_57
                        mov              r9, rax
                                                                                        jmp   .Lx58_42
.Lx58_57:
                        cmp              esi, 2
                                                                                        jne   .Lx58_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx58_43
                        mov              r9, rax
                                                                                        jmp   .Lx58_42
.Lx58_58:
                        cmp              eax, 13
                                                                                        jne   .Lx58_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_43
                        cmp              rax, r9
                                                                                        je    .Lx58_43
                        mov              r9, rax
                                                                                        jmp   .Lx58_42
.Lx58_43:
                        cmp              r8, r9
                                                                                        je    .Lx58_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx58_44
                        cmp              eax, 99
                                                                                        je    .Lx58_44
                        cmp              eax, 13
                                                                                        jne   .Lx58_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx58_44
                                                                                        jmp   .Lx58_45
.Lx58_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx58_53
                        cmp              eax, 99
                                                                                        je    .Lx58_53
                        cmp              eax, 13
                                                                                        jne   .Lx58_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx58_53
                                                                                        jmp   .Lx58_46
.Lx58_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx58_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx58_53
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
                                                                                        jmp   .Lx58_51
.Lx58_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx58_47
                        cmp              eax, 99
                                                                                        je    .Lx58_47
                        cmp              eax, 13
                                                                                        jne   .Lx58_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx58_47
                                                                                        jmp   .Lx58_48
.Lx58_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx58_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx58_53
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
                                                                                        jmp   .Lx58_51
.Lx58_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx58_49
                        cmp              edx, 14
                                                                                        je    .Lx58_53
                                                                                        jmp   .Lx58_52
.Lx58_49:
                        cmp              edx, 14
                                                                                        je    .Lx58_52
                        cmp              ecx, 7
                                                                                        je    .Lx58_53
                        cmp              edx, 7
                                                                                        je    .Lx58_53
                        cmp              ecx, 6
                                                                                        jne   .Lx58_50
                        cmp              edx, 6
                                                                                        jne   .Lx58_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx58_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx58_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx58_51
                                                                                        jmp   .Lx58_52
.Lx58_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx58_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx58_53
.Lx58_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx58_54
.Lx58_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx58_54
.Lx58_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx58_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n14_lit_string_α
n13_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n15_var_ref_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "phrase"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n16_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx63_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx63_21
.Lx63_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx63_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx63_22
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx63_23
.Lx63_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        call             rt_arg_stage@PLT
.Lx63_23:
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx63_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_3]
                        lea              rdx, [rip + .Lx63_4]
                                                                                        jmp   rax
.Lx63_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx63_2
.Lx63_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx63_2
.Lx63_1:
                        call             rt_faildescr@PLT
.Lx63_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n17_var_ref_α
n16_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn67:               .string          "$tt_var"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n20_var_ref_α
                                                                                        jmp   n19_call_proc_staged_α
n18_op11_β:
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx69_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx69_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4]
                                                                                        jmp   rax
.Lx69_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx69_2
.Lx69_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx69_2
.Lx69_1:
                        call             rt_faildescr@PLT
.Lx69_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n16_call_proc_staged_β
                                                                                        jmp   n20_var_ref_α
n19_call_proc_staged_β:
                                                                                        jmp   n16_call_proc_staged_β
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "$pl_err_instantiation/0"
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α:
                        mov              qword ptr [rbp + 544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx79_21
.Lx79_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx79_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_22
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx79_23
.Lx79_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx79_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_24
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx79_25
.Lx79_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx79_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_26
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx79_27
.Lx79_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx79_27:
                        mov              edi, 2
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx79_1
                        lea              rcx, [rip + .Lx79_3]
                        lea              rdx, [rip + .Lx79_4]
                                                                                        jmp   rax
.Lx79_3:
                        mov              qword ptr [rbp + 552], rsp
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx79_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx79_2
.Lx79_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx79_2
.Lx79_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx79_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx79_2
.Lx79_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx79_2
.Lx79_1:
                        call             rt_faildescr@PLT
.Lx79_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n16_call_proc_staged_β
                                                                                        jmp   n25_var_ref_α
n24_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   qword ptr [rsp]
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "$dcg_trans_body/4"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
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
.Lx84_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx84_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_41
                        cmp              rax, r8
                                                                                        je    .Lx84_41
                        mov              r8, rax
                                                                                        jmp   .Lx84_40
.Lx84_41:
                        lea              r9, [rbp + 416]
.Lx84_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx84_44
                        cmp              eax, 13
                                                                                        jne   .Lx84_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx84_44
                                                                                        jmp   .Lx84_45
.Lx84_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_53
                        cmp              eax, 99
                                                                                        je    .Lx84_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx84_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx84_49
                        cmp              edx, 14
                                                                                        je    .Lx84_53
                                                                                        jmp   .Lx84_52
.Lx84_49:
                        cmp              edx, 14
                                                                                        je    .Lx84_52
                        cmp              ecx, 7
                                                                                        je    .Lx84_53
                        cmp              edx, 7
                                                                                        je    .Lx84_53
                        cmp              ecx, 6
                                                                                        jne   .Lx84_50
                        cmp              edx, 6
                                                                                        jne   .Lx84_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx84_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx84_54
.Lx84_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx84_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n24_call_proc_staged_β
                                                                                        jmp   n28_var_ref_α
n27_op11_β:
                                                                                        jmp   n24_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx89_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx89_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        cmp              esi, 1
                                                                                        jne   .Lx89_55
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_55:
                        cmp              esi, 2
                                                                                        jne   .Lx89_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_56:
                        cmp              eax, 13
                                                                                        jne   .Lx89_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        cmp              rax, r8
                                                                                        je    .Lx89_41
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_41:
                        lea              r9, [rbp + 336]
.Lx89_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx89_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        cmp              esi, 1
                                                                                        jne   .Lx89_57
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_57:
                        cmp              esi, 2
                                                                                        jne   .Lx89_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_58:
                        cmp              eax, 13
                                                                                        jne   .Lx89_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        cmp              rax, r9
                                                                                        je    .Lx89_43
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_43:
                        cmp              r8, r9
                                                                                        je    .Lx89_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_44
                        cmp              eax, 99
                                                                                        je    .Lx89_44
                        cmp              eax, 13
                                                                                        jne   .Lx89_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx89_44
                                                                                        jmp   .Lx89_45
.Lx89_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_53
                        cmp              eax, 99
                                                                                        je    .Lx89_53
                        cmp              eax, 13
                                                                                        jne   .Lx89_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx89_53
                                                                                        jmp   .Lx89_46
.Lx89_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx89_53
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
                                                                                        jmp   .Lx89_51
.Lx89_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_47
                        cmp              eax, 99
                                                                                        je    .Lx89_47
                        cmp              eax, 13
                                                                                        jne   .Lx89_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx89_47
                                                                                        jmp   .Lx89_48
.Lx89_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx89_53
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
                                                                                        jmp   .Lx89_51
.Lx89_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx89_49
                        cmp              edx, 14
                                                                                        je    .Lx89_53
                                                                                        jmp   .Lx89_52
.Lx89_49:
                        cmp              edx, 14
                                                                                        je    .Lx89_52
                        cmp              ecx, 7
                                                                                        je    .Lx89_53
                        cmp              edx, 7
                                                                                        je    .Lx89_53
                        cmp              ecx, 6
                                                                                        jne   .Lx89_50
                        cmp              edx, 6
                                                                                        jne   .Lx89_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx89_51
                                                                                        jmp   .Lx89_52
.Lx89_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx89_53
.Lx89_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx89_54
.Lx89_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx89_54
.Lx89_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx89_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n24_call_proc_staged_β
                                                                                        jmp   n31_var_ref_α
n30_op11_β:
                                                                                        jmp   n24_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n33_var_ref_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "phrase"
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n35_call_proc_staged_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx97_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx97_21
.Lx97_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx97_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx97_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx97_23
.Lx97_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx97_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx97_24
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx97_25
.Lx97_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx97_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx97_26
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx97_27
.Lx97_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx97_27:
                        mov              rdi, qword ptr [rip + .Lx97_0]
                        mov              esi, 4
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx97_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx97_3]
                        lea              rdx, [rip + .Lx97_4]
                                                                                        jmp   rax
.Lx97_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx97_2
.Lx97_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx97_2
.Lx97_1:
                        call             rt_faildescr@PLT
.Lx97_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n24_call_proc_staged_β
                                                                                        jmp   n36_suspend_α
n35_call_proc_staged_β:
                                                                                        jmp   n24_call_proc_staged_β
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "$call/4"
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$phrase$2F4_γ
n36_suspend_β:
                                                                                        jmp   n35_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$phrase$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$phrase$2F4_β:
                                                                                        jmp   qword ptr [rbp + 1136]
#-----------------------------------------------------------------------------------------------------------------------
proc_$phrase$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$phrase$2F4_res]
                        push             rax
                        mov              rax, [rbp + 1272]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$phrase$2F4_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$dcg_trans_rule$2F2_α
proc_$dcg_trans_rule$2F2_α:
                        .global          proc_$dcg_trans_rule$2F2_α
                        .global          proc_$dcg_trans_rule$2F2_β
                        .global          proc_$dcg_trans_rule$2F2_γ
                        .global          proc_$dcg_trans_rule$2F2_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_$dcg_trans_rule$2F2_α_body:
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx114_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx114_101
.Lx114_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx114_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$dcg_trans_rule$2F2_ω
                                                                                        jmp   n101_var_ref_α
n100_op11_β:
                                                                                        jmp   proc_$dcg_trans_rule$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n103_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx119_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx119_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_41
                        cmp              esi, 1
                                                                                        jne   .Lx119_55
                        mov              r8, rax
                                                                                        jmp   .Lx119_40
.Lx119_55:
                        cmp              esi, 2
                                                                                        jne   .Lx119_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx119_41
                        mov              r8, rax
                                                                                        jmp   .Lx119_40
.Lx119_56:
                        cmp              eax, 13
                                                                                        jne   .Lx119_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_41
                        cmp              rax, r8
                                                                                        je    .Lx119_41
                        mov              r8, rax
                                                                                        jmp   .Lx119_40
.Lx119_41:
                        lea              r9, [rbp + 400]
.Lx119_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx119_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_43
                        cmp              esi, 1
                                                                                        jne   .Lx119_57
                        mov              r9, rax
                                                                                        jmp   .Lx119_42
.Lx119_57:
                        cmp              esi, 2
                                                                                        jne   .Lx119_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx119_43
                        mov              r9, rax
                                                                                        jmp   .Lx119_42
.Lx119_58:
                        cmp              eax, 13
                                                                                        jne   .Lx119_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_43
                        cmp              rax, r9
                                                                                        je    .Lx119_43
                        mov              r9, rax
                                                                                        jmp   .Lx119_42
.Lx119_43:
                        cmp              r8, r9
                                                                                        je    .Lx119_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx119_44
                        cmp              eax, 99
                                                                                        je    .Lx119_44
                        cmp              eax, 13
                                                                                        jne   .Lx119_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx119_44
                                                                                        jmp   .Lx119_45
.Lx119_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx119_53
                        cmp              eax, 99
                                                                                        je    .Lx119_53
                        cmp              eax, 13
                                                                                        jne   .Lx119_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx119_53
                                                                                        jmp   .Lx119_46
.Lx119_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx119_53
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
                                                                                        jmp   .Lx119_51
.Lx119_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx119_47
                        cmp              eax, 99
                                                                                        je    .Lx119_47
                        cmp              eax, 13
                                                                                        jne   .Lx119_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx119_47
                                                                                        jmp   .Lx119_48
.Lx119_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx119_53
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
                                                                                        jmp   .Lx119_51
.Lx119_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx119_49
                        cmp              edx, 14
                                                                                        je    .Lx119_53
                                                                                        jmp   .Lx119_52
.Lx119_49:
                        cmp              edx, 14
                                                                                        je    .Lx119_52
                        cmp              ecx, 7
                                                                                        je    .Lx119_53
                        cmp              edx, 7
                                                                                        je    .Lx119_53
                        cmp              ecx, 6
                                                                                        jne   .Lx119_50
                        cmp              edx, 6
                                                                                        jne   .Lx119_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx119_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx119_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx119_51
                                                                                        jmp   .Lx119_52
.Lx119_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx119_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx119_53
.Lx119_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx119_54
.Lx119_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx119_54
.Lx119_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx119_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n105_op11_α
                                                                                        jmp   n104_var_ref_α
n103_op11_β:
                                                                                        jmp   n105_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n106_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
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
                                                                                        je    proc_$dcg_trans_rule$2F2_ω
                                                                                        jmp   proc_$dcg_trans_rule$2F2_ω
n105_op11_β:
                                                                                        jmp   proc_$dcg_trans_rule$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n107_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx125_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx125_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        cmp              esi, 1
                                                                                        jne   .Lx125_55
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_55:
                        cmp              esi, 2
                                                                                        jne   .Lx125_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_56:
                        cmp              eax, 13
                                                                                        jne   .Lx125_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        cmp              rax, r8
                                                                                        je    .Lx125_41
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_41:
                        lea              r9, [rbp + 320]
.Lx125_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx125_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        cmp              esi, 1
                                                                                        jne   .Lx125_57
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_57:
                        cmp              esi, 2
                                                                                        jne   .Lx125_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_58:
                        cmp              eax, 13
                                                                                        jne   .Lx125_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_43
                        cmp              rax, r9
                                                                                        je    .Lx125_43
                        mov              r9, rax
                                                                                        jmp   .Lx125_42
.Lx125_43:
                        cmp              r8, r9
                                                                                        je    .Lx125_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_44
                        cmp              eax, 99
                                                                                        je    .Lx125_44
                        cmp              eax, 13
                                                                                        jne   .Lx125_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx125_44
                                                                                        jmp   .Lx125_45
.Lx125_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_53
                        cmp              eax, 99
                                                                                        je    .Lx125_53
                        cmp              eax, 13
                                                                                        jne   .Lx125_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx125_53
                                                                                        jmp   .Lx125_46
.Lx125_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx125_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx125_53
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
                                                                                        jmp   .Lx125_51
.Lx125_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_47
                        cmp              eax, 99
                                                                                        je    .Lx125_47
                        cmp              eax, 13
                                                                                        jne   .Lx125_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx125_47
                                                                                        jmp   .Lx125_48
.Lx125_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx125_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx125_53
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
                                                                                        jmp   .Lx125_51
.Lx125_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx125_49
                        cmp              edx, 14
                                                                                        je    .Lx125_53
                                                                                        jmp   .Lx125_52
.Lx125_49:
                        cmp              edx, 14
                                                                                        je    .Lx125_52
                        cmp              ecx, 7
                                                                                        je    .Lx125_53
                        cmp              edx, 7
                                                                                        je    .Lx125_53
                        cmp              ecx, 6
                                                                                        jne   .Lx125_50
                        cmp              edx, 6
                                                                                        jne   .Lx125_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx125_51
                                                                                        jmp   .Lx125_52
.Lx125_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx125_53
.Lx125_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx125_54
.Lx125_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx125_54
.Lx125_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx125_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n105_op11_α
                                                                                        jmp   n108_lit_string_α
n107_op11_β:
                                                                                        jmp   n105_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n109_var_ref_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "Pl_Dcg_Trans_Rule_2"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n111_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n105_op11_α
                                                                                        jmp   n112_call_proc_staged_α
n111_op11_β:
                                                                                        jmp   n105_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx133_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx133_21
.Lx133_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx133_21:
                        mov              rdi, qword ptr [rip + .Lx133_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx133_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx133_3]
                        lea              rdx, [rip + .Lx133_4]
                                                                                        jmp   rax
.Lx133_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx133_2
.Lx133_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx133_2
.Lx133_1:
                        call             rt_faildescr@PLT
.Lx133_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n105_op11_α
                                                                                        jmp   n113_suspend_α
n112_call_proc_staged_β:
                                                                                        jmp   n105_op11_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n113_suspend_α:
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$dcg_trans_rule$2F2_γ
n113_suspend_β:
                                                                                        jmp   n112_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_rule$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_rule$2F2_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_rule$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$dcg_trans_rule$2F2_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_rule$2F2_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$dcg_trans_body$2F4_α
proc_$dcg_trans_body$2F4_α:
                        .global          proc_$dcg_trans_body$2F4_α
                        .global          proc_$dcg_trans_body$2F4_β
                        .global          proc_$dcg_trans_body$2F4_γ
                        .global          proc_$dcg_trans_body$2F4_ω
                        sub              rsp, 816
                        mov              [rsp + 792], rcx
                        mov              [rsp + 800], rdx
                        mov              [rsp + 808], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 784
                        call             rt_jmp_frame_lexprep2@PLT
proc_$dcg_trans_body$2F4_α_body:
                        lea              rax, [rip + n157_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx158_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx158_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx158_101
.Lx158_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx158_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$dcg_trans_body$2F4_ω
                                                                                        jmp   n137_var_ref_α
n136_op11_β:
                                                                                        jmp   proc_$dcg_trans_body$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n139_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lx163_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx163_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx163_41
                        cmp              esi, 1
                                                                                        jne   .Lx163_55
                        mov              r8, rax
                                                                                        jmp   .Lx163_40
.Lx163_55:
                        cmp              esi, 2
                                                                                        jne   .Lx163_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx163_41
                        mov              r8, rax
                                                                                        jmp   .Lx163_40
.Lx163_56:
                        cmp              eax, 13
                                                                                        jne   .Lx163_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx163_41
                        cmp              rax, r8
                                                                                        je    .Lx163_41
                        mov              r8, rax
                                                                                        jmp   .Lx163_40
.Lx163_41:
                        lea              r9, [rbp + 656]
.Lx163_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx163_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx163_43
                        cmp              esi, 1
                                                                                        jne   .Lx163_57
                        mov              r9, rax
                                                                                        jmp   .Lx163_42
.Lx163_57:
                        cmp              esi, 2
                                                                                        jne   .Lx163_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx163_43
                        mov              r9, rax
                                                                                        jmp   .Lx163_42
.Lx163_58:
                        cmp              eax, 13
                                                                                        jne   .Lx163_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx163_43
                        cmp              rax, r9
                                                                                        je    .Lx163_43
                        mov              r9, rax
                                                                                        jmp   .Lx163_42
.Lx163_43:
                        cmp              r8, r9
                                                                                        je    .Lx163_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx163_44
                        cmp              eax, 99
                                                                                        je    .Lx163_44
                        cmp              eax, 13
                                                                                        jne   .Lx163_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx163_44
                                                                                        jmp   .Lx163_45
.Lx163_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx163_53
                        cmp              eax, 99
                                                                                        je    .Lx163_53
                        cmp              eax, 13
                                                                                        jne   .Lx163_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx163_53
                                                                                        jmp   .Lx163_46
.Lx163_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx163_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx163_53
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
                                                                                        jmp   .Lx163_51
.Lx163_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx163_47
                        cmp              eax, 99
                                                                                        je    .Lx163_47
                        cmp              eax, 13
                                                                                        jne   .Lx163_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx163_47
                                                                                        jmp   .Lx163_48
.Lx163_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx163_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx163_53
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
                                                                                        jmp   .Lx163_51
.Lx163_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx163_49
                        cmp              edx, 14
                                                                                        je    .Lx163_53
                                                                                        jmp   .Lx163_52
.Lx163_49:
                        cmp              edx, 14
                                                                                        je    .Lx163_52
                        cmp              ecx, 7
                                                                                        je    .Lx163_53
                        cmp              edx, 7
                                                                                        je    .Lx163_53
                        cmp              ecx, 6
                                                                                        jne   .Lx163_50
                        cmp              edx, 6
                                                                                        jne   .Lx163_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx163_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx163_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx163_51
                                                                                        jmp   .Lx163_52
.Lx163_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx163_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx163_53
.Lx163_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx163_54
.Lx163_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx163_54
.Lx163_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx163_54:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n140_var_ref_α
n139_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
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
                                                                                        je    proc_$dcg_trans_body$2F4_ω
                                                                                        jmp   proc_$dcg_trans_body$2F4_ω
n141_op11_β:
                                                                                        jmp   proc_$dcg_trans_body$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n143_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
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
.Lx169_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx169_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_41
                        cmp              esi, 1
                                                                                        jne   .Lx169_55
                        mov              r8, rax
                                                                                        jmp   .Lx169_40
.Lx169_55:
                        cmp              esi, 2
                                                                                        jne   .Lx169_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx169_41
                        mov              r8, rax
                                                                                        jmp   .Lx169_40
.Lx169_56:
                        cmp              eax, 13
                                                                                        jne   .Lx169_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_41
                        cmp              rax, r8
                                                                                        je    .Lx169_41
                        mov              r8, rax
                                                                                        jmp   .Lx169_40
.Lx169_41:
                        lea              r9, [rbp + 576]
.Lx169_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx169_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_43
                        cmp              esi, 1
                                                                                        jne   .Lx169_57
                        mov              r9, rax
                                                                                        jmp   .Lx169_42
.Lx169_57:
                        cmp              esi, 2
                                                                                        jne   .Lx169_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx169_43
                        mov              r9, rax
                                                                                        jmp   .Lx169_42
.Lx169_58:
                        cmp              eax, 13
                                                                                        jne   .Lx169_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_43
                        cmp              rax, r9
                                                                                        je    .Lx169_43
                        mov              r9, rax
                                                                                        jmp   .Lx169_42
.Lx169_43:
                        cmp              r8, r9
                                                                                        je    .Lx169_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx169_44
                        cmp              eax, 99
                                                                                        je    .Lx169_44
                        cmp              eax, 13
                                                                                        jne   .Lx169_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx169_44
                                                                                        jmp   .Lx169_45
.Lx169_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx169_53
                        cmp              eax, 99
                                                                                        je    .Lx169_53
                        cmp              eax, 13
                                                                                        jne   .Lx169_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx169_53
                                                                                        jmp   .Lx169_46
.Lx169_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx169_53
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
                                                                                        jmp   .Lx169_51
.Lx169_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx169_47
                        cmp              eax, 99
                                                                                        je    .Lx169_47
                        cmp              eax, 13
                                                                                        jne   .Lx169_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx169_47
                                                                                        jmp   .Lx169_48
.Lx169_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx169_53
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
                                                                                        jmp   .Lx169_51
.Lx169_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx169_49
                        cmp              edx, 14
                                                                                        je    .Lx169_53
                                                                                        jmp   .Lx169_52
.Lx169_49:
                        cmp              edx, 14
                                                                                        je    .Lx169_52
                        cmp              ecx, 7
                                                                                        je    .Lx169_53
                        cmp              edx, 7
                                                                                        je    .Lx169_53
                        cmp              ecx, 6
                                                                                        jne   .Lx169_50
                        cmp              edx, 6
                                                                                        jne   .Lx169_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx169_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx169_51
                                                                                        jmp   .Lx169_52
.Lx169_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx169_53
.Lx169_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx169_54
.Lx169_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx169_54
.Lx169_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx169_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n144_var_ref_α
n143_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
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
.Lx174_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              esi, 1
                                                                                        jne   .Lx174_55
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_55:
                        cmp              esi, 2
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_56:
                        cmp              eax, 13
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              rax, r8
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_41:
                        lea              r9, [rbp + 496]
.Lx174_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              esi, 1
                                                                                        jne   .Lx174_57
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_57:
                        cmp              esi, 2
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_58:
                        cmp              eax, 13
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              rax, r9
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_43:
                        cmp              r8, r9
                                                                                        je    .Lx174_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_44
                        cmp              eax, 99
                                                                                        je    .Lx174_44
                        cmp              eax, 13
                                                                                        jne   .Lx174_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx174_44
                                                                                        jmp   .Lx174_45
.Lx174_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_53
                        cmp              eax, 99
                                                                                        je    .Lx174_53
                        cmp              eax, 13
                                                                                        jne   .Lx174_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_46
.Lx174_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_47
                        cmp              eax, 99
                                                                                        je    .Lx174_47
                        cmp              eax, 13
                                                                                        jne   .Lx174_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_47
                                                                                        jmp   .Lx174_48
.Lx174_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx174_49
                        cmp              edx, 14
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_52
.Lx174_49:
                        cmp              edx, 14
                                                                                        je    .Lx174_52
                        cmp              ecx, 7
                                                                                        je    .Lx174_53
                        cmp              edx, 7
                                                                                        je    .Lx174_53
                        cmp              ecx, 6
                                                                                        jne   .Lx174_50
                        cmp              edx, 6
                                                                                        jne   .Lx174_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx174_51
                                                                                        jmp   .Lx174_52
.Lx174_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
.Lx174_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx174_54
.Lx174_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx174_54
.Lx174_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx174_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n147_var_ref_α
n146_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n148_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n149_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
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
.Lx179_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx179_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        cmp              esi, 1
                                                                                        jne   .Lx179_55
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_55:
                        cmp              esi, 2
                                                                                        jne   .Lx179_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_56:
                        cmp              eax, 13
                                                                                        jne   .Lx179_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        cmp              rax, r8
                                                                                        je    .Lx179_41
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_41:
                        lea              r9, [rbp + 416]
.Lx179_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx179_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        cmp              esi, 1
                                                                                        jne   .Lx179_57
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_57:
                        cmp              esi, 2
                                                                                        jne   .Lx179_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_58:
                        cmp              eax, 13
                                                                                        jne   .Lx179_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        cmp              rax, r9
                                                                                        je    .Lx179_43
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_43:
                        cmp              r8, r9
                                                                                        je    .Lx179_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_44
                        cmp              eax, 99
                                                                                        je    .Lx179_44
                        cmp              eax, 13
                                                                                        jne   .Lx179_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx179_44
                                                                                        jmp   .Lx179_45
.Lx179_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_53
                        cmp              eax, 99
                                                                                        je    .Lx179_53
                        cmp              eax, 13
                                                                                        jne   .Lx179_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx179_53
                                                                                        jmp   .Lx179_46
.Lx179_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx179_53
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
                                                                                        jmp   .Lx179_51
.Lx179_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_47
                        cmp              eax, 99
                                                                                        je    .Lx179_47
                        cmp              eax, 13
                                                                                        jne   .Lx179_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx179_47
                                                                                        jmp   .Lx179_48
.Lx179_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx179_53
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
                                                                                        jmp   .Lx179_51
.Lx179_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx179_49
                        cmp              edx, 14
                                                                                        je    .Lx179_53
                                                                                        jmp   .Lx179_52
.Lx179_49:
                        cmp              edx, 14
                                                                                        je    .Lx179_52
                        cmp              ecx, 7
                                                                                        je    .Lx179_53
                        cmp              edx, 7
                                                                                        je    .Lx179_53
                        cmp              ecx, 6
                                                                                        jne   .Lx179_50
                        cmp              edx, 6
                                                                                        jne   .Lx179_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx179_51
                                                                                        jmp   .Lx179_52
.Lx179_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx179_53
.Lx179_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx179_54
.Lx179_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx179_54
.Lx179_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx179_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n150_lit_string_α
n149_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n151_var_ref_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "Pl_Dcg_Trans_Body_4"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n156_call_proc_staged_α
n155_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx191_21
.Lx191_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx191_21:
                        mov              rdi, qword ptr [rip + .Lx191_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx191_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx191_3]
                        lea              rdx, [rip + .Lx191_4]
                                                                                        jmp   rax
.Lx191_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_1:
                        call             rt_faildescr@PLT
.Lx191_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n157_suspend_α
n156_call_proc_staged_β:
                                                                                        jmp   n141_op11_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n157_suspend_α:
                        lea              rax, [rip + n157_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$dcg_trans_body$2F4_γ
n157_suspend_β:
                                                                                        jmp   n156_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_body$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_body$2F4_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_body$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$dcg_trans_body$2F4_res]
                        push             rax
                        mov              rax, [rbp + 792]
                        mov              rbp, [rbp + 808]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$dcg_trans_body$2F4_ω:
                        mov              rax, [rbp + 800]
                        lea              rsp, [rbp + 816]
                        mov              rbp, [rbp + 808]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$expand_term1$2F3_α
proc_$expand_term1$2F3_α:
                        .global          proc_$expand_term1$2F3_α
                        .global          proc_$expand_term1$2F3_β
                        .global          proc_$expand_term1$2F3_γ
                        .global          proc_$expand_term1$2F3_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_$expand_term1$2F3_α_body:
                        lea              rax, [rip + n210_suspend_β]
                        mov              qword ptr [rbp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n194_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx211_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx211_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx211_101
.Lx211_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx211_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$expand_term1$2F3_ω
                                                                                        jmp   n195_var_ref_α
n194_op11_β:
                                                                                        jmp   proc_$expand_term1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
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
.Lx216_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        cmp              esi, 1
                                                                                        jne   .Lx216_55
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_55:
                        cmp              esi, 2
                                                                                        jne   .Lx216_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_56:
                        cmp              eax, 13
                                                                                        jne   .Lx216_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        cmp              rax, r8
                                                                                        je    .Lx216_41
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_41:
                        lea              r9, [rbp + 464]
.Lx216_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        cmp              esi, 1
                                                                                        jne   .Lx216_57
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_57:
                        cmp              esi, 2
                                                                                        jne   .Lx216_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_58:
                        cmp              eax, 13
                                                                                        jne   .Lx216_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        cmp              rax, r9
                                                                                        je    .Lx216_43
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_43:
                        cmp              r8, r9
                                                                                        je    .Lx216_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_44
                        cmp              eax, 99
                                                                                        je    .Lx216_44
                        cmp              eax, 13
                                                                                        jne   .Lx216_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx216_44
                                                                                        jmp   .Lx216_45
.Lx216_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_53
                        cmp              eax, 99
                                                                                        je    .Lx216_53
                        cmp              eax, 13
                                                                                        jne   .Lx216_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_53
                                                                                        jmp   .Lx216_46
.Lx216_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx216_53
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
                                                                                        jmp   .Lx216_51
.Lx216_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_47
                        cmp              eax, 99
                                                                                        je    .Lx216_47
                        cmp              eax, 13
                                                                                        jne   .Lx216_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_47
                                                                                        jmp   .Lx216_48
.Lx216_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx216_53
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
                                                                                        jmp   .Lx216_51
.Lx216_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx216_49
                        cmp              edx, 14
                                                                                        je    .Lx216_53
                                                                                        jmp   .Lx216_52
.Lx216_49:
                        cmp              edx, 14
                                                                                        je    .Lx216_52
                        cmp              ecx, 7
                                                                                        je    .Lx216_53
                        cmp              edx, 7
                                                                                        je    .Lx216_53
                        cmp              ecx, 6
                                                                                        jne   .Lx216_50
                        cmp              edx, 6
                                                                                        jne   .Lx216_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx216_51
                                                                                        jmp   .Lx216_52
.Lx216_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx216_53
.Lx216_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx216_54
.Lx216_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx216_54
.Lx216_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx216_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n198_var_ref_α
n197_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
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
                                                                                        je    proc_$expand_term1$2F3_ω
                                                                                        jmp   proc_$expand_term1$2F3_ω
n199_op11_β:
                                                                                        jmp   proc_$expand_term1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
.Lx222_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx222_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        cmp              esi, 1
                                                                                        jne   .Lx222_55
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_55:
                        cmp              esi, 2
                                                                                        jne   .Lx222_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_56:
                        cmp              eax, 13
                                                                                        jne   .Lx222_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        cmp              rax, r8
                                                                                        je    .Lx222_41
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_41:
                        lea              r9, [rbp + 384]
.Lx222_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx222_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        cmp              esi, 1
                                                                                        jne   .Lx222_57
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_57:
                        cmp              esi, 2
                                                                                        jne   .Lx222_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_58:
                        cmp              eax, 13
                                                                                        jne   .Lx222_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        cmp              rax, r9
                                                                                        je    .Lx222_43
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_43:
                        cmp              r8, r9
                                                                                        je    .Lx222_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_44
                        cmp              eax, 99
                                                                                        je    .Lx222_44
                        cmp              eax, 13
                                                                                        jne   .Lx222_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx222_44
                                                                                        jmp   .Lx222_45
.Lx222_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_53
                        cmp              eax, 99
                                                                                        je    .Lx222_53
                        cmp              eax, 13
                                                                                        jne   .Lx222_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx222_53
                                                                                        jmp   .Lx222_46
.Lx222_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx222_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx222_53
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
                                                                                        jmp   .Lx222_51
.Lx222_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_47
                        cmp              eax, 99
                                                                                        je    .Lx222_47
                        cmp              eax, 13
                                                                                        jne   .Lx222_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx222_47
                                                                                        jmp   .Lx222_48
.Lx222_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx222_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx222_53
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
                                                                                        jmp   .Lx222_51
.Lx222_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx222_49
                        cmp              edx, 14
                                                                                        je    .Lx222_53
                                                                                        jmp   .Lx222_52
.Lx222_49:
                        cmp              edx, 14
                                                                                        je    .Lx222_52
                        cmp              ecx, 7
                                                                                        je    .Lx222_53
                        cmp              edx, 7
                                                                                        je    .Lx222_53
                        cmp              ecx, 6
                                                                                        jne   .Lx222_50
                        cmp              edx, 6
                                                                                        jne   .Lx222_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx222_51
                                                                                        jmp   .Lx222_52
.Lx222_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx222_53
.Lx222_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx222_54
.Lx222_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx222_54
.Lx222_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx222_54:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n202_var_ref_α
n201_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n203_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n204_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n204_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx227_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx227_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx227_41
                        cmp              esi, 1
                                                                                        jne   .Lx227_55
                        mov              r8, rax
                                                                                        jmp   .Lx227_40
.Lx227_55:
                        cmp              esi, 2
                                                                                        jne   .Lx227_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx227_41
                        mov              r8, rax
                                                                                        jmp   .Lx227_40
.Lx227_56:
                        cmp              eax, 13
                                                                                        jne   .Lx227_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx227_41
                        cmp              rax, r8
                                                                                        je    .Lx227_41
                        mov              r8, rax
                                                                                        jmp   .Lx227_40
.Lx227_41:
                        lea              r9, [rbp + 304]
.Lx227_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx227_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx227_43
                        cmp              esi, 1
                                                                                        jne   .Lx227_57
                        mov              r9, rax
                                                                                        jmp   .Lx227_42
.Lx227_57:
                        cmp              esi, 2
                                                                                        jne   .Lx227_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx227_43
                        mov              r9, rax
                                                                                        jmp   .Lx227_42
.Lx227_58:
                        cmp              eax, 13
                                                                                        jne   .Lx227_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx227_43
                        cmp              rax, r9
                                                                                        je    .Lx227_43
                        mov              r9, rax
                                                                                        jmp   .Lx227_42
.Lx227_43:
                        cmp              r8, r9
                                                                                        je    .Lx227_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx227_44
                        cmp              eax, 99
                                                                                        je    .Lx227_44
                        cmp              eax, 13
                                                                                        jne   .Lx227_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx227_44
                                                                                        jmp   .Lx227_45
.Lx227_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx227_53
                        cmp              eax, 99
                                                                                        je    .Lx227_53
                        cmp              eax, 13
                                                                                        jne   .Lx227_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx227_53
                                                                                        jmp   .Lx227_46
.Lx227_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx227_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx227_53
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
                                                                                        jmp   .Lx227_51
.Lx227_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx227_47
                        cmp              eax, 99
                                                                                        je    .Lx227_47
                        cmp              eax, 13
                                                                                        jne   .Lx227_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx227_47
                                                                                        jmp   .Lx227_48
.Lx227_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx227_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx227_53
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
                                                                                        jmp   .Lx227_51
.Lx227_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx227_49
                        cmp              edx, 14
                                                                                        je    .Lx227_53
                                                                                        jmp   .Lx227_52
.Lx227_49:
                        cmp              edx, 14
                                                                                        je    .Lx227_52
                        cmp              ecx, 7
                                                                                        je    .Lx227_53
                        cmp              edx, 7
                                                                                        je    .Lx227_53
                        cmp              ecx, 6
                                                                                        jne   .Lx227_50
                        cmp              edx, 6
                                                                                        jne   .Lx227_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx227_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx227_51
                                                                                        jmp   .Lx227_52
.Lx227_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx227_53
.Lx227_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx227_54
.Lx227_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx227_54
.Lx227_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx227_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n205_var_ref_α
n204_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n208_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx235_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx235_23
.Lx235_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx235_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx235_25
.Lx235_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx235_25:
                        mov              edi, 7
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx235_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx235_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n209_op19_α
n208_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "$disj0/3"
#-----------------------------------------------------------------------------------------------------------------------
n209_op19_α:
                                                                                        jmp   n210_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n210_suspend_α:
                        lea              rax, [rip + n210_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$expand_term1$2F3_γ
n210_suspend_β:
                                                                                        jmp   n208_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$expand_term1$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$expand_term1$2F3_β:
                                                                                        jmp   qword ptr [rbp + 512]
#-----------------------------------------------------------------------------------------------------------------------
proc_$expand_term1$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$expand_term1$2F3_res]
                        push             rax
                        mov              rax, [rbp + 584]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$expand_term1$2F3_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
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
                        lea              rax, [rip + n241_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n240_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx244_60:
                        .section         .rodata
.Lbynamegenfn92:        .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn92]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n241_suspend_α
n240_call_builtin_gen_β:
                                                                                        jmp   .Lx244_60
#-----------------------------------------------------------------------------------------------------------------------
n241_suspend_α:
                        lea              rax, [rip + n241_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n241_suspend_β:
                                                                                        jmp   n240_call_builtin_gen_β
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
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_predicate$2F1_α
proc_current_predicate$2F1_α:
                        .global          proc_current_predicate$2F1_α
                        .global          proc_current_predicate$2F1_β
                        .global          proc_current_predicate$2F1_γ
                        .global          proc_current_predicate$2F1_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
proc_current_predicate$2F1_α_body:
                        lea              rax, [rip + n249_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n248_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx252_60:
                        .section         .rodata
.Lbynamegenfn95:        .string          "$current_predicate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn95]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_predicate$2F1_ω
                                                                                        jmp   n249_suspend_α
n248_call_builtin_gen_β:
                                                                                        jmp   .Lx252_60
#-----------------------------------------------------------------------------------------------------------------------
n249_suspend_α:
                        lea              rax, [rip + n249_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_predicate$2F1_γ
n249_suspend_β:
                                                                                        jmp   n248_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_current_predicate$2F1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call_term_expansion$2F2_α
proc_$call_term_expansion$2F2_α:
                        .global          proc_$call_term_expansion$2F2_α
                        .global          proc_$call_term_expansion$2F2_β
                        .global          proc_$call_term_expansion$2F2_γ
                        .global          proc_$call_term_expansion$2F2_ω
                        sub              rsp, 832
                        mov              [rsp + 808], rcx
                        mov              [rsp + 816], rdx
                        mov              [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 752
                        mov              edx, 800
                        call             rt_jmp_frame_lexprep2@PLT
proc_$call_term_expansion$2F2_α_body:
                        lea              rax, [rip + n276_suspend_β]
                        mov              qword ptr [rbp + 752], rax
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx277_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx277_101
.Lx277_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx277_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call_term_expansion$2F2_ω
                                                                                        jmp   n256_var_ref_α
n255_op11_β:
                                                                                        jmp   proc_$call_term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n258_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n258_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx282_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx282_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx282_41
                        cmp              esi, 1
                                                                                        jne   .Lx282_55
                        mov              r8, rax
                                                                                        jmp   .Lx282_40
.Lx282_55:
                        cmp              esi, 2
                                                                                        jne   .Lx282_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx282_41
                        mov              r8, rax
                                                                                        jmp   .Lx282_40
.Lx282_56:
                        cmp              eax, 13
                                                                                        jne   .Lx282_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx282_41
                        cmp              rax, r8
                                                                                        je    .Lx282_41
                        mov              r8, rax
                                                                                        jmp   .Lx282_40
.Lx282_41:
                        lea              r9, [rbp + 704]
.Lx282_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx282_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx282_43
                        cmp              esi, 1
                                                                                        jne   .Lx282_57
                        mov              r9, rax
                                                                                        jmp   .Lx282_42
.Lx282_57:
                        cmp              esi, 2
                                                                                        jne   .Lx282_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx282_43
                        mov              r9, rax
                                                                                        jmp   .Lx282_42
.Lx282_58:
                        cmp              eax, 13
                                                                                        jne   .Lx282_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx282_43
                        cmp              rax, r9
                                                                                        je    .Lx282_43
                        mov              r9, rax
                                                                                        jmp   .Lx282_42
.Lx282_43:
                        cmp              r8, r9
                                                                                        je    .Lx282_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx282_44
                        cmp              eax, 99
                                                                                        je    .Lx282_44
                        cmp              eax, 13
                                                                                        jne   .Lx282_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx282_44
                                                                                        jmp   .Lx282_45
.Lx282_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx282_53
                        cmp              eax, 99
                                                                                        je    .Lx282_53
                        cmp              eax, 13
                                                                                        jne   .Lx282_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx282_53
                                                                                        jmp   .Lx282_46
.Lx282_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx282_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx282_53
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
                                                                                        jmp   .Lx282_51
.Lx282_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx282_47
                        cmp              eax, 99
                                                                                        je    .Lx282_47
                        cmp              eax, 13
                                                                                        jne   .Lx282_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx282_47
                                                                                        jmp   .Lx282_48
.Lx282_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx282_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx282_53
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
                                                                                        jmp   .Lx282_51
.Lx282_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx282_49
                        cmp              edx, 14
                                                                                        je    .Lx282_53
                                                                                        jmp   .Lx282_52
.Lx282_49:
                        cmp              edx, 14
                                                                                        je    .Lx282_52
                        cmp              ecx, 7
                                                                                        je    .Lx282_53
                        cmp              edx, 7
                                                                                        je    .Lx282_53
                        cmp              ecx, 6
                                                                                        jne   .Lx282_50
                        cmp              edx, 6
                                                                                        jne   .Lx282_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx282_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx282_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx282_51
                                                                                        jmp   .Lx282_52
.Lx282_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx282_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx282_53
.Lx282_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx282_54
.Lx282_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx282_54
.Lx282_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx282_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n259_var_ref_α
n258_op11_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n261_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n260_op11_α:
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
                                                                                        je    proc_$call_term_expansion$2F2_ω
                                                                                        jmp   proc_$call_term_expansion$2F2_ω
n260_op11_β:
                                                                                        jmp   proc_$call_term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n262_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n262_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx288_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx288_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_41
                        cmp              esi, 1
                                                                                        jne   .Lx288_55
                        mov              r8, rax
                                                                                        jmp   .Lx288_40
.Lx288_55:
                        cmp              esi, 2
                                                                                        jne   .Lx288_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx288_41
                        mov              r8, rax
                                                                                        jmp   .Lx288_40
.Lx288_56:
                        cmp              eax, 13
                                                                                        jne   .Lx288_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_41
                        cmp              rax, r8
                                                                                        je    .Lx288_41
                        mov              r8, rax
                                                                                        jmp   .Lx288_40
.Lx288_41:
                        lea              r9, [rbp + 624]
.Lx288_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx288_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_43
                        cmp              esi, 1
                                                                                        jne   .Lx288_57
                        mov              r9, rax
                                                                                        jmp   .Lx288_42
.Lx288_57:
                        cmp              esi, 2
                                                                                        jne   .Lx288_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx288_43
                        mov              r9, rax
                                                                                        jmp   .Lx288_42
.Lx288_58:
                        cmp              eax, 13
                                                                                        jne   .Lx288_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_43
                        cmp              rax, r9
                                                                                        je    .Lx288_43
                        mov              r9, rax
                                                                                        jmp   .Lx288_42
.Lx288_43:
                        cmp              r8, r9
                                                                                        je    .Lx288_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx288_44
                        cmp              eax, 99
                                                                                        je    .Lx288_44
                        cmp              eax, 13
                                                                                        jne   .Lx288_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx288_44
                                                                                        jmp   .Lx288_45
.Lx288_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx288_53
                        cmp              eax, 99
                                                                                        je    .Lx288_53
                        cmp              eax, 13
                                                                                        jne   .Lx288_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx288_53
                                                                                        jmp   .Lx288_46
.Lx288_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx288_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx288_53
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
                                                                                        jmp   .Lx288_51
.Lx288_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx288_47
                        cmp              eax, 99
                                                                                        je    .Lx288_47
                        cmp              eax, 13
                                                                                        jne   .Lx288_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx288_47
                                                                                        jmp   .Lx288_48
.Lx288_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx288_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx288_53
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
                                                                                        jmp   .Lx288_51
.Lx288_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx288_49
                        cmp              edx, 14
                                                                                        je    .Lx288_53
                                                                                        jmp   .Lx288_52
.Lx288_49:
                        cmp              edx, 14
                                                                                        je    .Lx288_52
                        cmp              ecx, 7
                                                                                        je    .Lx288_53
                        cmp              edx, 7
                                                                                        je    .Lx288_53
                        cmp              ecx, 6
                                                                                        jne   .Lx288_50
                        cmp              edx, 6
                                                                                        jne   .Lx288_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx288_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx288_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx288_51
                                                                                        jmp   .Lx288_52
.Lx288_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx288_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx288_53
.Lx288_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx288_54
.Lx288_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx288_54
.Lx288_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx288_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n263_lit_string_α
n262_op11_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n264_lit_string_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n265_lit_integer_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n266_op11_α
.Lx291_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n266_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n267_call_proc_staged_α
n266_op11_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n267_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx294_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx294_21
.Lx294_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx294_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx294_1
                        lea              rcx, [rip + .Lx294_3]
                        lea              rdx, [rip + .Lx294_4]
                                                                                        jmp   rax
.Lx294_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx294_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx294_2
.Lx294_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx294_2
.Lx294_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx294_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx294_2
.Lx294_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx294_2
.Lx294_1:
                        call             rt_faildescr@PLT
.Lx294_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n268_lit_string_α
n267_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "current_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n269_lit_integer_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "expand_term"
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n270_call_proc_staged_α
.Lx296_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx298_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx298_21
.Lx298_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx298_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx298_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx298_23
.Lx298_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx298_23:
                        mov              rdi, qword ptr [rip + .Lx298_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx298_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx298_3]
                        lea              rdx, [rip + .Lx298_4]
                                                                                        jmp   rax
.Lx298_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx298_2
.Lx298_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx298_2
.Lx298_1:
                        call             rt_faildescr@PLT
.Lx298_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n267_call_proc_staged_β
                                                                                        jmp   n271_lit_string_α
n270_call_proc_staged_β:
                                                                                        jmp   n267_call_proc_staged_β
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n272_var_ref_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n273_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n274_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n274_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n275_call_proc_staged_α
n274_op11_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx306_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx306_21
.Lx306_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx306_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx306_1
                        lea              rcx, [rip + .Lx306_3]
                        lea              rdx, [rip + .Lx306_4]
                                                                                        jmp   rax
.Lx306_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx306_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx306_2
.Lx306_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx306_2
.Lx306_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx306_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx306_2
.Lx306_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx306_2
.Lx306_1:
                        call             rt_faildescr@PLT
.Lx306_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n270_call_proc_staged_β
                                                                                        jmp   n276_suspend_α
n275_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n276_suspend_α:
                        lea              rax, [rip + n276_suspend_β]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call_term_expansion$2F2_γ
n276_suspend_β:
                                                                                        jmp   n275_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$call_term_expansion$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$call_term_expansion$2F2_β:
                                                                                        jmp   qword ptr [rbp + 752]
#-----------------------------------------------------------------------------------------------------------------------
proc_$call_term_expansion$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$call_term_expansion$2F2_res]
                        push             rax
                        mov              rax, [rbp + 808]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$call_term_expansion$2F2_ω:
                        mov              rax, [rbp + 816]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F3_α
proc_$disj0$2F3_α:
                        .global          proc_$disj0$2F3_α
                        .global          proc_$disj0$2F3_β
                        .global          proc_$disj0$2F3_γ
                        .global          proc_$disj0$2F3_ω
                        sub              rsp, 1920
                        mov              [rsp + 1896], rcx
                        mov              [rsp + 1904], rdx
                        mov              [rsp + 1912], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1824
                        mov              edx, 1888
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F3_α_body:
                        lea              rax, [rip + n345_suspend_β]
                        mov              qword ptr [rbp + 1824], rax
#-----------------------------------------------------------------------------------------------------------------------
n309_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx374_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx374_101
.Lx374_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx374_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   n310_var_ref_α
n309_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n312_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1760]
                        lea              r8, [rbp + 1760]
.Lx379_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx379_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx379_41
                        cmp              esi, 1
                                                                                        jne   .Lx379_55
                        mov              r8, rax
                                                                                        jmp   .Lx379_40
.Lx379_55:
                        cmp              esi, 2
                                                                                        jne   .Lx379_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx379_41
                        mov              r8, rax
                                                                                        jmp   .Lx379_40
.Lx379_56:
                        cmp              eax, 13
                                                                                        jne   .Lx379_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx379_41
                        cmp              rax, r8
                                                                                        je    .Lx379_41
                        mov              r8, rax
                                                                                        jmp   .Lx379_40
.Lx379_41:
                        lea              r9, [rbp + 1776]
.Lx379_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx379_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx379_43
                        cmp              esi, 1
                                                                                        jne   .Lx379_57
                        mov              r9, rax
                                                                                        jmp   .Lx379_42
.Lx379_57:
                        cmp              esi, 2
                                                                                        jne   .Lx379_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx379_43
                        mov              r9, rax
                                                                                        jmp   .Lx379_42
.Lx379_58:
                        cmp              eax, 13
                                                                                        jne   .Lx379_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx379_43
                        cmp              rax, r9
                                                                                        je    .Lx379_43
                        mov              r9, rax
                                                                                        jmp   .Lx379_42
.Lx379_43:
                        cmp              r8, r9
                                                                                        je    .Lx379_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx379_44
                        cmp              eax, 99
                                                                                        je    .Lx379_44
                        cmp              eax, 13
                                                                                        jne   .Lx379_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx379_44
                                                                                        jmp   .Lx379_45
.Lx379_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx379_53
                        cmp              eax, 99
                                                                                        je    .Lx379_53
                        cmp              eax, 13
                                                                                        jne   .Lx379_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx379_53
                                                                                        jmp   .Lx379_46
.Lx379_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx379_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx379_53
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
                                                                                        jmp   .Lx379_51
.Lx379_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx379_47
                        cmp              eax, 99
                                                                                        je    .Lx379_47
                        cmp              eax, 13
                                                                                        jne   .Lx379_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx379_47
                                                                                        jmp   .Lx379_48
.Lx379_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx379_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx379_53
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
                                                                                        jmp   .Lx379_51
.Lx379_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx379_49
                        cmp              edx, 14
                                                                                        je    .Lx379_53
                                                                                        jmp   .Lx379_52
.Lx379_49:
                        cmp              edx, 14
                                                                                        je    .Lx379_52
                        cmp              ecx, 7
                                                                                        je    .Lx379_53
                        cmp              edx, 7
                                                                                        je    .Lx379_53
                        cmp              ecx, 6
                                                                                        jne   .Lx379_50
                        cmp              edx, 6
                                                                                        jne   .Lx379_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx379_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx379_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx379_51
                                                                                        jmp   .Lx379_52
.Lx379_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx379_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx379_53
.Lx379_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx379_54
.Lx379_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx379_54
.Lx379_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx379_54:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n313_var_ref_α
n312_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   n316_var_ref_α
n314_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n317_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1680]
                        lea              r8, [rbp + 1680]
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
                        lea              r9, [rbp + 1696]
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
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n319_var_ref_α
n317_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n320_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n321_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n320_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1344]
                        lea              r8, [rbp + 1344]
.Lx392_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx392_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_41
                        cmp              esi, 1
                                                                                        jne   .Lx392_55
                        mov              r8, rax
                                                                                        jmp   .Lx392_40
.Lx392_55:
                        cmp              esi, 2
                                                                                        jne   .Lx392_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx392_41
                        mov              r8, rax
                                                                                        jmp   .Lx392_40
.Lx392_56:
                        cmp              eax, 13
                                                                                        jne   .Lx392_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_41
                        cmp              rax, r8
                                                                                        je    .Lx392_41
                        mov              r8, rax
                                                                                        jmp   .Lx392_40
.Lx392_41:
                        lea              r9, [rbp + 1360]
.Lx392_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx392_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_43
                        cmp              esi, 1
                                                                                        jne   .Lx392_57
                        mov              r9, rax
                                                                                        jmp   .Lx392_42
.Lx392_57:
                        cmp              esi, 2
                                                                                        jne   .Lx392_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx392_43
                        mov              r9, rax
                                                                                        jmp   .Lx392_42
.Lx392_58:
                        cmp              eax, 13
                                                                                        jne   .Lx392_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_43
                        cmp              rax, r9
                                                                                        je    .Lx392_43
                        mov              r9, rax
                                                                                        jmp   .Lx392_42
.Lx392_43:
                        cmp              r8, r9
                                                                                        je    .Lx392_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx392_44
                        cmp              eax, 99
                                                                                        je    .Lx392_44
                        cmp              eax, 13
                                                                                        jne   .Lx392_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx392_44
                                                                                        jmp   .Lx392_45
.Lx392_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx392_53
                        cmp              eax, 99
                                                                                        je    .Lx392_53
                        cmp              eax, 13
                                                                                        jne   .Lx392_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx392_53
                                                                                        jmp   .Lx392_46
.Lx392_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx392_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx392_53
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
                                                                                        jmp   .Lx392_51
.Lx392_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx392_47
                        cmp              eax, 99
                                                                                        je    .Lx392_47
                        cmp              eax, 13
                                                                                        jne   .Lx392_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx392_47
                                                                                        jmp   .Lx392_48
.Lx392_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx392_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx392_53
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
                                                                                        jmp   .Lx392_51
.Lx392_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx392_49
                        cmp              edx, 14
                                                                                        je    .Lx392_53
                                                                                        jmp   .Lx392_52
.Lx392_49:
                        cmp              edx, 14
                                                                                        je    .Lx392_52
                        cmp              ecx, 7
                                                                                        je    .Lx392_53
                        cmp              edx, 7
                                                                                        je    .Lx392_53
                        cmp              ecx, 6
                                                                                        jne   .Lx392_50
                        cmp              edx, 6
                                                                                        jne   .Lx392_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx392_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx392_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx392_51
                                                                                        jmp   .Lx392_52
.Lx392_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx392_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx392_53
.Lx392_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx392_54
.Lx392_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx392_54
.Lx392_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx392_54:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n322_var_ref_α
n320_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n324_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n325_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   n326_var_ref_α
n323_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n324_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
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
                                                                                        je    n314_op11_α
                                                                                        jmp   n327_var_ref_α
n324_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n330_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1264]
                        lea              r8, [rbp + 1264]
.Lx405_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx405_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx405_41
                        cmp              esi, 1
                                                                                        jne   .Lx405_55
                        mov              r8, rax
                                                                                        jmp   .Lx405_40
.Lx405_55:
                        cmp              esi, 2
                                                                                        jne   .Lx405_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx405_41
                        mov              r8, rax
                                                                                        jmp   .Lx405_40
.Lx405_56:
                        cmp              eax, 13
                                                                                        jne   .Lx405_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx405_41
                        cmp              rax, r8
                                                                                        je    .Lx405_41
                        mov              r8, rax
                                                                                        jmp   .Lx405_40
.Lx405_41:
                        lea              r9, [rbp + 1280]
.Lx405_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx405_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx405_43
                        cmp              esi, 1
                                                                                        jne   .Lx405_57
                        mov              r9, rax
                                                                                        jmp   .Lx405_42
.Lx405_57:
                        cmp              esi, 2
                                                                                        jne   .Lx405_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx405_43
                        mov              r9, rax
                                                                                        jmp   .Lx405_42
.Lx405_58:
                        cmp              eax, 13
                                                                                        jne   .Lx405_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx405_43
                        cmp              rax, r9
                                                                                        je    .Lx405_43
                        mov              r9, rax
                                                                                        jmp   .Lx405_42
.Lx405_43:
                        cmp              r8, r9
                                                                                        je    .Lx405_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx405_44
                        cmp              eax, 99
                                                                                        je    .Lx405_44
                        cmp              eax, 13
                                                                                        jne   .Lx405_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx405_44
                                                                                        jmp   .Lx405_45
.Lx405_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx405_53
                        cmp              eax, 99
                                                                                        je    .Lx405_53
                        cmp              eax, 13
                                                                                        jne   .Lx405_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx405_53
                                                                                        jmp   .Lx405_46
.Lx405_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx405_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx405_53
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
                                                                                        jmp   .Lx405_51
.Lx405_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx405_47
                        cmp              eax, 99
                                                                                        je    .Lx405_47
                        cmp              eax, 13
                                                                                        jne   .Lx405_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx405_47
                                                                                        jmp   .Lx405_48
.Lx405_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx405_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx405_53
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
                                                                                        jmp   .Lx405_51
.Lx405_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx405_49
                        cmp              edx, 14
                                                                                        je    .Lx405_53
                                                                                        jmp   .Lx405_52
.Lx405_49:
                        cmp              edx, 14
                                                                                        je    .Lx405_52
                        cmp              ecx, 7
                                                                                        je    .Lx405_53
                        cmp              edx, 7
                                                                                        je    .Lx405_53
                        cmp              ecx, 6
                                                                                        jne   .Lx405_50
                        cmp              edx, 6
                                                                                        jne   .Lx405_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx405_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx405_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx405_51
                                                                                        jmp   .Lx405_52
.Lx405_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx405_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx405_53
.Lx405_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx405_54
.Lx405_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx405_54
.Lx405_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx405_54:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n331_var_ref_α
n328_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n330_op11_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn409:              .string          "$tt_var"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn409]
                        lea              rsi, [rbp + 1552]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n333_var_ref_α
n330_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n334_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_op11_α:
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
                        lea              r9, [rbp + 896]
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n336_op11_α
                                                                                        jmp   n335_var_ref_α
n332_op11_β:
                                                                                        jmp   n336_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n337_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n338_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n339_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n336_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   n340_var_ref_α
n336_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n341_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n338_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1184]
                        lea              r8, [rbp + 1184]
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
                        lea              r9, [rbp + 1200]
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
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n342_var_ref_α
n338_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n343_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1472]
                        lea              r8, [rbp + 1472]
.Lx427_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_41
                        cmp              esi, 1
                                                                                        jne   .Lx427_55
                        mov              r8, rax
                                                                                        jmp   .Lx427_40
.Lx427_55:
                        cmp              esi, 2
                                                                                        jne   .Lx427_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_41
                        mov              r8, rax
                                                                                        jmp   .Lx427_40
.Lx427_56:
                        cmp              eax, 13
                                                                                        jne   .Lx427_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_41
                        cmp              rax, r8
                                                                                        je    .Lx427_41
                        mov              r8, rax
                                                                                        jmp   .Lx427_40
.Lx427_41:
                        lea              r9, [rbp + 1488]
.Lx427_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_43
                        cmp              esi, 1
                                                                                        jne   .Lx427_57
                        mov              r9, rax
                                                                                        jmp   .Lx427_42
.Lx427_57:
                        cmp              esi, 2
                                                                                        jne   .Lx427_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_43
                        mov              r9, rax
                                                                                        jmp   .Lx427_42
.Lx427_58:
                        cmp              eax, 13
                                                                                        jne   .Lx427_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_43
                        cmp              rax, r9
                                                                                        je    .Lx427_43
                        mov              r9, rax
                                                                                        jmp   .Lx427_42
.Lx427_43:
                        cmp              r8, r9
                                                                                        je    .Lx427_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_44
                        cmp              eax, 99
                                                                                        je    .Lx427_44
                        cmp              eax, 13
                                                                                        jne   .Lx427_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx427_44
                                                                                        jmp   .Lx427_45
.Lx427_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_53
                        cmp              eax, 99
                                                                                        je    .Lx427_53
                        cmp              eax, 13
                                                                                        jne   .Lx427_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx427_53
                                                                                        jmp   .Lx427_46
.Lx427_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx427_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx427_53
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
                                                                                        jmp   .Lx427_51
.Lx427_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_47
                        cmp              eax, 99
                                                                                        je    .Lx427_47
                        cmp              eax, 13
                                                                                        jne   .Lx427_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx427_47
                                                                                        jmp   .Lx427_48
.Lx427_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx427_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx427_53
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
                                                                                        jmp   .Lx427_51
.Lx427_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx427_49
                        cmp              edx, 14
                                                                                        je    .Lx427_53
                                                                                        jmp   .Lx427_52
.Lx427_49:
                        cmp              edx, 14
                                                                                        je    .Lx427_52
                        cmp              ecx, 7
                                                                                        je    .Lx427_53
                        cmp              edx, 7
                                                                                        je    .Lx427_53
                        cmp              ecx, 6
                                                                                        jne   .Lx427_50
                        cmp              edx, 6
                                                                                        jne   .Lx427_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx427_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx427_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx427_51
                                                                                        jmp   .Lx427_52
.Lx427_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx427_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx427_53
.Lx427_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx427_54
.Lx427_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx427_54
.Lx427_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx427_54:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n345_suspend_α
n341_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        lea              r8, [rbp + 800]
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
                        lea              r9, [rbp + 816]
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
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n336_op11_α
                                                                                        jmp   n347_var_ref_α
n343_op11_β:
                                                                                        jmp   n336_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n348_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n345_suspend_α:
                        lea              rax, [rip + n345_suspend_β]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F3_γ
n345_suspend_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n349_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n350_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_op11_α:
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
.Lx439_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx439_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_41
                        cmp              esi, 1
                                                                                        jne   .Lx439_55
                        mov              r8, rax
                                                                                        jmp   .Lx439_40
.Lx439_55:
                        cmp              esi, 2
                                                                                        jne   .Lx439_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx439_41
                        mov              r8, rax
                                                                                        jmp   .Lx439_40
.Lx439_56:
                        cmp              eax, 13
                                                                                        jne   .Lx439_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_41
                        cmp              rax, r8
                                                                                        je    .Lx439_41
                        mov              r8, rax
                                                                                        jmp   .Lx439_40
.Lx439_41:
                        lea              r9, [rbp + 416]
.Lx439_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx439_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_43
                        cmp              esi, 1
                                                                                        jne   .Lx439_57
                        mov              r9, rax
                                                                                        jmp   .Lx439_42
.Lx439_57:
                        cmp              esi, 2
                                                                                        jne   .Lx439_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx439_43
                        mov              r9, rax
                                                                                        jmp   .Lx439_42
.Lx439_58:
                        cmp              eax, 13
                                                                                        jne   .Lx439_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_43
                        cmp              rax, r9
                                                                                        je    .Lx439_43
                        mov              r9, rax
                                                                                        jmp   .Lx439_42
.Lx439_43:
                        cmp              r8, r9
                                                                                        je    .Lx439_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx439_44
                        cmp              eax, 99
                                                                                        je    .Lx439_44
                        cmp              eax, 13
                                                                                        jne   .Lx439_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx439_44
                                                                                        jmp   .Lx439_45
.Lx439_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx439_53
                        cmp              eax, 99
                                                                                        je    .Lx439_53
                        cmp              eax, 13
                                                                                        jne   .Lx439_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx439_53
                                                                                        jmp   .Lx439_46
.Lx439_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx439_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx439_53
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
                                                                                        jmp   .Lx439_51
.Lx439_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx439_47
                        cmp              eax, 99
                                                                                        je    .Lx439_47
                        cmp              eax, 13
                                                                                        jne   .Lx439_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx439_47
                                                                                        jmp   .Lx439_48
.Lx439_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx439_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx439_53
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
                                                                                        jmp   .Lx439_51
.Lx439_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx439_49
                        cmp              edx, 14
                                                                                        je    .Lx439_53
                                                                                        jmp   .Lx439_52
.Lx439_49:
                        cmp              edx, 14
                                                                                        je    .Lx439_52
                        cmp              ecx, 7
                                                                                        je    .Lx439_53
                        cmp              edx, 7
                                                                                        je    .Lx439_53
                        cmp              ecx, 6
                                                                                        jne   .Lx439_50
                        cmp              edx, 6
                                                                                        jne   .Lx439_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx439_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx439_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx439_51
                                                                                        jmp   .Lx439_52
.Lx439_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx439_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx439_53
.Lx439_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx439_54
.Lx439_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx439_54
.Lx439_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx439_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n352_op11_α
                                                                                        jmp   n351_var_ref_α
n348_op11_β:
                                                                                        jmp   n352_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_proc_staged_α:
                        mov              qword ptr [rbp + 1104], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx441_20
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx441_21
.Lx441_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        call             rt_arg_stage@PLT
.Lx441_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx441_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx441_23
.Lx441_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx441_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx441_1
                        lea              rcx, [rip + .Lx441_3]
                        lea              rdx, [rip + .Lx441_4]
                                                                                        jmp   rax
.Lx441_3:
                        mov              qword ptr [rbp + 1112], rsp
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax
                                                                                        jne   .Lx441_5
                        mov              qword ptr [rbp + 1104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx441_2
.Lx441_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx441_2
.Lx441_4:
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax
                                                                                        jne   .Lx441_6
                        mov              qword ptr [rbp + 1104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx441_2
.Lx441_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx441_2
.Lx441_1:
                        call             rt_faildescr@PLT
.Lx441_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n353_var_ref_α
n349_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1112]
                                                                                        jmp   qword ptr [rsp]
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "$call_term_expansion/2"
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n354_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n355_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n352_op11_α:
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
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   proc_$disj0$2F3_ω
n352_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n356_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx449_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              esi, 1
                                                                                        jne   .Lx449_55
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_55:
                        cmp              esi, 2
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_56:
                        cmp              eax, 13
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              rax, r8
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_41:
                        lea              r9, [rbp + 736]
.Lx449_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              esi, 1
                                                                                        jne   .Lx449_57
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_57:
                        cmp              esi, 2
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_58:
                        cmp              eax, 13
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              rax, r9
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_43:
                        cmp              r8, r9
                                                                                        je    .Lx449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_44
                        cmp              eax, 99
                                                                                        je    .Lx449_44
                        cmp              eax, 13
                                                                                        jne   .Lx449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx449_44
                                                                                        jmp   .Lx449_45
.Lx449_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_53
                        cmp              eax, 99
                                                                                        je    .Lx449_53
                        cmp              eax, 13
                                                                                        jne   .Lx449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_46
.Lx449_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
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
                                                                                        jmp   .Lx449_51
.Lx449_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_47
                        cmp              eax, 99
                                                                                        je    .Lx449_47
                        cmp              eax, 13
                                                                                        jne   .Lx449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_47
                                                                                        jmp   .Lx449_48
.Lx449_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
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
                                                                                        jmp   .Lx449_51
.Lx449_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx449_49
                        cmp              edx, 14
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_52
.Lx449_49:
                        cmp              edx, 14
                                                                                        je    .Lx449_52
                        cmp              ecx, 7
                                                                                        je    .Lx449_53
                        cmp              edx, 7
                                                                                        je    .Lx449_53
                        cmp              ecx, 6
                                                                                        jne   .Lx449_50
                        cmp              edx, 6
                                                                                        jne   .Lx449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx449_51
                                                                                        jmp   .Lx449_52
.Lx449_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
.Lx449_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx449_54
.Lx449_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx449_54
.Lx449_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx449_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n336_op11_α
                                                                                        jmp   n357_lit_string_α
n354_op11_β:
                                                                                        jmp   n336_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n358_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n359_op11_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n360_lit_integer_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "expand_term"
#-----------------------------------------------------------------------------------------------------------------------
n358_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx454_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx454_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        cmp              esi, 1
                                                                                        jne   .Lx454_55
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_55:
                        cmp              esi, 2
                                                                                        jne   .Lx454_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_56:
                        cmp              eax, 13
                                                                                        jne   .Lx454_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        cmp              rax, r8
                                                                                        je    .Lx454_41
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_41:
                        lea              r9, [rbp + 336]
.Lx454_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx454_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        cmp              esi, 1
                                                                                        jne   .Lx454_57
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_57:
                        cmp              esi, 2
                                                                                        jne   .Lx454_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_58:
                        cmp              eax, 13
                                                                                        jne   .Lx454_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        cmp              rax, r9
                                                                                        je    .Lx454_43
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_43:
                        cmp              r8, r9
                                                                                        je    .Lx454_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_44
                        cmp              eax, 99
                                                                                        je    .Lx454_44
                        cmp              eax, 13
                                                                                        jne   .Lx454_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx454_44
                                                                                        jmp   .Lx454_45
.Lx454_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_53
                        cmp              eax, 99
                                                                                        je    .Lx454_53
                        cmp              eax, 13
                                                                                        jne   .Lx454_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx454_53
                                                                                        jmp   .Lx454_46
.Lx454_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx454_53
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
                                                                                        jmp   .Lx454_51
.Lx454_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_47
                        cmp              eax, 99
                                                                                        je    .Lx454_47
                        cmp              eax, 13
                                                                                        jne   .Lx454_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx454_47
                                                                                        jmp   .Lx454_48
.Lx454_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx454_53
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
                                                                                        jmp   .Lx454_51
.Lx454_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx454_49
                        cmp              edx, 14
                                                                                        je    .Lx454_53
                                                                                        jmp   .Lx454_52
.Lx454_49:
                        cmp              edx, 14
                                                                                        je    .Lx454_52
                        cmp              ecx, 7
                                                                                        je    .Lx454_53
                        cmp              edx, 7
                                                                                        je    .Lx454_53
                        cmp              ecx, 6
                                                                                        jne   .Lx454_50
                        cmp              edx, 6
                                                                                        jne   .Lx454_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx454_51
                                                                                        jmp   .Lx454_52
.Lx454_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx454_53
.Lx454_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx454_54
.Lx454_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx454_54
.Lx454_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx454_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n352_op11_α
                                                                                        jmp   n361_var_ref_α
n358_op11_β:
                                                                                        jmp   n352_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx455_2]
                                                                                        jmp   .Lx455_3
.Lx455_2:
                        .quad            .Lx455_2_s
.Lx455_2_s:
                        .string          "true"
.Lx455_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n349_call_proc_staged_β
                                                                                        jmp   n362_suspend_α
n359_op11_β:
                                                                                        jmp   n349_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n363_call_proc_staged_α
.Lx456_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n362_suspend_α:
                        lea              rax, [rip + n362_suspend_β]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F3_γ
n362_suspend_β:
                                                                                        jmp   n349_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n363_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx462_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx462_21
.Lx462_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx462_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx462_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx462_23
.Lx462_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx462_23:
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx462_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx462_3]
                        lea              rdx, [rip + .Lx462_4]
                                                                                        jmp   rax
.Lx462_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx462_2
.Lx462_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx462_2
.Lx462_1:
                        call             rt_faildescr@PLT
.Lx462_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n336_op11_α
                                                                                        jmp   n365_var_ref_α
n363_call_proc_staged_β:
                                                                                        jmp   n336_op11_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n366_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        lea              r8, [rbp + 240]
.Lx467_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              esi, 1
                                                                                        jne   .Lx467_55
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_55:
                        cmp              esi, 2
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_56:
                        cmp              eax, 13
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              rax, r8
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_41:
                        lea              r9, [rbp + 256]
.Lx467_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              esi, 1
                                                                                        jne   .Lx467_57
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_57:
                        cmp              esi, 2
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_58:
                        cmp              eax, 13
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              rax, r9
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_43:
                        cmp              r8, r9
                                                                                        je    .Lx467_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_44
                        cmp              eax, 99
                                                                                        je    .Lx467_44
                        cmp              eax, 13
                                                                                        jne   .Lx467_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx467_44
                                                                                        jmp   .Lx467_45
.Lx467_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_53
                        cmp              eax, 99
                                                                                        je    .Lx467_53
                        cmp              eax, 13
                                                                                        jne   .Lx467_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_46
.Lx467_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
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
                                                                                        jmp   .Lx467_51
.Lx467_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_47
                        cmp              eax, 99
                                                                                        je    .Lx467_47
                        cmp              eax, 13
                                                                                        jne   .Lx467_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_47
                                                                                        jmp   .Lx467_48
.Lx467_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
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
                                                                                        jmp   .Lx467_51
.Lx467_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx467_49
                        cmp              edx, 14
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_52
.Lx467_49:
                        cmp              edx, 14
                                                                                        je    .Lx467_52
                        cmp              ecx, 7
                                                                                        je    .Lx467_53
                        cmp              edx, 7
                                                                                        je    .Lx467_53
                        cmp              ecx, 6
                                                                                        jne   .Lx467_50
                        cmp              edx, 6
                                                                                        jne   .Lx467_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx467_51
                                                                                        jmp   .Lx467_52
.Lx467_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
.Lx467_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx467_54
.Lx467_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx467_54
.Lx467_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx467_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n352_op11_α
                                                                                        jmp   n368_var_ref_α
n366_op11_β:
                                                                                        jmp   n352_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n369_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n370_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n369_call_proc_staged_α:
                        mov              qword ptr [rbp + 544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx473_21
.Lx473_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx473_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_22
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx473_23
.Lx473_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx473_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx473_1
                        lea              rcx, [rip + .Lx473_3]
                        lea              rdx, [rip + .Lx473_4]
                                                                                        jmp   rax
.Lx473_3:
                        mov              qword ptr [rbp + 552], rsp
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx473_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx473_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_1:
                        call             rt_faildescr@PLT
.Lx473_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n363_call_proc_staged_β
                                                                                        jmp   n371_suspend_α
n369_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   qword ptr [rsp]
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "$dcg_trans_rule/2"
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n372_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n371_suspend_α:
                        lea              rax, [rip + n371_suspend_β]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F3_γ
n371_suspend_β:
                                                                                        jmp   n369_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        lea              r8, [rbp + 160]
.Lx478_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_41
                        cmp              esi, 1
                                                                                        jne   .Lx478_55
                        mov              r8, rax
                                                                                        jmp   .Lx478_40
.Lx478_55:
                        cmp              esi, 2
                                                                                        jne   .Lx478_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_41
                        mov              r8, rax
                                                                                        jmp   .Lx478_40
.Lx478_56:
                        cmp              eax, 13
                                                                                        jne   .Lx478_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_41
                        cmp              rax, r8
                                                                                        je    .Lx478_41
                        mov              r8, rax
                                                                                        jmp   .Lx478_40
.Lx478_41:
                        lea              r9, [rbp + 176]
.Lx478_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_43
                        cmp              esi, 1
                                                                                        jne   .Lx478_57
                        mov              r9, rax
                                                                                        jmp   .Lx478_42
.Lx478_57:
                        cmp              esi, 2
                                                                                        jne   .Lx478_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_43
                        mov              r9, rax
                                                                                        jmp   .Lx478_42
.Lx478_58:
                        cmp              eax, 13
                                                                                        jne   .Lx478_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_43
                        cmp              rax, r9
                                                                                        je    .Lx478_43
                        mov              r9, rax
                                                                                        jmp   .Lx478_42
.Lx478_43:
                        cmp              r8, r9
                                                                                        je    .Lx478_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_44
                        cmp              eax, 99
                                                                                        je    .Lx478_44
                        cmp              eax, 13
                                                                                        jne   .Lx478_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx478_44
                                                                                        jmp   .Lx478_45
.Lx478_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_53
                        cmp              eax, 99
                                                                                        je    .Lx478_53
                        cmp              eax, 13
                                                                                        jne   .Lx478_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx478_53
                                                                                        jmp   .Lx478_46
.Lx478_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx478_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx478_53
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
                                                                                        jmp   .Lx478_51
.Lx478_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_47
                        cmp              eax, 99
                                                                                        je    .Lx478_47
                        cmp              eax, 13
                                                                                        jne   .Lx478_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx478_47
                                                                                        jmp   .Lx478_48
.Lx478_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx478_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx478_53
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
                                                                                        jmp   .Lx478_51
.Lx478_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx478_49
                        cmp              edx, 14
                                                                                        je    .Lx478_53
                                                                                        jmp   .Lx478_52
.Lx478_49:
                        cmp              edx, 14
                                                                                        je    .Lx478_52
                        cmp              ecx, 7
                                                                                        je    .Lx478_53
                        cmp              edx, 7
                                                                                        je    .Lx478_53
                        cmp              ecx, 6
                                                                                        jne   .Lx478_50
                        cmp              edx, 6
                                                                                        jne   .Lx478_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx478_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx478_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx478_51
                                                                                        jmp   .Lx478_52
.Lx478_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx478_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx478_53
.Lx478_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx478_54
.Lx478_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx478_54
.Lx478_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx478_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n352_op11_α
                                                                                        jmp   n373_suspend_α
n372_op11_β:
                                                                                        jmp   n352_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n373_suspend_α:
                        lea              rax, [rip + n373_suspend_β]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F3_γ
n373_suspend_β:
                                                                                        jmp   n352_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1824]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1896]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_ω:
                        mov              rax, [rbp + 1904]
                        lea              rsp, [rbp + 1920]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_expand_term$2F2_α
proc_expand_term$2F2_α:
                        .global          proc_expand_term$2F2_α
                        .global          proc_expand_term$2F2_β
                        .global          proc_expand_term$2F2_γ
                        .global          proc_expand_term$2F2_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 496
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_expand_term$2F2_α_body:
                        lea              rax, [rip + n496_suspend_β]
                        mov              qword ptr [rbp + 496], rax
#-----------------------------------------------------------------------------------------------------------------------
n481_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx497_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx497_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx497_101
.Lx497_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx497_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_expand_term$2F2_ω
                                                                                        jmp   n482_var_ref_α
n481_op11_β:
                                                                                        jmp   proc_expand_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n483_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n484_op11_α:
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
.Lx502_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_41
                        cmp              esi, 1
                                                                                        jne   .Lx502_55
                        mov              r8, rax
                                                                                        jmp   .Lx502_40
.Lx502_55:
                        cmp              esi, 2
                                                                                        jne   .Lx502_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_41
                        mov              r8, rax
                                                                                        jmp   .Lx502_40
.Lx502_56:
                        cmp              eax, 13
                                                                                        jne   .Lx502_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_41
                        cmp              rax, r8
                                                                                        je    .Lx502_41
                        mov              r8, rax
                                                                                        jmp   .Lx502_40
.Lx502_41:
                        lea              r9, [rbp + 448]
.Lx502_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_43
                        cmp              esi, 1
                                                                                        jne   .Lx502_57
                        mov              r9, rax
                                                                                        jmp   .Lx502_42
.Lx502_57:
                        cmp              esi, 2
                                                                                        jne   .Lx502_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_43
                        mov              r9, rax
                                                                                        jmp   .Lx502_42
.Lx502_58:
                        cmp              eax, 13
                                                                                        jne   .Lx502_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_43
                        cmp              rax, r9
                                                                                        je    .Lx502_43
                        mov              r9, rax
                                                                                        jmp   .Lx502_42
.Lx502_43:
                        cmp              r8, r9
                                                                                        je    .Lx502_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_44
                        cmp              eax, 99
                                                                                        je    .Lx502_44
                        cmp              eax, 13
                                                                                        jne   .Lx502_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx502_44
                                                                                        jmp   .Lx502_45
.Lx502_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_53
                        cmp              eax, 99
                                                                                        je    .Lx502_53
                        cmp              eax, 13
                                                                                        jne   .Lx502_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx502_53
                                                                                        jmp   .Lx502_46
.Lx502_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx502_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx502_53
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
                                                                                        jmp   .Lx502_51
.Lx502_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_47
                        cmp              eax, 99
                                                                                        je    .Lx502_47
                        cmp              eax, 13
                                                                                        jne   .Lx502_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx502_47
                                                                                        jmp   .Lx502_48
.Lx502_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx502_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx502_53
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
                                                                                        jmp   .Lx502_51
.Lx502_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx502_49
                        cmp              edx, 14
                                                                                        je    .Lx502_53
                                                                                        jmp   .Lx502_52
.Lx502_49:
                        cmp              edx, 14
                                                                                        je    .Lx502_52
                        cmp              ecx, 7
                                                                                        je    .Lx502_53
                        cmp              edx, 7
                                                                                        je    .Lx502_53
                        cmp              ecx, 6
                                                                                        jne   .Lx502_50
                        cmp              edx, 6
                                                                                        jne   .Lx502_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx502_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx502_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx502_51
                                                                                        jmp   .Lx502_52
.Lx502_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx502_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx502_53
.Lx502_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx502_54
.Lx502_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx502_54
.Lx502_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx502_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n485_var_ref_α
n484_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_op11_α:
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
                                                                                        je    proc_expand_term$2F2_ω
                                                                                        jmp   proc_expand_term$2F2_ω
n486_op11_β:
                                                                                        jmp   proc_expand_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n488_op11_α:
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
                        lea              r9, [rbp + 368]
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n489_var_ref_α
n488_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n490_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n491_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n492_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n492_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx516_21
.Lx516_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx516_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx516_23
.Lx516_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx516_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_24
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx516_25
.Lx516_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx516_25:
                        mov              edi, 3
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx516_1
                        lea              rcx, [rip + .Lx516_3]
                        lea              rdx, [rip + .Lx516_4]
                                                                                        jmp   rax
.Lx516_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx516_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx516_2
.Lx516_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx516_2
.Lx516_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx516_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx516_2
.Lx516_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx516_2
.Lx516_1:
                        call             rt_faildescr@PLT
.Lx516_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n493_var_ref_α
n492_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "$expand_term1/3"
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n494_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n495_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n495_op11_α:
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
.Lx521_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx521_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx521_41
                        cmp              esi, 1
                                                                                        jne   .Lx521_55
                        mov              r8, rax
                                                                                        jmp   .Lx521_40
.Lx521_55:
                        cmp              esi, 2
                                                                                        jne   .Lx521_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx521_41
                        mov              r8, rax
                                                                                        jmp   .Lx521_40
.Lx521_56:
                        cmp              eax, 13
                                                                                        jne   .Lx521_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx521_41
                        cmp              rax, r8
                                                                                        je    .Lx521_41
                        mov              r8, rax
                                                                                        jmp   .Lx521_40
.Lx521_41:
                        lea              r9, [rbp + 144]
.Lx521_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx521_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx521_43
                        cmp              esi, 1
                                                                                        jne   .Lx521_57
                        mov              r9, rax
                                                                                        jmp   .Lx521_42
.Lx521_57:
                        cmp              esi, 2
                                                                                        jne   .Lx521_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx521_43
                        mov              r9, rax
                                                                                        jmp   .Lx521_42
.Lx521_58:
                        cmp              eax, 13
                                                                                        jne   .Lx521_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx521_43
                        cmp              rax, r9
                                                                                        je    .Lx521_43
                        mov              r9, rax
                                                                                        jmp   .Lx521_42
.Lx521_43:
                        cmp              r8, r9
                                                                                        je    .Lx521_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx521_44
                        cmp              eax, 99
                                                                                        je    .Lx521_44
                        cmp              eax, 13
                                                                                        jne   .Lx521_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx521_44
                                                                                        jmp   .Lx521_45
.Lx521_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx521_53
                        cmp              eax, 99
                                                                                        je    .Lx521_53
                        cmp              eax, 13
                                                                                        jne   .Lx521_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx521_53
                                                                                        jmp   .Lx521_46
.Lx521_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx521_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx521_53
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
                                                                                        jmp   .Lx521_51
.Lx521_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx521_47
                        cmp              eax, 99
                                                                                        je    .Lx521_47
                        cmp              eax, 13
                                                                                        jne   .Lx521_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx521_47
                                                                                        jmp   .Lx521_48
.Lx521_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx521_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx521_53
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
                                                                                        jmp   .Lx521_51
.Lx521_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx521_49
                        cmp              edx, 14
                                                                                        je    .Lx521_53
                                                                                        jmp   .Lx521_52
.Lx521_49:
                        cmp              edx, 14
                                                                                        je    .Lx521_52
                        cmp              ecx, 7
                                                                                        je    .Lx521_53
                        cmp              edx, 7
                                                                                        je    .Lx521_53
                        cmp              ecx, 6
                                                                                        jne   .Lx521_50
                        cmp              edx, 6
                                                                                        jne   .Lx521_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx521_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx521_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx521_51
                                                                                        jmp   .Lx521_52
.Lx521_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx521_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx521_53
.Lx521_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx521_54
.Lx521_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx521_54
.Lx521_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx521_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n492_call_proc_staged_β
                                                                                        jmp   n496_suspend_α
n495_op11_β:
                                                                                        jmp   n492_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n496_suspend_α:
                        lea              rax, [rip + n496_suspend_β]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_expand_term$2F2_γ
n496_suspend_β:
                                                                                        jmp   n492_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_β:
                                                                                        jmp   qword ptr [rbp + 496]
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_expand_term$2F2_res]
                        push             rax
                        mov              rax, [rbp + 584]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_phrase$2F3_α
proc_phrase$2F3_α:
                        .global          proc_phrase$2F3_α
                        .global          proc_phrase$2F3_β
                        .global          proc_phrase$2F3_γ
                        .global          proc_phrase$2F3_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_phrase$2F3_α_body:
                        lea              rax, [rip + n540_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n524_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx541_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx541_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx541_101
.Lx541_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx541_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_phrase$2F3_ω
                                                                                        jmp   n525_var_ref_α
n524_op11_β:
                                                                                        jmp   proc_phrase$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n526_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n527_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
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
.Lx546_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              esi, 1
                                                                                        jne   .Lx546_55
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_55:
                        cmp              esi, 2
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_56:
                        cmp              eax, 13
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              rax, r8
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_41:
                        lea              r9, [rbp + 496]
.Lx546_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              esi, 1
                                                                                        jne   .Lx546_57
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_57:
                        cmp              esi, 2
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_58:
                        cmp              eax, 13
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              rax, r9
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_43:
                        cmp              r8, r9
                                                                                        je    .Lx546_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_44
                        cmp              eax, 99
                                                                                        je    .Lx546_44
                        cmp              eax, 13
                                                                                        jne   .Lx546_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx546_44
                                                                                        jmp   .Lx546_45
.Lx546_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_53
                        cmp              eax, 99
                                                                                        je    .Lx546_53
                        cmp              eax, 13
                                                                                        jne   .Lx546_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_46
.Lx546_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
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
                                                                                        jmp   .Lx546_51
.Lx546_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_47
                        cmp              eax, 99
                                                                                        je    .Lx546_47
                        cmp              eax, 13
                                                                                        jne   .Lx546_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_47
                                                                                        jmp   .Lx546_48
.Lx546_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
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
                                                                                        jmp   .Lx546_51
.Lx546_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx546_49
                        cmp              edx, 14
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_52
.Lx546_49:
                        cmp              edx, 14
                                                                                        je    .Lx546_52
                        cmp              ecx, 7
                                                                                        je    .Lx546_53
                        cmp              edx, 7
                                                                                        je    .Lx546_53
                        cmp              ecx, 6
                                                                                        jne   .Lx546_50
                        cmp              edx, 6
                                                                                        jne   .Lx546_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx546_51
                                                                                        jmp   .Lx546_52
.Lx546_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
.Lx546_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx546_54
.Lx546_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx546_54
.Lx546_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx546_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n529_op11_α
                                                                                        jmp   n528_var_ref_α
n527_op11_β:
                                                                                        jmp   n529_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n530_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n529_op11_α:
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
                                                                                        je    proc_phrase$2F3_ω
                                                                                        jmp   proc_phrase$2F3_ω
n529_op11_β:
                                                                                        jmp   proc_phrase$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n531_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n531_op11_α:
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
.Lx552_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx552_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx552_41
                        cmp              esi, 1
                                                                                        jne   .Lx552_55
                        mov              r8, rax
                                                                                        jmp   .Lx552_40
.Lx552_55:
                        cmp              esi, 2
                                                                                        jne   .Lx552_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx552_41
                        mov              r8, rax
                                                                                        jmp   .Lx552_40
.Lx552_56:
                        cmp              eax, 13
                                                                                        jne   .Lx552_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx552_41
                        cmp              rax, r8
                                                                                        je    .Lx552_41
                        mov              r8, rax
                                                                                        jmp   .Lx552_40
.Lx552_41:
                        lea              r9, [rbp + 416]
.Lx552_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx552_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx552_43
                        cmp              esi, 1
                                                                                        jne   .Lx552_57
                        mov              r9, rax
                                                                                        jmp   .Lx552_42
.Lx552_57:
                        cmp              esi, 2
                                                                                        jne   .Lx552_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx552_43
                        mov              r9, rax
                                                                                        jmp   .Lx552_42
.Lx552_58:
                        cmp              eax, 13
                                                                                        jne   .Lx552_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx552_43
                        cmp              rax, r9
                                                                                        je    .Lx552_43
                        mov              r9, rax
                                                                                        jmp   .Lx552_42
.Lx552_43:
                        cmp              r8, r9
                                                                                        je    .Lx552_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx552_44
                        cmp              eax, 99
                                                                                        je    .Lx552_44
                        cmp              eax, 13
                                                                                        jne   .Lx552_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx552_44
                                                                                        jmp   .Lx552_45
.Lx552_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx552_53
                        cmp              eax, 99
                                                                                        je    .Lx552_53
                        cmp              eax, 13
                                                                                        jne   .Lx552_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx552_53
                                                                                        jmp   .Lx552_46
.Lx552_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx552_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx552_53
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
                                                                                        jmp   .Lx552_51
.Lx552_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx552_47
                        cmp              eax, 99
                                                                                        je    .Lx552_47
                        cmp              eax, 13
                                                                                        jne   .Lx552_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx552_47
                                                                                        jmp   .Lx552_48
.Lx552_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx552_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx552_53
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
                                                                                        jmp   .Lx552_51
.Lx552_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx552_49
                        cmp              edx, 14
                                                                                        je    .Lx552_53
                                                                                        jmp   .Lx552_52
.Lx552_49:
                        cmp              edx, 14
                                                                                        je    .Lx552_52
                        cmp              ecx, 7
                                                                                        je    .Lx552_53
                        cmp              edx, 7
                                                                                        je    .Lx552_53
                        cmp              ecx, 6
                                                                                        jne   .Lx552_50
                        cmp              edx, 6
                                                                                        jne   .Lx552_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx552_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx552_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx552_51
                                                                                        jmp   .Lx552_52
.Lx552_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx552_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx552_53
.Lx552_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx552_54
.Lx552_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx552_54
.Lx552_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx552_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n529_op11_α
                                                                                        jmp   n532_var_ref_α
n531_op11_β:
                                                                                        jmp   n529_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n533_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n534_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n534_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx557_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx557_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_41
                        cmp              esi, 1
                                                                                        jne   .Lx557_55
                        mov              r8, rax
                                                                                        jmp   .Lx557_40
.Lx557_55:
                        cmp              esi, 2
                                                                                        jne   .Lx557_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx557_41
                        mov              r8, rax
                                                                                        jmp   .Lx557_40
.Lx557_56:
                        cmp              eax, 13
                                                                                        jne   .Lx557_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_41
                        cmp              rax, r8
                                                                                        je    .Lx557_41
                        mov              r8, rax
                                                                                        jmp   .Lx557_40
.Lx557_41:
                        lea              r9, [rbp + 336]
.Lx557_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx557_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_43
                        cmp              esi, 1
                                                                                        jne   .Lx557_57
                        mov              r9, rax
                                                                                        jmp   .Lx557_42
.Lx557_57:
                        cmp              esi, 2
                                                                                        jne   .Lx557_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx557_43
                        mov              r9, rax
                                                                                        jmp   .Lx557_42
.Lx557_58:
                        cmp              eax, 13
                                                                                        jne   .Lx557_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_43
                        cmp              rax, r9
                                                                                        je    .Lx557_43
                        mov              r9, rax
                                                                                        jmp   .Lx557_42
.Lx557_43:
                        cmp              r8, r9
                                                                                        je    .Lx557_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx557_44
                        cmp              eax, 99
                                                                                        je    .Lx557_44
                        cmp              eax, 13
                                                                                        jne   .Lx557_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx557_44
                                                                                        jmp   .Lx557_45
.Lx557_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx557_53
                        cmp              eax, 99
                                                                                        je    .Lx557_53
                        cmp              eax, 13
                                                                                        jne   .Lx557_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx557_53
                                                                                        jmp   .Lx557_46
.Lx557_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx557_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx557_53
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
                                                                                        jmp   .Lx557_51
.Lx557_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx557_47
                        cmp              eax, 99
                                                                                        je    .Lx557_47
                        cmp              eax, 13
                                                                                        jne   .Lx557_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx557_47
                                                                                        jmp   .Lx557_48
.Lx557_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx557_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx557_53
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
                                                                                        jmp   .Lx557_51
.Lx557_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx557_49
                        cmp              edx, 14
                                                                                        je    .Lx557_53
                                                                                        jmp   .Lx557_52
.Lx557_49:
                        cmp              edx, 14
                                                                                        je    .Lx557_52
                        cmp              ecx, 7
                                                                                        je    .Lx557_53
                        cmp              edx, 7
                                                                                        je    .Lx557_53
                        cmp              ecx, 6
                                                                                        jne   .Lx557_50
                        cmp              edx, 6
                                                                                        jne   .Lx557_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx557_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx557_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx557_51
                                                                                        jmp   .Lx557_52
.Lx557_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx557_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx557_53
.Lx557_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx557_54
.Lx557_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx557_54
.Lx557_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx557_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n529_op11_α
                                                                                        jmp   n535_var_ref_α
n534_op11_β:
                                                                                        jmp   n529_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n536_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n538_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n539_call_proc_staged_α
.Lx564_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n539_call_proc_staged_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx566_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx566_21
.Lx566_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx566_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx566_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx566_23
.Lx566_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx566_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx566_24
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx566_25
.Lx566_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx566_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx566_26
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx566_27
.Lx566_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx566_27:
                        mov              edi, 0
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx566_1
                        lea              rcx, [rip + .Lx566_3]
                        lea              rdx, [rip + .Lx566_4]
                                                                                        jmp   rax
.Lx566_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx566_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx566_2
.Lx566_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx566_2
.Lx566_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx566_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx566_2
.Lx566_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx566_2
.Lx566_1:
                        call             rt_faildescr@PLT
.Lx566_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n529_op11_α
                                                                                        jmp   n540_suspend_α
n539_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          "$phrase/4"
#-----------------------------------------------------------------------------------------------------------------------
n540_suspend_α:
                        lea              rax, [rip + n540_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_phrase$2F3_γ
n540_suspend_β:
                                                                                        jmp   n539_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F3_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_phrase$2F3_res]
                        push             rax
                        mov              rax, [rbp + 616]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F3_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_phrase$2F2_α
proc_phrase$2F2_α:
                        .global          proc_phrase$2F2_α
                        .global          proc_phrase$2F2_β
                        .global          proc_phrase$2F2_γ
                        .global          proc_phrase$2F2_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_phrase$2F2_α_body:
                        lea              rax, [rip + n582_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n569_op11_α:
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
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx583_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_phrase$2F2_ω
                                                                                        jmp   n570_var_ref_α
n569_op11_β:
                                                                                        jmp   proc_phrase$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n571_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n572_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
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
                        lea              r9, [rbp + 400]
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n574_op11_α
                                                                                        jmp   n573_var_ref_α
n572_op11_β:
                                                                                        jmp   n574_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n575_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n574_op11_α:
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
                                                                                        je    proc_phrase$2F2_ω
                                                                                        jmp   proc_phrase$2F2_ω
n574_op11_β:
                                                                                        jmp   proc_phrase$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n576_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n576_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
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
                        lea              r9, [rbp + 320]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n574_op11_α
                                                                                        jmp   n577_var_ref_α
n576_op11_β:
                                                                                        jmp   n574_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n578_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n580_lit_integer_α
.Lx599_0:
                        .quad            .Lx599_0_s
.Lx599_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n581_call_proc_staged_α
.Lx600_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n581_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx602_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx602_21
.Lx602_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx602_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx602_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx602_23
.Lx602_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx602_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx602_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx602_25
.Lx602_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx602_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx602_26
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx602_27
.Lx602_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx602_27:
                        mov              edi, 0
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx602_1
                        lea              rcx, [rip + .Lx602_3]
                        lea              rdx, [rip + .Lx602_4]
                                                                                        jmp   rax
.Lx602_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx602_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx602_2
.Lx602_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx602_2
.Lx602_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx602_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx602_2
.Lx602_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx602_2
.Lx602_1:
                        call             rt_faildescr@PLT
.Lx602_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n574_op11_α
                                                                                        jmp   n582_suspend_α
n581_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "$phrase/4"
#-----------------------------------------------------------------------------------------------------------------------
n582_suspend_α:
                        lea              rax, [rip + n582_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_phrase$2F2_γ
n582_suspend_β:
                                                                                        jmp   n581_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F2_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_phrase$2F2_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_phrase$2F2_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n612_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n605_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx613_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx613_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx613_101
.Lx613_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx613_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n606_lit_string_α
n605_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n607_lit_integer_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "phrase"
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n608_lit_string_α
.Lx615_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n609_op11_α
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n609_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n611_op11_α
                                                                                        jmp   n610_call_proc_staged_α
n609_op11_β:
                                                                                        jmp   n611_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx619_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx619_21
.Lx619_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx619_21:
                        mov              rdi, qword ptr [rip + .Lx619_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx619_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx619_3]
                        lea              rdx, [rip + .Lx619_4]
                                                                                        jmp   rax
.Lx619_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx619_2
.Lx619_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx619_2
.Lx619_1:
                        call             rt_faildescr@PLT
.Lx619_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n611_op11_α
                                                                                        jmp   n612_suspend_α
n610_call_proc_staged_β:
                                                                                        jmp   n611_op11_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n611_op11_α:
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
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n611_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n612_suspend_α:
                        lea              rax, [rip + n612_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n612_suspend_β:
                                                                                        jmp   n610_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$use_expand$2F0_α
proc_$use_expand$2F0_α:
                        .global          proc_$use_expand$2F0_α
                        .global          proc_$use_expand$2F0_β
                        .global          proc_$use_expand$2F0_γ
                        .global          proc_$use_expand$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_$use_expand$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n623_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx627_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx627_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx627_101
.Lx627_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx627_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$use_expand$2F0_ω
                                                                                        jmp   n624_move_label_α
n623_op11_β:
                                                                                        jmp   proc_$use_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n624_move_label_α:
                        lea              rax, [rip + n625_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_$use_expand$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n625_op11_α:
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
                                                                                        je    proc_$use_expand$2F0_ω
                                                                                        jmp   proc_$use_expand$2F0_ω
n625_op11_β:
                                                                                        jmp   proc_$use_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n626_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n626_disjunction_β:
                                                                                        jmp   proc_$use_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_expand$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_expand$2F0_β:
                                                                                        jmp   n626_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_expand$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_expand$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_expand$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx633_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx633_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$use_expand$2F0_α_body
.Lx633_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx633_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n642_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n634_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx643_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx643_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx643_101
.Lx643_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx643_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n635_lit_string_α
n634_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n636_lit_integer_α
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "phrase"
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n637_lit_string_α
.Lx645_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n638_lit_string_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n639_op11_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n639_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n641_op11_α
                                                                                        jmp   n640_call_proc_staged_α
n639_op11_β:
                                                                                        jmp   n641_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n640_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx650_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx650_21
.Lx650_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx650_21:
                        mov              rdi, qword ptr [rip + .Lx650_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx650_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx650_3]
                        lea              rdx, [rip + .Lx650_4]
                                                                                        jmp   rax
.Lx650_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx650_2
.Lx650_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx650_2
.Lx650_1:
                        call             rt_faildescr@PLT
.Lx650_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n641_op11_α
                                                                                        jmp   n642_suspend_α
n640_call_proc_staged_β:
                                                                                        jmp   n641_op11_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n641_op11_α:
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
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n641_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n642_suspend_α:
                        lea              rax, [rip + n642_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n642_suspend_β:
                                                                                        jmp   n640_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$phrase/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$phrase$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1264
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$dcg_trans_rule/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$dcg_trans_rule$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$dcg_trans_body/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_$dcg_trans_body$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 784
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$expand_term1/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$expand_term1$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "current_predicate/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_current_predicate$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "$call_term_expansion/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_$call_term_expansion$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "$disj0/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_$disj0$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1888
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "expand_term/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_expand_term$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "phrase/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_phrase$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "phrase/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_phrase$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "$use_expand/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_$use_expand$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_$use_expand$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
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
                        sub              rsp, 216
                        mov              rdi, rsp
                        mov              ecx, 216
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n655_lit_integer_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "phrase"
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_integer_α:
                        mov              qword ptr [rsp + 48], 6
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n656_lit_string_α
.Lx661_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n657_lit_string_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:
                        mov              qword ptr [rsp + 80], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n658_op11_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n658_op11_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n659_call_proc_staged_α
n658_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n659_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx666_20
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx666_21
.Lx666_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        call             rt_arg_stage@PLT
.Lx666_21:
                        mov              rdi, qword ptr [rip + .Lx666_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx666_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx666_3]
                        lea              rdx, [rip + .Lx666_4]
                                                                                        jmp   rax
.Lx666_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx666_2
.Lx666_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx666_2
.Lx666_1:
                        call             rt_faildescr@PLT
.Lx666_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n659_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx666_0:
                        .quad            .Lx666_0_s
.Lx666_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 216
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 216
                        ret
                        .section         .note.GNU-stack,"",@progbits
