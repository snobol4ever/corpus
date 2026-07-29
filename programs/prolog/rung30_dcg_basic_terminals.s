                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_greeting$2F2_α
proc_greeting$2F2_α:
                        .global          proc_greeting$2F2_α
                        .global          proc_greeting$2F2_β
                        .global          proc_greeting$2F2_γ
                        .global          proc_greeting$2F2_ω
                        sub              rsp, 768
                        mov              [rsp + 744], rcx
                        mov              [rsp + 752], rdx
                        mov              [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 688
                        mov              edx, 736
                        call             rt_jmp_frame_lexprep2@PLT
proc_greeting$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx22_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx22_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx22_101
.Lx22_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx22_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_greeting$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_greeting$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx27_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx27_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx27_41
                        cmp              rax, r8
                                                                                        je    .Lx27_41
                        mov              r8, rax
                                                                                        jmp   .Lx27_40
.Lx27_41:
                        lea              r9, [rbp + 640]
.Lx27_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx27_44
                        cmp              eax, 13
                                                                                        jne   .Lx27_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx27_44
                                                                                        jmp   .Lx27_45
.Lx27_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx27_53
                        cmp              eax, 99
                                                                                        je    .Lx27_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx27_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx27_49
                        cmp              edx, 14
                                                                                        je    .Lx27_53
                                                                                        jmp   .Lx27_52
.Lx27_49:
                        cmp              edx, 14
                                                                                        je    .Lx27_52
                        cmp              ecx, 7
                                                                                        je    .Lx27_53
                        cmp              edx, 7
                                                                                        je    .Lx27_53
                        cmp              ecx, 6
                                                                                        jne   .Lx27_50
                        cmp              edx, 6
                                                                                        jne   .Lx27_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx27_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx27_54
.Lx27_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx27_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
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
                                                                                        je    proc_greeting$2F2_ω
                                                                                        jmp   proc_greeting$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_greeting$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        lea              r8, [rbp + 544]
.Lx33_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx33_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_41
                        cmp              esi, 1
                                                                                        jne   .Lx33_55
                        mov              r8, rax
                                                                                        jmp   .Lx33_40
.Lx33_55:
                        cmp              esi, 2
                                                                                        jne   .Lx33_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx33_41
                        mov              r8, rax
                                                                                        jmp   .Lx33_40
.Lx33_56:
                        cmp              eax, 13
                                                                                        jne   .Lx33_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_41
                        cmp              rax, r8
                                                                                        je    .Lx33_41
                        mov              r8, rax
                                                                                        jmp   .Lx33_40
.Lx33_41:
                        lea              r9, [rbp + 560]
.Lx33_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx33_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_43
                        cmp              esi, 1
                                                                                        jne   .Lx33_57
                        mov              r9, rax
                                                                                        jmp   .Lx33_42
.Lx33_57:
                        cmp              esi, 2
                                                                                        jne   .Lx33_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx33_43
                        mov              r9, rax
                                                                                        jmp   .Lx33_42
.Lx33_58:
                        cmp              eax, 13
                                                                                        jne   .Lx33_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx33_43
                        cmp              rax, r9
                                                                                        je    .Lx33_43
                        mov              r9, rax
                                                                                        jmp   .Lx33_42
.Lx33_43:
                        cmp              r8, r9
                                                                                        je    .Lx33_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx33_44
                        cmp              eax, 99
                                                                                        je    .Lx33_44
                        cmp              eax, 13
                                                                                        jne   .Lx33_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx33_44
                                                                                        jmp   .Lx33_45
.Lx33_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx33_53
                        cmp              eax, 99
                                                                                        je    .Lx33_53
                        cmp              eax, 13
                                                                                        jne   .Lx33_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx33_53
                                                                                        jmp   .Lx33_46
.Lx33_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx33_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx33_53
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
                                                                                        jmp   .Lx33_51
.Lx33_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx33_47
                        cmp              eax, 99
                                                                                        je    .Lx33_47
                        cmp              eax, 13
                                                                                        jne   .Lx33_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx33_47
                                                                                        jmp   .Lx33_48
.Lx33_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx33_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx33_53
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
                                                                                        jmp   .Lx33_51
.Lx33_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx33_49
                        cmp              edx, 14
                                                                                        je    .Lx33_53
                                                                                        jmp   .Lx33_52
.Lx33_49:
                        cmp              edx, 14
                                                                                        je    .Lx33_52
                        cmp              ecx, 7
                                                                                        je    .Lx33_53
                        cmp              edx, 7
                                                                                        je    .Lx33_53
                        cmp              ecx, 6
                                                                                        jne   .Lx33_50
                        cmp              edx, 6
                                                                                        jne   .Lx33_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx33_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx33_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx33_51
                                                                                        jmp   .Lx33_52
.Lx33_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx33_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx33_53
.Lx33_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx33_54
.Lx33_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx33_54
.Lx33_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx33_54:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_ref_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 720]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n10_lit_string_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n11_var_ref_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n13_op11_α
n12_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx41_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx41_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        cmp              esi, 1
                                                                                        jne   .Lx41_55
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_55:
                        cmp              esi, 2
                                                                                        jne   .Lx41_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_56:
                        cmp              eax, 13
                                                                                        jne   .Lx41_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        cmp              rax, r8
                                                                                        je    .Lx41_41
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_41:
                        lea              r9, [rbp + 368]
.Lx41_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx41_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        cmp              esi, 1
                                                                                        jne   .Lx41_57
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_57:
                        cmp              esi, 2
                                                                                        jne   .Lx41_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_58:
                        cmp              eax, 13
                                                                                        jne   .Lx41_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        cmp              rax, r9
                                                                                        je    .Lx41_43
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_43:
                        cmp              r8, r9
                                                                                        je    .Lx41_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_44
                        cmp              eax, 99
                                                                                        je    .Lx41_44
                        cmp              eax, 13
                                                                                        jne   .Lx41_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx41_44
                                                                                        jmp   .Lx41_45
.Lx41_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_53
                        cmp              eax, 99
                                                                                        je    .Lx41_53
                        cmp              eax, 13
                                                                                        jne   .Lx41_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx41_53
                                                                                        jmp   .Lx41_46
.Lx41_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx41_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx41_53
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
                                                                                        jmp   .Lx41_51
.Lx41_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_47
                        cmp              eax, 99
                                                                                        je    .Lx41_47
                        cmp              eax, 13
                                                                                        jne   .Lx41_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx41_47
                                                                                        jmp   .Lx41_48
.Lx41_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx41_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx41_53
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
                                                                                        jmp   .Lx41_51
.Lx41_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx41_49
                        cmp              edx, 14
                                                                                        je    .Lx41_53
                                                                                        jmp   .Lx41_52
.Lx41_49:
                        cmp              edx, 14
                                                                                        je    .Lx41_52
                        cmp              ecx, 7
                                                                                        je    .Lx41_53
                        cmp              edx, 7
                                                                                        je    .Lx41_53
                        cmp              ecx, 6
                                                                                        jne   .Lx41_50
                        cmp              edx, 6
                                                                                        jne   .Lx41_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx41_51
                                                                                        jmp   .Lx41_52
.Lx41_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx41_53
.Lx41_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx41_54
.Lx41_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx41_54
.Lx41_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx41_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n14_var_ref_α
n13_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n16_lit_string_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n17_var_ref_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n19_op11_α
n18_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        lea              r8, [rbp + 160]
.Lx49_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx49_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx49_41
                        cmp              esi, 1
                                                                                        jne   .Lx49_55
                        mov              r8, rax
                                                                                        jmp   .Lx49_40
.Lx49_55:
                        cmp              esi, 2
                                                                                        jne   .Lx49_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx49_41
                        mov              r8, rax
                                                                                        jmp   .Lx49_40
.Lx49_56:
                        cmp              eax, 13
                                                                                        jne   .Lx49_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx49_41
                        cmp              rax, r8
                                                                                        je    .Lx49_41
                        mov              r8, rax
                                                                                        jmp   .Lx49_40
.Lx49_41:
                        lea              r9, [rbp + 176]
.Lx49_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx49_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx49_43
                        cmp              esi, 1
                                                                                        jne   .Lx49_57
                        mov              r9, rax
                                                                                        jmp   .Lx49_42
.Lx49_57:
                        cmp              esi, 2
                                                                                        jne   .Lx49_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx49_43
                        mov              r9, rax
                                                                                        jmp   .Lx49_42
.Lx49_58:
                        cmp              eax, 13
                                                                                        jne   .Lx49_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx49_43
                        cmp              rax, r9
                                                                                        je    .Lx49_43
                        mov              r9, rax
                                                                                        jmp   .Lx49_42
.Lx49_43:
                        cmp              r8, r9
                                                                                        je    .Lx49_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx49_44
                        cmp              eax, 99
                                                                                        je    .Lx49_44
                        cmp              eax, 13
                                                                                        jne   .Lx49_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx49_44
                                                                                        jmp   .Lx49_45
.Lx49_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx49_53
                        cmp              eax, 99
                                                                                        je    .Lx49_53
                        cmp              eax, 13
                                                                                        jne   .Lx49_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx49_53
                                                                                        jmp   .Lx49_46
.Lx49_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx49_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx49_53
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
                                                                                        jmp   .Lx49_51
.Lx49_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx49_47
                        cmp              eax, 99
                                                                                        je    .Lx49_47
                        cmp              eax, 13
                                                                                        jne   .Lx49_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx49_47
                                                                                        jmp   .Lx49_48
.Lx49_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx49_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx49_53
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
                                                                                        jmp   .Lx49_51
.Lx49_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx49_49
                        cmp              edx, 14
                                                                                        je    .Lx49_53
                                                                                        jmp   .Lx49_52
.Lx49_49:
                        cmp              edx, 14
                                                                                        je    .Lx49_52
                        cmp              ecx, 7
                                                                                        je    .Lx49_53
                        cmp              edx, 7
                                                                                        je    .Lx49_53
                        cmp              ecx, 6
                                                                                        jne   .Lx49_50
                        cmp              edx, 6
                                                                                        jne   .Lx49_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx49_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx49_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx49_51
                                                                                        jmp   .Lx49_52
.Lx49_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx49_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx49_53
.Lx49_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx49_54
.Lx49_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx49_54
.Lx49_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx49_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n20_move_label_α
n19_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_move_label_α:
                        lea              rax, [rip + n5_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_greeting$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n21_disjunction_β:
                                                                                        jmp   proc_greeting$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_greeting$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_greeting$2F2_β:
                                                                                        jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_greeting$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 744]
                        lea              rsp, [rbp + 768]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_greeting$2F2_ω:
                        mov              rax, [rbp + 752]
                        lea              rsp, [rbp + 768]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_greeting$2F2_dcα:
                        pop              r11
                        sub              rsp, 784
                        mov              qword ptr [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 736], r11
                        lea              rax, [rip + .Lx54_2]
                        mov              qword ptr [rbp + 744], rax
                        lea              rax, [rip + .Lx54_3]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 688
                        mov              edx, 736
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_greeting$2F2_α_body
.Lx54_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx54_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "greeting/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_greeting$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_greeting$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
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
                        sub              rsp, 1032
                        mov              rdi, rsp
                        mov              ecx, 1032
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1024], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx89_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx89_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx89_101
.Lx89_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx89_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n56_lit_string_α
n55_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n57_lit_string_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n58_lit_string_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n59_lit_string_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n60_lit_string_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n61_op11_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n62_op11_α
n61_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n63_lit_string_α
n62_op11_β:
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n65_call_proc_staged_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n66_op11_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α:
                        lea              rsi, [rbp + 912]
                        lea              rdx, [rbp + 1008]
                        call             proc_greeting$2F2_dcα
                                                                                        jmp   .Lx100_2
.Lx100_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n67_lit_string_α
n65_call_proc_staged_β:
                                                                                        jmp   n64_lit_string_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "greeting/2"
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn102:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n68_lit_string_α
n66_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n70_op11_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n71_op11_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
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
n69_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn107:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n68_lit_string_α
n70_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn109:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n72_lit_string_α
n71_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n73_lit_string_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n74_lit_string_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n75_lit_string_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n76_lit_string_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "there"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n77_op11_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n78_op11_α
n77_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
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
                                                                                        je    n80_lit_string_α
                                                                                        jmp   n79_lit_string_α
n78_op11_β:
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n81_call_proc_staged_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n82_op11_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_proc_staged_α:
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 544]
                        call             proc_greeting$2F2_dcα
                                                                                        jmp   .Lx120_2
.Lx120_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n80_lit_string_α
                                                                                        jmp   n83_lit_string_α
n81_call_proc_staged_β:
                                                                                        jmp   n80_lit_string_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "greeting/2"
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn122:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n84_lit_string_α
n82_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n85_op11_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n86_op11_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn126:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n84_lit_string_α
n85_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn128:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n69_op11_α
                                                                                        jmp   n87_move_label_α
n86_op11_β:
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_move_label_α:
                        lea              rax, [rip + n69_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n88_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n88_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n88_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1024]
                        add              rsp, 1032
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1024]
                        add              rsp, 1032
                        ret
                        .section         .note.GNU-stack,"",@progbits
