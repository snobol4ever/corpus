                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_differ$2F4_α
proc_differ$2F4_α:
                        .global          proc_differ$2F4_α
                        .global          proc_differ$2F4_β
                        .global          proc_differ$2F4_γ
                        .global          proc_differ$2F4_ω
                        sub              rsp, 2848
                        mov              [rsp + 2824], rcx
                        mov              [rsp + 2832], rdx
                        mov              [rsp + 2840], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2688
                        mov              edx, 2816
                        call             rt_jmp_frame_lexprep2@PLT
proc_differ$2F4_α_body:
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rbp + 2688], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx99_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx99_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx99_101
.Lx99_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx99_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2624]
                        lea              r8, [rbp + 2624]
.Lx104_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        cmp              esi, 1
                                                                                        jne   .Lx104_55
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_55:
                        cmp              esi, 2
                                                                                        jne   .Lx104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_56:
                        cmp              eax, 13
                                                                                        jne   .Lx104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        cmp              rax, r8
                                                                                        je    .Lx104_41
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_41:
                        lea              r9, [rbp + 2640]
.Lx104_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        cmp              esi, 1
                                                                                        jne   .Lx104_57
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_57:
                        cmp              esi, 2
                                                                                        jne   .Lx104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_58:
                        cmp              eax, 13
                                                                                        jne   .Lx104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        cmp              rax, r9
                                                                                        je    .Lx104_43
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_43:
                        cmp              r8, r9
                                                                                        je    .Lx104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_44
                        cmp              eax, 99
                                                                                        je    .Lx104_44
                        cmp              eax, 13
                                                                                        jne   .Lx104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx104_44
                                                                                        jmp   .Lx104_45
.Lx104_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_53
                        cmp              eax, 99
                                                                                        je    .Lx104_53
                        cmp              eax, 13
                                                                                        jne   .Lx104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx104_53
                                                                                        jmp   .Lx104_46
.Lx104_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx104_53
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
                                                                                        jmp   .Lx104_51
.Lx104_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_47
                        cmp              eax, 99
                                                                                        je    .Lx104_47
                        cmp              eax, 13
                                                                                        jne   .Lx104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx104_47
                                                                                        jmp   .Lx104_48
.Lx104_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx104_53
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
                                                                                        jmp   .Lx104_51
.Lx104_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx104_49
                        cmp              edx, 14
                                                                                        je    .Lx104_53
                                                                                        jmp   .Lx104_52
.Lx104_49:
                        cmp              edx, 14
                                                                                        je    .Lx104_52
                        cmp              ecx, 7
                                                                                        je    .Lx104_53
                        cmp              edx, 7
                                                                                        je    .Lx104_53
                        cmp              ecx, 6
                                                                                        jne   .Lx104_50
                        cmp              edx, 6
                                                                                        jne   .Lx104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx104_51
                                                                                        jmp   .Lx104_52
.Lx104_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx104_53
.Lx104_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx104_54
.Lx104_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx104_54
.Lx104_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx104_54:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n8_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2544]
                        lea              r8, [rbp + 2544]
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
                        lea              r9, [rbp + 2560]
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
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_var_ref_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2256]
                        lea              r8, [rbp + 2256]
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
                        lea              r9, [rbp + 2272]
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
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   n17_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2464]
                        lea              r8, [rbp + 2464]
.Lx123_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx123_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx123_41
                        cmp              esi, 1
                                                                                        jne   .Lx123_55
                        mov              r8, rax
                                                                                        jmp   .Lx123_40
.Lx123_55:
                        cmp              esi, 2
                                                                                        jne   .Lx123_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx123_41
                        mov              r8, rax
                                                                                        jmp   .Lx123_40
.Lx123_56:
                        cmp              eax, 13
                                                                                        jne   .Lx123_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx123_41
                        cmp              rax, r8
                                                                                        je    .Lx123_41
                        mov              r8, rax
                                                                                        jmp   .Lx123_40
.Lx123_41:
                        lea              r9, [rbp + 2480]
.Lx123_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx123_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx123_43
                        cmp              esi, 1
                                                                                        jne   .Lx123_57
                        mov              r9, rax
                                                                                        jmp   .Lx123_42
.Lx123_57:
                        cmp              esi, 2
                                                                                        jne   .Lx123_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx123_43
                        mov              r9, rax
                                                                                        jmp   .Lx123_42
.Lx123_58:
                        cmp              eax, 13
                                                                                        jne   .Lx123_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx123_43
                        cmp              rax, r9
                                                                                        je    .Lx123_43
                        mov              r9, rax
                                                                                        jmp   .Lx123_42
.Lx123_43:
                        cmp              r8, r9
                                                                                        je    .Lx123_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx123_44
                        cmp              eax, 99
                                                                                        je    .Lx123_44
                        cmp              eax, 13
                                                                                        jne   .Lx123_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx123_44
                                                                                        jmp   .Lx123_45
.Lx123_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx123_53
                        cmp              eax, 99
                                                                                        je    .Lx123_53
                        cmp              eax, 13
                                                                                        jne   .Lx123_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx123_53
                                                                                        jmp   .Lx123_46
.Lx123_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx123_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx123_53
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
                                                                                        jmp   .Lx123_51
.Lx123_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx123_47
                        cmp              eax, 99
                                                                                        je    .Lx123_47
                        cmp              eax, 13
                                                                                        jne   .Lx123_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx123_47
                                                                                        jmp   .Lx123_48
.Lx123_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx123_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx123_53
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
                                                                                        jmp   .Lx123_51
.Lx123_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx123_49
                        cmp              edx, 14
                                                                                        je    .Lx123_53
                                                                                        jmp   .Lx123_52
.Lx123_49:
                        cmp              edx, 14
                                                                                        je    .Lx123_52
                        cmp              ecx, 7
                                                                                        je    .Lx123_53
                        cmp              edx, 7
                                                                                        je    .Lx123_53
                        cmp              ecx, 6
                                                                                        jne   .Lx123_50
                        cmp              edx, 6
                                                                                        jne   .Lx123_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx123_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx123_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx123_51
                                                                                        jmp   .Lx123_52
.Lx123_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx123_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx123_53
.Lx123_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx123_54
.Lx123_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx123_54
.Lx123_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx123_54:
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n18_var_ref_α
n15_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2176]
                        lea              r8, [rbp + 2176]
.Lx130_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx130_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx130_41
                        cmp              esi, 1
                                                                                        jne   .Lx130_55
                        mov              r8, rax
                                                                                        jmp   .Lx130_40
.Lx130_55:
                        cmp              esi, 2
                                                                                        jne   .Lx130_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx130_41
                        mov              r8, rax
                                                                                        jmp   .Lx130_40
.Lx130_56:
                        cmp              eax, 13
                                                                                        jne   .Lx130_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx130_41
                        cmp              rax, r8
                                                                                        je    .Lx130_41
                        mov              r8, rax
                                                                                        jmp   .Lx130_40
.Lx130_41:
                        lea              r9, [rbp + 2192]
.Lx130_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx130_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx130_43
                        cmp              esi, 1
                                                                                        jne   .Lx130_57
                        mov              r9, rax
                                                                                        jmp   .Lx130_42
.Lx130_57:
                        cmp              esi, 2
                                                                                        jne   .Lx130_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx130_43
                        mov              r9, rax
                                                                                        jmp   .Lx130_42
.Lx130_58:
                        cmp              eax, 13
                                                                                        jne   .Lx130_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx130_43
                        cmp              rax, r9
                                                                                        je    .Lx130_43
                        mov              r9, rax
                                                                                        jmp   .Lx130_42
.Lx130_43:
                        cmp              r8, r9
                                                                                        je    .Lx130_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx130_44
                        cmp              eax, 99
                                                                                        je    .Lx130_44
                        cmp              eax, 13
                                                                                        jne   .Lx130_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx130_44
                                                                                        jmp   .Lx130_45
.Lx130_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx130_53
                        cmp              eax, 99
                                                                                        je    .Lx130_53
                        cmp              eax, 13
                                                                                        jne   .Lx130_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx130_53
                                                                                        jmp   .Lx130_46
.Lx130_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx130_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx130_53
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
                                                                                        jmp   .Lx130_51
.Lx130_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx130_47
                        cmp              eax, 99
                                                                                        je    .Lx130_47
                        cmp              eax, 13
                                                                                        jne   .Lx130_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx130_47
                                                                                        jmp   .Lx130_48
.Lx130_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx130_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx130_53
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
                                                                                        jmp   .Lx130_51
.Lx130_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx130_49
                        cmp              edx, 14
                                                                                        je    .Lx130_53
                                                                                        jmp   .Lx130_52
.Lx130_49:
                        cmp              edx, 14
                                                                                        je    .Lx130_52
                        cmp              ecx, 7
                                                                                        je    .Lx130_53
                        cmp              edx, 7
                                                                                        je    .Lx130_53
                        cmp              ecx, 6
                                                                                        jne   .Lx130_50
                        cmp              edx, 6
                                                                                        jne   .Lx130_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx130_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx130_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx130_51
                                                                                        jmp   .Lx130_52
.Lx130_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx130_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx130_53
.Lx130_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx130_54
.Lx130_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx130_54
.Lx130_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx130_54:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n22_var_ref_α
n19_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1888]
                        lea              r8, [rbp + 1888]
.Lx137_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              esi, 1
                                                                                        jne   .Lx137_55
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_55:
                        cmp              esi, 2
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_56:
                        cmp              eax, 13
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              rax, r8
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_41:
                        lea              r9, [rbp + 1904]
.Lx137_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              esi, 1
                                                                                        jne   .Lx137_57
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_57:
                        cmp              esi, 2
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_58:
                        cmp              eax, 13
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              rax, r9
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_43:
                        cmp              r8, r9
                                                                                        je    .Lx137_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_44
                        cmp              eax, 99
                                                                                        je    .Lx137_44
                        cmp              eax, 13
                                                                                        jne   .Lx137_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx137_44
                                                                                        jmp   .Lx137_45
.Lx137_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_53
                        cmp              eax, 99
                                                                                        je    .Lx137_53
                        cmp              eax, 13
                                                                                        jne   .Lx137_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_46
.Lx137_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
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
                                                                                        jmp   .Lx137_51
.Lx137_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_47
                        cmp              eax, 99
                                                                                        je    .Lx137_47
                        cmp              eax, 13
                                                                                        jne   .Lx137_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_47
                                                                                        jmp   .Lx137_48
.Lx137_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
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
                                                                                        jmp   .Lx137_51
.Lx137_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx137_49
                        cmp              edx, 14
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_52
.Lx137_49:
                        cmp              edx, 14
                                                                                        je    .Lx137_52
                        cmp              ecx, 7
                                                                                        je    .Lx137_53
                        cmp              edx, 7
                                                                                        je    .Lx137_53
                        cmp              ecx, 6
                                                                                        jne   .Lx137_50
                        cmp              edx, 6
                                                                                        jne   .Lx137_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx137_51
                                                                                        jmp   .Lx137_52
.Lx137_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
.Lx137_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx137_54
.Lx137_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx137_54
.Lx137_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx137_54:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n26_var_ref_α
n23_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2384]
                        lea              r8, [rbp + 2384]
.Lx138_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx138_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        cmp              esi, 1
                                                                                        jne   .Lx138_55
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_55:
                        cmp              esi, 2
                                                                                        jne   .Lx138_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_56:
                        cmp              eax, 13
                                                                                        jne   .Lx138_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        cmp              rax, r8
                                                                                        je    .Lx138_41
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_41:
                        lea              r9, [rbp + 2400]
.Lx138_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx138_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        cmp              esi, 1
                                                                                        jne   .Lx138_57
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_57:
                        cmp              esi, 2
                                                                                        jne   .Lx138_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_58:
                        cmp              eax, 13
                                                                                        jne   .Lx138_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        cmp              rax, r9
                                                                                        je    .Lx138_43
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_43:
                        cmp              r8, r9
                                                                                        je    .Lx138_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_44
                        cmp              eax, 99
                                                                                        je    .Lx138_44
                        cmp              eax, 13
                                                                                        jne   .Lx138_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx138_44
                                                                                        jmp   .Lx138_45
.Lx138_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_53
                        cmp              eax, 99
                                                                                        je    .Lx138_53
                        cmp              eax, 13
                                                                                        jne   .Lx138_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx138_53
                                                                                        jmp   .Lx138_46
.Lx138_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx138_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx138_53
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
                                                                                        jmp   .Lx138_51
.Lx138_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_47
                        cmp              eax, 99
                                                                                        je    .Lx138_47
                        cmp              eax, 13
                                                                                        jne   .Lx138_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx138_47
                                                                                        jmp   .Lx138_48
.Lx138_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx138_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx138_53
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
                                                                                        jmp   .Lx138_51
.Lx138_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx138_49
                        cmp              edx, 14
                                                                                        je    .Lx138_53
                                                                                        jmp   .Lx138_52
.Lx138_49:
                        cmp              edx, 14
                                                                                        je    .Lx138_52
                        cmp              ecx, 7
                                                                                        je    .Lx138_53
                        cmp              edx, 7
                                                                                        je    .Lx138_53
                        cmp              ecx, 6
                                                                                        jne   .Lx138_50
                        cmp              edx, 6
                                                                                        jne   .Lx138_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx138_51
                                                                                        jmp   .Lx138_52
.Lx138_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx138_53
.Lx138_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx138_54
.Lx138_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx138_54
.Lx138_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx138_54:
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n28_op19_α
n24_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   n31_var_ref_α
n27_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_op19_α:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2096]
                        lea              r8, [rbp + 2096]
.Lx145_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx145_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_41
                        cmp              esi, 1
                                                                                        jne   .Lx145_55
                        mov              r8, rax
                                                                                        jmp   .Lx145_40
.Lx145_55:
                        cmp              esi, 2
                                                                                        jne   .Lx145_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx145_41
                        mov              r8, rax
                                                                                        jmp   .Lx145_40
.Lx145_56:
                        cmp              eax, 13
                                                                                        jne   .Lx145_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_41
                        cmp              rax, r8
                                                                                        je    .Lx145_41
                        mov              r8, rax
                                                                                        jmp   .Lx145_40
.Lx145_41:
                        lea              r9, [rbp + 2112]
.Lx145_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx145_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_43
                        cmp              esi, 1
                                                                                        jne   .Lx145_57
                        mov              r9, rax
                                                                                        jmp   .Lx145_42
.Lx145_57:
                        cmp              esi, 2
                                                                                        jne   .Lx145_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx145_43
                        mov              r9, rax
                                                                                        jmp   .Lx145_42
.Lx145_58:
                        cmp              eax, 13
                                                                                        jne   .Lx145_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_43
                        cmp              rax, r9
                                                                                        je    .Lx145_43
                        mov              r9, rax
                                                                                        jmp   .Lx145_42
.Lx145_43:
                        cmp              r8, r9
                                                                                        je    .Lx145_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx145_44
                        cmp              eax, 99
                                                                                        je    .Lx145_44
                        cmp              eax, 13
                                                                                        jne   .Lx145_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx145_44
                                                                                        jmp   .Lx145_45
.Lx145_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx145_53
                        cmp              eax, 99
                                                                                        je    .Lx145_53
                        cmp              eax, 13
                                                                                        jne   .Lx145_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx145_53
                                                                                        jmp   .Lx145_46
.Lx145_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx145_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx145_53
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
                                                                                        jmp   .Lx145_51
.Lx145_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx145_47
                        cmp              eax, 99
                                                                                        je    .Lx145_47
                        cmp              eax, 13
                                                                                        jne   .Lx145_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx145_47
                                                                                        jmp   .Lx145_48
.Lx145_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx145_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx145_53
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
                                                                                        jmp   .Lx145_51
.Lx145_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx145_49
                        cmp              edx, 14
                                                                                        je    .Lx145_53
                                                                                        jmp   .Lx145_52
.Lx145_49:
                        cmp              edx, 14
                                                                                        je    .Lx145_52
                        cmp              ecx, 7
                                                                                        je    .Lx145_53
                        cmp              edx, 7
                                                                                        je    .Lx145_53
                        cmp              ecx, 6
                                                                                        jne   .Lx145_50
                        cmp              edx, 6
                                                                                        jne   .Lx145_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx145_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx145_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx145_51
                                                                                        jmp   .Lx145_52
.Lx145_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx145_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx145_53
.Lx145_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx145_54
.Lx145_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx145_54
.Lx145_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx145_54:
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n33_var_ref_α
n29_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
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
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   proc_differ$2F4_ω
n32_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1808]
                        lea              r8, [rbp + 1808]
.Lx153_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx153_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_41
                        cmp              esi, 1
                                                                                        jne   .Lx153_55
                        mov              r8, rax
                                                                                        jmp   .Lx153_40
.Lx153_55:
                        cmp              esi, 2
                                                                                        jne   .Lx153_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx153_41
                        mov              r8, rax
                                                                                        jmp   .Lx153_40
.Lx153_56:
                        cmp              eax, 13
                                                                                        jne   .Lx153_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_41
                        cmp              rax, r8
                                                                                        je    .Lx153_41
                        mov              r8, rax
                                                                                        jmp   .Lx153_40
.Lx153_41:
                        lea              r9, [rbp + 1824]
.Lx153_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx153_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_43
                        cmp              esi, 1
                                                                                        jne   .Lx153_57
                        mov              r9, rax
                                                                                        jmp   .Lx153_42
.Lx153_57:
                        cmp              esi, 2
                                                                                        jne   .Lx153_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx153_43
                        mov              r9, rax
                                                                                        jmp   .Lx153_42
.Lx153_58:
                        cmp              eax, 13
                                                                                        jne   .Lx153_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx153_43
                        cmp              rax, r9
                                                                                        je    .Lx153_43
                        mov              r9, rax
                                                                                        jmp   .Lx153_42
.Lx153_43:
                        cmp              r8, r9
                                                                                        je    .Lx153_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_44
                        cmp              eax, 99
                                                                                        je    .Lx153_44
                        cmp              eax, 13
                                                                                        jne   .Lx153_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx153_44
                                                                                        jmp   .Lx153_45
.Lx153_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_53
                        cmp              eax, 99
                                                                                        je    .Lx153_53
                        cmp              eax, 13
                                                                                        jne   .Lx153_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx153_53
                                                                                        jmp   .Lx153_46
.Lx153_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx153_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx153_53
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
                                                                                        jmp   .Lx153_51
.Lx153_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx153_47
                        cmp              eax, 99
                                                                                        je    .Lx153_47
                        cmp              eax, 13
                                                                                        jne   .Lx153_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx153_47
                                                                                        jmp   .Lx153_48
.Lx153_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx153_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx153_53
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
                                                                                        jmp   .Lx153_51
.Lx153_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx153_49
                        cmp              edx, 14
                                                                                        je    .Lx153_53
                                                                                        jmp   .Lx153_52
.Lx153_49:
                        cmp              edx, 14
                                                                                        je    .Lx153_52
                        cmp              ecx, 7
                                                                                        je    .Lx153_53
                        cmp              edx, 7
                                                                                        je    .Lx153_53
                        cmp              ecx, 6
                                                                                        jne   .Lx153_50
                        cmp              edx, 6
                                                                                        jne   .Lx153_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx153_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx153_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx153_51
                                                                                        jmp   .Lx153_52
.Lx153_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx153_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx153_53
.Lx153_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx153_54
.Lx153_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx153_54
.Lx153_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx153_54:
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n37_var_ref_α
n34_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1520]
                        lea              r8, [rbp + 1520]
.Lx160_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx160_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_41
                        cmp              esi, 1
                                                                                        jne   .Lx160_55
                        mov              r8, rax
                                                                                        jmp   .Lx160_40
.Lx160_55:
                        cmp              esi, 2
                                                                                        jne   .Lx160_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx160_41
                        mov              r8, rax
                                                                                        jmp   .Lx160_40
.Lx160_56:
                        cmp              eax, 13
                                                                                        jne   .Lx160_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_41
                        cmp              rax, r8
                                                                                        je    .Lx160_41
                        mov              r8, rax
                                                                                        jmp   .Lx160_40
.Lx160_41:
                        lea              r9, [rbp + 1536]
.Lx160_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx160_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_43
                        cmp              esi, 1
                                                                                        jne   .Lx160_57
                        mov              r9, rax
                                                                                        jmp   .Lx160_42
.Lx160_57:
                        cmp              esi, 2
                                                                                        jne   .Lx160_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx160_43
                        mov              r9, rax
                                                                                        jmp   .Lx160_42
.Lx160_58:
                        cmp              eax, 13
                                                                                        jne   .Lx160_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_43
                        cmp              rax, r9
                                                                                        je    .Lx160_43
                        mov              r9, rax
                                                                                        jmp   .Lx160_42
.Lx160_43:
                        cmp              r8, r9
                                                                                        je    .Lx160_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx160_44
                        cmp              eax, 99
                                                                                        je    .Lx160_44
                        cmp              eax, 13
                                                                                        jne   .Lx160_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx160_44
                                                                                        jmp   .Lx160_45
.Lx160_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx160_53
                        cmp              eax, 99
                                                                                        je    .Lx160_53
                        cmp              eax, 13
                                                                                        jne   .Lx160_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx160_53
                                                                                        jmp   .Lx160_46
.Lx160_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx160_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx160_53
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
                                                                                        jmp   .Lx160_51
.Lx160_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx160_47
                        cmp              eax, 99
                                                                                        je    .Lx160_47
                        cmp              eax, 13
                                                                                        jne   .Lx160_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx160_47
                                                                                        jmp   .Lx160_48
.Lx160_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx160_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx160_53
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
                                                                                        jmp   .Lx160_51
.Lx160_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx160_49
                        cmp              edx, 14
                                                                                        je    .Lx160_53
                                                                                        jmp   .Lx160_52
.Lx160_49:
                        cmp              edx, 14
                                                                                        je    .Lx160_52
                        cmp              ecx, 7
                                                                                        je    .Lx160_53
                        cmp              edx, 7
                                                                                        je    .Lx160_53
                        cmp              ecx, 6
                                                                                        jne   .Lx160_50
                        cmp              edx, 6
                                                                                        jne   .Lx160_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx160_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx160_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx160_51
                                                                                        jmp   .Lx160_52
.Lx160_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx160_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx160_53
.Lx160_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx160_54
.Lx160_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx160_54
.Lx160_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx160_54:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n42_op11_α
                                                                                        jmp   n41_var_ref_α
n38_op11_β:
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2016]
                        lea              r8, [rbp + 2016]
.Lx161_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx161_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx161_41
                        cmp              rax, r8
                                                                                        je    .Lx161_41
                        mov              r8, rax
                                                                                        jmp   .Lx161_40
.Lx161_41:
                        lea              r9, [rbp + 2032]
.Lx161_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx161_44
                        cmp              eax, 13
                                                                                        jne   .Lx161_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx161_44
                                                                                        jmp   .Lx161_45
.Lx161_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx161_53
                        cmp              eax, 99
                                                                                        je    .Lx161_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx161_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx161_49
                        cmp              edx, 14
                                                                                        je    .Lx161_53
                                                                                        jmp   .Lx161_52
.Lx161_49:
                        cmp              edx, 14
                                                                                        je    .Lx161_52
                        cmp              ecx, 7
                                                                                        je    .Lx161_53
                        cmp              edx, 7
                                                                                        je    .Lx161_53
                        cmp              ecx, 6
                                                                                        jne   .Lx161_50
                        cmp              edx, 6
                                                                                        jne   .Lx161_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx161_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx161_54
.Lx161_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx161_54:
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n43_op19_α
n39_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   n46_var_ref_α
n42_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_op19_α:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1728]
                        lea              r8, [rbp + 1728]
.Lx168_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx168_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx168_41
                        cmp              esi, 1
                                                                                        jne   .Lx168_55
                        mov              r8, rax
                                                                                        jmp   .Lx168_40
.Lx168_55:
                        cmp              esi, 2
                                                                                        jne   .Lx168_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx168_41
                        mov              r8, rax
                                                                                        jmp   .Lx168_40
.Lx168_56:
                        cmp              eax, 13
                                                                                        jne   .Lx168_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx168_41
                        cmp              rax, r8
                                                                                        je    .Lx168_41
                        mov              r8, rax
                                                                                        jmp   .Lx168_40
.Lx168_41:
                        lea              r9, [rbp + 1744]
.Lx168_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx168_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx168_43
                        cmp              esi, 1
                                                                                        jne   .Lx168_57
                        mov              r9, rax
                                                                                        jmp   .Lx168_42
.Lx168_57:
                        cmp              esi, 2
                                                                                        jne   .Lx168_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx168_43
                        mov              r9, rax
                                                                                        jmp   .Lx168_42
.Lx168_58:
                        cmp              eax, 13
                                                                                        jne   .Lx168_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx168_43
                        cmp              rax, r9
                                                                                        je    .Lx168_43
                        mov              r9, rax
                                                                                        jmp   .Lx168_42
.Lx168_43:
                        cmp              r8, r9
                                                                                        je    .Lx168_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx168_44
                        cmp              eax, 99
                                                                                        je    .Lx168_44
                        cmp              eax, 13
                                                                                        jne   .Lx168_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx168_44
                                                                                        jmp   .Lx168_45
.Lx168_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx168_53
                        cmp              eax, 99
                                                                                        je    .Lx168_53
                        cmp              eax, 13
                                                                                        jne   .Lx168_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx168_53
                                                                                        jmp   .Lx168_46
.Lx168_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx168_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx168_53
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
                                                                                        jmp   .Lx168_51
.Lx168_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx168_47
                        cmp              eax, 99
                                                                                        je    .Lx168_47
                        cmp              eax, 13
                                                                                        jne   .Lx168_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx168_47
                                                                                        jmp   .Lx168_48
.Lx168_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx168_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx168_53
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
                                                                                        jmp   .Lx168_51
.Lx168_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx168_49
                        cmp              edx, 14
                                                                                        je    .Lx168_53
                                                                                        jmp   .Lx168_52
.Lx168_49:
                        cmp              edx, 14
                                                                                        je    .Lx168_52
                        cmp              ecx, 7
                                                                                        je    .Lx168_53
                        cmp              edx, 7
                                                                                        je    .Lx168_53
                        cmp              ecx, 6
                                                                                        jne   .Lx168_50
                        cmp              edx, 6
                                                                                        jne   .Lx168_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx168_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx168_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx168_51
                                                                                        jmp   .Lx168_52
.Lx168_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx168_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx168_53
.Lx168_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx168_54
.Lx168_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx168_54
.Lx168_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx168_54:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n47_var_ref_α
n44_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1440]
                        lea              r8, [rbp + 1440]
.Lx175_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx175_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx175_41
                        cmp              esi, 1
                                                                                        jne   .Lx175_55
                        mov              r8, rax
                                                                                        jmp   .Lx175_40
.Lx175_55:
                        cmp              esi, 2
                                                                                        jne   .Lx175_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx175_41
                        mov              r8, rax
                                                                                        jmp   .Lx175_40
.Lx175_56:
                        cmp              eax, 13
                                                                                        jne   .Lx175_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx175_41
                        cmp              rax, r8
                                                                                        je    .Lx175_41
                        mov              r8, rax
                                                                                        jmp   .Lx175_40
.Lx175_41:
                        lea              r9, [rbp + 1456]
.Lx175_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx175_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx175_43
                        cmp              esi, 1
                                                                                        jne   .Lx175_57
                        mov              r9, rax
                                                                                        jmp   .Lx175_42
.Lx175_57:
                        cmp              esi, 2
                                                                                        jne   .Lx175_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx175_43
                        mov              r9, rax
                                                                                        jmp   .Lx175_42
.Lx175_58:
                        cmp              eax, 13
                                                                                        jne   .Lx175_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx175_43
                        cmp              rax, r9
                                                                                        je    .Lx175_43
                        mov              r9, rax
                                                                                        jmp   .Lx175_42
.Lx175_43:
                        cmp              r8, r9
                                                                                        je    .Lx175_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx175_44
                        cmp              eax, 99
                                                                                        je    .Lx175_44
                        cmp              eax, 13
                                                                                        jne   .Lx175_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx175_44
                                                                                        jmp   .Lx175_45
.Lx175_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx175_53
                        cmp              eax, 99
                                                                                        je    .Lx175_53
                        cmp              eax, 13
                                                                                        jne   .Lx175_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx175_53
                                                                                        jmp   .Lx175_46
.Lx175_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx175_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx175_53
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
                                                                                        jmp   .Lx175_51
.Lx175_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx175_47
                        cmp              eax, 99
                                                                                        je    .Lx175_47
                        cmp              eax, 13
                                                                                        jne   .Lx175_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx175_47
                                                                                        jmp   .Lx175_48
.Lx175_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx175_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx175_53
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
                                                                                        jmp   .Lx175_51
.Lx175_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx175_49
                        cmp              edx, 14
                                                                                        je    .Lx175_53
                                                                                        jmp   .Lx175_52
.Lx175_49:
                        cmp              edx, 14
                                                                                        je    .Lx175_52
                        cmp              ecx, 7
                                                                                        je    .Lx175_53
                        cmp              edx, 7
                                                                                        je    .Lx175_53
                        cmp              ecx, 6
                                                                                        jne   .Lx175_50
                        cmp              edx, 6
                                                                                        jne   .Lx175_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx175_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx175_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx175_51
                                                                                        jmp   .Lx175_52
.Lx175_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx175_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx175_53
.Lx175_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx175_54
.Lx175_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx175_54
.Lx175_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx175_54:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n42_op11_α
                                                                                        jmp   n51_var_ref_α
n48_op11_β:
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        lea              r8, [rbp + 1152]
.Lx182_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              esi, 1
                                                                                        jne   .Lx182_55
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_55:
                        cmp              esi, 2
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_56:
                        cmp              eax, 13
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              rax, r8
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_41:
                        lea              r9, [rbp + 1168]
.Lx182_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              esi, 1
                                                                                        jne   .Lx182_57
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_57:
                        cmp              esi, 2
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_58:
                        cmp              eax, 13
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              rax, r9
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_43:
                        cmp              r8, r9
                                                                                        je    .Lx182_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_44
                        cmp              eax, 99
                                                                                        je    .Lx182_44
                        cmp              eax, 13
                                                                                        jne   .Lx182_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx182_44
                                                                                        jmp   .Lx182_45
.Lx182_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_53
                        cmp              eax, 99
                                                                                        je    .Lx182_53
                        cmp              eax, 13
                                                                                        jne   .Lx182_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_46
.Lx182_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_47
                        cmp              eax, 99
                                                                                        je    .Lx182_47
                        cmp              eax, 13
                                                                                        jne   .Lx182_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_47
                                                                                        jmp   .Lx182_48
.Lx182_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx182_49
                        cmp              edx, 14
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_52
.Lx182_49:
                        cmp              edx, 14
                                                                                        je    .Lx182_52
                        cmp              ecx, 7
                                                                                        je    .Lx182_53
                        cmp              edx, 7
                                                                                        je    .Lx182_53
                        cmp              ecx, 6
                                                                                        jne   .Lx182_50
                        cmp              edx, 6
                                                                                        jne   .Lx182_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx182_51
                                                                                        jmp   .Lx182_52
.Lx182_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
.Lx182_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx182_54
.Lx182_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx182_54
.Lx182_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx182_54:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n55_var_ref_α
n52_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1648]
                        lea              r8, [rbp + 1648]
.Lx183_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx183_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx183_41
                        cmp              esi, 1
                                                                                        jne   .Lx183_55
                        mov              r8, rax
                                                                                        jmp   .Lx183_40
.Lx183_55:
                        cmp              esi, 2
                                                                                        jne   .Lx183_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx183_41
                        mov              r8, rax
                                                                                        jmp   .Lx183_40
.Lx183_56:
                        cmp              eax, 13
                                                                                        jne   .Lx183_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx183_41
                        cmp              rax, r8
                                                                                        je    .Lx183_41
                        mov              r8, rax
                                                                                        jmp   .Lx183_40
.Lx183_41:
                        lea              r9, [rbp + 1664]
.Lx183_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx183_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx183_43
                        cmp              esi, 1
                                                                                        jne   .Lx183_57
                        mov              r9, rax
                                                                                        jmp   .Lx183_42
.Lx183_57:
                        cmp              esi, 2
                                                                                        jne   .Lx183_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx183_43
                        mov              r9, rax
                                                                                        jmp   .Lx183_42
.Lx183_58:
                        cmp              eax, 13
                                                                                        jne   .Lx183_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx183_43
                        cmp              rax, r9
                                                                                        je    .Lx183_43
                        mov              r9, rax
                                                                                        jmp   .Lx183_42
.Lx183_43:
                        cmp              r8, r9
                                                                                        je    .Lx183_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx183_44
                        cmp              eax, 99
                                                                                        je    .Lx183_44
                        cmp              eax, 13
                                                                                        jne   .Lx183_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx183_44
                                                                                        jmp   .Lx183_45
.Lx183_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx183_53
                        cmp              eax, 99
                                                                                        je    .Lx183_53
                        cmp              eax, 13
                                                                                        jne   .Lx183_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx183_53
                                                                                        jmp   .Lx183_46
.Lx183_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx183_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx183_53
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
                                                                                        jmp   .Lx183_51
.Lx183_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx183_47
                        cmp              eax, 99
                                                                                        je    .Lx183_47
                        cmp              eax, 13
                                                                                        jne   .Lx183_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx183_47
                                                                                        jmp   .Lx183_48
.Lx183_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx183_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx183_53
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
                                                                                        jmp   .Lx183_51
.Lx183_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx183_49
                        cmp              edx, 14
                                                                                        je    .Lx183_53
                                                                                        jmp   .Lx183_52
.Lx183_49:
                        cmp              edx, 14
                                                                                        je    .Lx183_52
                        cmp              ecx, 7
                                                                                        je    .Lx183_53
                        cmp              edx, 7
                                                                                        je    .Lx183_53
                        cmp              ecx, 6
                                                                                        jne   .Lx183_50
                        cmp              edx, 6
                                                                                        jne   .Lx183_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx183_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx183_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx183_51
                                                                                        jmp   .Lx183_52
.Lx183_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx183_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx183_53
.Lx183_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx183_54
.Lx183_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx183_54
.Lx183_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx183_54:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n57_op19_α
n53_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n59_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   n60_var_ref_α
n56_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_op19_α:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1360]
                        lea              r8, [rbp + 1360]
.Lx190_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        cmp              esi, 1
                                                                                        jne   .Lx190_55
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_55:
                        cmp              esi, 2
                                                                                        jne   .Lx190_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_56:
                        cmp              eax, 13
                                                                                        jne   .Lx190_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        cmp              rax, r8
                                                                                        je    .Lx190_41
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_41:
                        lea              r9, [rbp + 1376]
.Lx190_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        cmp              esi, 1
                                                                                        jne   .Lx190_57
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_57:
                        cmp              esi, 2
                                                                                        jne   .Lx190_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_58:
                        cmp              eax, 13
                                                                                        jne   .Lx190_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        cmp              rax, r9
                                                                                        je    .Lx190_43
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_43:
                        cmp              r8, r9
                                                                                        je    .Lx190_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_44
                        cmp              eax, 99
                                                                                        je    .Lx190_44
                        cmp              eax, 13
                                                                                        jne   .Lx190_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx190_44
                                                                                        jmp   .Lx190_45
.Lx190_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_53
                        cmp              eax, 99
                                                                                        je    .Lx190_53
                        cmp              eax, 13
                                                                                        jne   .Lx190_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx190_53
                                                                                        jmp   .Lx190_46
.Lx190_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx190_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx190_53
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
                                                                                        jmp   .Lx190_51
.Lx190_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_47
                        cmp              eax, 99
                                                                                        je    .Lx190_47
                        cmp              eax, 13
                                                                                        jne   .Lx190_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx190_47
                                                                                        jmp   .Lx190_48
.Lx190_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx190_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx190_53
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
                                                                                        jmp   .Lx190_51
.Lx190_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx190_49
                        cmp              edx, 14
                                                                                        je    .Lx190_53
                                                                                        jmp   .Lx190_52
.Lx190_49:
                        cmp              edx, 14
                                                                                        je    .Lx190_52
                        cmp              ecx, 7
                                                                                        je    .Lx190_53
                        cmp              edx, 7
                                                                                        je    .Lx190_53
                        cmp              ecx, 6
                                                                                        jne   .Lx190_50
                        cmp              edx, 6
                                                                                        jne   .Lx190_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx190_51
                                                                                        jmp   .Lx190_52
.Lx190_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx190_53
.Lx190_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx190_54
.Lx190_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx190_54
.Lx190_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx190_54:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n42_op11_α
                                                                                        jmp   n61_var_ref_α
n58_op11_β:
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n62_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
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
.Lx197_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_41
                        cmp              esi, 1
                                                                                        jne   .Lx197_55
                        mov              r8, rax
                                                                                        jmp   .Lx197_40
.Lx197_55:
                        cmp              esi, 2
                                                                                        jne   .Lx197_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_41
                        mov              r8, rax
                                                                                        jmp   .Lx197_40
.Lx197_56:
                        cmp              eax, 13
                                                                                        jne   .Lx197_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_41
                        cmp              rax, r8
                                                                                        je    .Lx197_41
                        mov              r8, rax
                                                                                        jmp   .Lx197_40
.Lx197_41:
                        lea              r9, [rbp + 1088]
.Lx197_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_43
                        cmp              esi, 1
                                                                                        jne   .Lx197_57
                        mov              r9, rax
                                                                                        jmp   .Lx197_42
.Lx197_57:
                        cmp              esi, 2
                                                                                        jne   .Lx197_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_43
                        mov              r9, rax
                                                                                        jmp   .Lx197_42
.Lx197_58:
                        cmp              eax, 13
                                                                                        jne   .Lx197_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_43
                        cmp              rax, r9
                                                                                        je    .Lx197_43
                        mov              r9, rax
                                                                                        jmp   .Lx197_42
.Lx197_43:
                        cmp              r8, r9
                                                                                        je    .Lx197_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_44
                        cmp              eax, 99
                                                                                        je    .Lx197_44
                        cmp              eax, 13
                                                                                        jne   .Lx197_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx197_44
                                                                                        jmp   .Lx197_45
.Lx197_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_53
                        cmp              eax, 99
                                                                                        je    .Lx197_53
                        cmp              eax, 13
                                                                                        jne   .Lx197_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx197_53
                                                                                        jmp   .Lx197_46
.Lx197_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx197_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx197_53
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
                                                                                        jmp   .Lx197_51
.Lx197_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_47
                        cmp              eax, 99
                                                                                        je    .Lx197_47
                        cmp              eax, 13
                                                                                        jne   .Lx197_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx197_47
                                                                                        jmp   .Lx197_48
.Lx197_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx197_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx197_53
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
                                                                                        jmp   .Lx197_51
.Lx197_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx197_49
                        cmp              edx, 14
                                                                                        je    .Lx197_53
                                                                                        jmp   .Lx197_52
.Lx197_49:
                        cmp              edx, 14
                                                                                        je    .Lx197_52
                        cmp              ecx, 7
                                                                                        je    .Lx197_53
                        cmp              edx, 7
                                                                                        je    .Lx197_53
                        cmp              ecx, 6
                                                                                        jne   .Lx197_50
                        cmp              edx, 6
                                                                                        jne   .Lx197_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx197_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx197_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx197_51
                                                                                        jmp   .Lx197_52
.Lx197_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx197_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx197_53
.Lx197_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx197_54
.Lx197_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx197_54
.Lx197_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx197_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n65_var_ref_α
n62_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n68_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx204_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              esi, 1
                                                                                        jne   .Lx204_55
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_55:
                        cmp              esi, 2
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_56:
                        cmp              eax, 13
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              rax, r8
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_41:
                        lea              r9, [rbp + 800]
.Lx204_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              esi, 1
                                                                                        jne   .Lx204_57
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_57:
                        cmp              esi, 2
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_58:
                        cmp              eax, 13
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              rax, r9
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_43:
                        cmp              r8, r9
                                                                                        je    .Lx204_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_44
                        cmp              eax, 99
                                                                                        je    .Lx204_44
                        cmp              eax, 13
                                                                                        jne   .Lx204_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx204_44
                                                                                        jmp   .Lx204_45
.Lx204_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_53
                        cmp              eax, 99
                                                                                        je    .Lx204_53
                        cmp              eax, 13
                                                                                        jne   .Lx204_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_46
.Lx204_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
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
                                                                                        jmp   .Lx204_51
.Lx204_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_47
                        cmp              eax, 99
                                                                                        je    .Lx204_47
                        cmp              eax, 13
                                                                                        jne   .Lx204_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_47
                                                                                        jmp   .Lx204_48
.Lx204_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
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
                                                                                        jmp   .Lx204_51
.Lx204_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx204_49
                        cmp              edx, 14
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_52
.Lx204_49:
                        cmp              edx, 14
                                                                                        je    .Lx204_52
                        cmp              ecx, 7
                                                                                        je    .Lx204_53
                        cmp              edx, 7
                                                                                        je    .Lx204_53
                        cmp              ecx, 6
                                                                                        jne   .Lx204_50
                        cmp              edx, 6
                                                                                        jne   .Lx204_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx204_51
                                                                                        jmp   .Lx204_52
.Lx204_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
.Lx204_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx204_54
.Lx204_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx204_54
.Lx204_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx204_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n70_op11_α
                                                                                        jmp   n69_var_ref_α
n66_op11_β:
                                                                                        jmp   n70_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1280]
                        lea              r8, [rbp + 1280]
.Lx205_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx205_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_41
                        cmp              esi, 1
                                                                                        jne   .Lx205_55
                        mov              r8, rax
                                                                                        jmp   .Lx205_40
.Lx205_55:
                        cmp              esi, 2
                                                                                        jne   .Lx205_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_41
                        mov              r8, rax
                                                                                        jmp   .Lx205_40
.Lx205_56:
                        cmp              eax, 13
                                                                                        jne   .Lx205_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_41
                        cmp              rax, r8
                                                                                        je    .Lx205_41
                        mov              r8, rax
                                                                                        jmp   .Lx205_40
.Lx205_41:
                        lea              r9, [rbp + 1296]
.Lx205_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx205_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_43
                        cmp              esi, 1
                                                                                        jne   .Lx205_57
                        mov              r9, rax
                                                                                        jmp   .Lx205_42
.Lx205_57:
                        cmp              esi, 2
                                                                                        jne   .Lx205_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_43
                        mov              r9, rax
                                                                                        jmp   .Lx205_42
.Lx205_58:
                        cmp              eax, 13
                                                                                        jne   .Lx205_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_43
                        cmp              rax, r9
                                                                                        je    .Lx205_43
                        mov              r9, rax
                                                                                        jmp   .Lx205_42
.Lx205_43:
                        cmp              r8, r9
                                                                                        je    .Lx205_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_44
                        cmp              eax, 99
                                                                                        je    .Lx205_44
                        cmp              eax, 13
                                                                                        jne   .Lx205_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx205_44
                                                                                        jmp   .Lx205_45
.Lx205_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_53
                        cmp              eax, 99
                                                                                        je    .Lx205_53
                        cmp              eax, 13
                                                                                        jne   .Lx205_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx205_53
                                                                                        jmp   .Lx205_46
.Lx205_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx205_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx205_53
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
                                                                                        jmp   .Lx205_51
.Lx205_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_47
                        cmp              eax, 99
                                                                                        je    .Lx205_47
                        cmp              eax, 13
                                                                                        jne   .Lx205_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx205_47
                                                                                        jmp   .Lx205_48
.Lx205_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx205_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx205_53
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
                                                                                        jmp   .Lx205_51
.Lx205_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx205_49
                        cmp              edx, 14
                                                                                        je    .Lx205_53
                                                                                        jmp   .Lx205_52
.Lx205_49:
                        cmp              edx, 14
                                                                                        je    .Lx205_52
                        cmp              ecx, 7
                                                                                        je    .Lx205_53
                        cmp              edx, 7
                                                                                        je    .Lx205_53
                        cmp              ecx, 6
                                                                                        jne   .Lx205_50
                        cmp              edx, 6
                                                                                        jne   .Lx205_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx205_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx205_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx205_51
                                                                                        jmp   .Lx205_52
.Lx205_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx205_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx205_53
.Lx205_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx205_54
.Lx205_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx205_54
.Lx205_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx205_54:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n42_op11_α
                                                                                        jmp   n71_op19_α
n67_op11_β:
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F4_ω
                                                                                        jmp   n74_var_ref_α
n70_op11_β:
                                                                                        jmp   proc_differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_op19_α:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
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
.Lx212_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx212_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_41
                        cmp              esi, 1
                                                                                        jne   .Lx212_55
                        mov              r8, rax
                                                                                        jmp   .Lx212_40
.Lx212_55:
                        cmp              esi, 2
                                                                                        jne   .Lx212_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx212_41
                        mov              r8, rax
                                                                                        jmp   .Lx212_40
.Lx212_56:
                        cmp              eax, 13
                                                                                        jne   .Lx212_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_41
                        cmp              rax, r8
                                                                                        je    .Lx212_41
                        mov              r8, rax
                                                                                        jmp   .Lx212_40
.Lx212_41:
                        lea              r9, [rbp + 1008]
.Lx212_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx212_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_43
                        cmp              esi, 1
                                                                                        jne   .Lx212_57
                        mov              r9, rax
                                                                                        jmp   .Lx212_42
.Lx212_57:
                        cmp              esi, 2
                                                                                        jne   .Lx212_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx212_43
                        mov              r9, rax
                                                                                        jmp   .Lx212_42
.Lx212_58:
                        cmp              eax, 13
                                                                                        jne   .Lx212_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_43
                        cmp              rax, r9
                                                                                        je    .Lx212_43
                        mov              r9, rax
                                                                                        jmp   .Lx212_42
.Lx212_43:
                        cmp              r8, r9
                                                                                        je    .Lx212_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx212_44
                        cmp              eax, 99
                                                                                        je    .Lx212_44
                        cmp              eax, 13
                                                                                        jne   .Lx212_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx212_44
                                                                                        jmp   .Lx212_45
.Lx212_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx212_53
                        cmp              eax, 99
                                                                                        je    .Lx212_53
                        cmp              eax, 13
                                                                                        jne   .Lx212_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx212_53
                                                                                        jmp   .Lx212_46
.Lx212_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx212_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx212_53
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
                                                                                        jmp   .Lx212_51
.Lx212_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx212_47
                        cmp              eax, 99
                                                                                        je    .Lx212_47
                        cmp              eax, 13
                                                                                        jne   .Lx212_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx212_47
                                                                                        jmp   .Lx212_48
.Lx212_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx212_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx212_53
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
                                                                                        jmp   .Lx212_51
.Lx212_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx212_49
                        cmp              edx, 14
                                                                                        je    .Lx212_53
                                                                                        jmp   .Lx212_52
.Lx212_49:
                        cmp              edx, 14
                                                                                        je    .Lx212_52
                        cmp              ecx, 7
                                                                                        je    .Lx212_53
                        cmp              edx, 7
                                                                                        je    .Lx212_53
                        cmp              ecx, 6
                                                                                        jne   .Lx212_50
                        cmp              edx, 6
                                                                                        jne   .Lx212_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx212_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx212_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx212_51
                                                                                        jmp   .Lx212_52
.Lx212_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx212_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx212_53
.Lx212_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx212_54
.Lx212_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx212_54
.Lx212_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx212_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n75_var_ref_α
n72_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n76_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n77_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        lea              r8, [rbp + 704]
.Lx219_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx219_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx219_41
                        cmp              esi, 1
                                                                                        jne   .Lx219_55
                        mov              r8, rax
                                                                                        jmp   .Lx219_40
.Lx219_55:
                        cmp              esi, 2
                                                                                        jne   .Lx219_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx219_41
                        mov              r8, rax
                                                                                        jmp   .Lx219_40
.Lx219_56:
                        cmp              eax, 13
                                                                                        jne   .Lx219_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx219_41
                        cmp              rax, r8
                                                                                        je    .Lx219_41
                        mov              r8, rax
                                                                                        jmp   .Lx219_40
.Lx219_41:
                        lea              r9, [rbp + 720]
.Lx219_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx219_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx219_43
                        cmp              esi, 1
                                                                                        jne   .Lx219_57
                        mov              r9, rax
                                                                                        jmp   .Lx219_42
.Lx219_57:
                        cmp              esi, 2
                                                                                        jne   .Lx219_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx219_43
                        mov              r9, rax
                                                                                        jmp   .Lx219_42
.Lx219_58:
                        cmp              eax, 13
                                                                                        jne   .Lx219_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx219_43
                        cmp              rax, r9
                                                                                        je    .Lx219_43
                        mov              r9, rax
                                                                                        jmp   .Lx219_42
.Lx219_43:
                        cmp              r8, r9
                                                                                        je    .Lx219_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx219_44
                        cmp              eax, 99
                                                                                        je    .Lx219_44
                        cmp              eax, 13
                                                                                        jne   .Lx219_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx219_44
                                                                                        jmp   .Lx219_45
.Lx219_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx219_53
                        cmp              eax, 99
                                                                                        je    .Lx219_53
                        cmp              eax, 13
                                                                                        jne   .Lx219_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx219_53
                                                                                        jmp   .Lx219_46
.Lx219_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx219_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx219_53
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
                                                                                        jmp   .Lx219_51
.Lx219_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx219_47
                        cmp              eax, 99
                                                                                        je    .Lx219_47
                        cmp              eax, 13
                                                                                        jne   .Lx219_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx219_47
                                                                                        jmp   .Lx219_48
.Lx219_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx219_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx219_53
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
                                                                                        jmp   .Lx219_51
.Lx219_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx219_49
                        cmp              edx, 14
                                                                                        je    .Lx219_53
                                                                                        jmp   .Lx219_52
.Lx219_49:
                        cmp              edx, 14
                                                                                        je    .Lx219_52
                        cmp              ecx, 7
                                                                                        je    .Lx219_53
                        cmp              edx, 7
                                                                                        je    .Lx219_53
                        cmp              ecx, 6
                                                                                        jne   .Lx219_50
                        cmp              edx, 6
                                                                                        jne   .Lx219_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx219_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx219_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx219_51
                                                                                        jmp   .Lx219_52
.Lx219_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx219_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx219_53
.Lx219_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx219_54
.Lx219_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx219_54
.Lx219_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx219_54:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n70_op11_α
                                                                                        jmp   n79_var_ref_α
n76_op11_β:
                                                                                        jmp   n70_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
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
.Lx226_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx226_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_41
                        cmp              esi, 1
                                                                                        jne   .Lx226_55
                        mov              r8, rax
                                                                                        jmp   .Lx226_40
.Lx226_55:
                        cmp              esi, 2
                                                                                        jne   .Lx226_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx226_41
                        mov              r8, rax
                                                                                        jmp   .Lx226_40
.Lx226_56:
                        cmp              eax, 13
                                                                                        jne   .Lx226_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_41
                        cmp              rax, r8
                                                                                        je    .Lx226_41
                        mov              r8, rax
                                                                                        jmp   .Lx226_40
.Lx226_41:
                        lea              r9, [rbp + 432]
.Lx226_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx226_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_43
                        cmp              esi, 1
                                                                                        jne   .Lx226_57
                        mov              r9, rax
                                                                                        jmp   .Lx226_42
.Lx226_57:
                        cmp              esi, 2
                                                                                        jne   .Lx226_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx226_43
                        mov              r9, rax
                                                                                        jmp   .Lx226_42
.Lx226_58:
                        cmp              eax, 13
                                                                                        jne   .Lx226_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_43
                        cmp              rax, r9
                                                                                        je    .Lx226_43
                        mov              r9, rax
                                                                                        jmp   .Lx226_42
.Lx226_43:
                        cmp              r8, r9
                                                                                        je    .Lx226_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx226_44
                        cmp              eax, 99
                                                                                        je    .Lx226_44
                        cmp              eax, 13
                                                                                        jne   .Lx226_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx226_44
                                                                                        jmp   .Lx226_45
.Lx226_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx226_53
                        cmp              eax, 99
                                                                                        je    .Lx226_53
                        cmp              eax, 13
                                                                                        jne   .Lx226_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx226_53
                                                                                        jmp   .Lx226_46
.Lx226_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx226_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx226_53
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
                                                                                        jmp   .Lx226_51
.Lx226_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx226_47
                        cmp              eax, 99
                                                                                        je    .Lx226_47
                        cmp              eax, 13
                                                                                        jne   .Lx226_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx226_47
                                                                                        jmp   .Lx226_48
.Lx226_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx226_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx226_53
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
                                                                                        jmp   .Lx226_51
.Lx226_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx226_49
                        cmp              edx, 14
                                                                                        je    .Lx226_53
                                                                                        jmp   .Lx226_52
.Lx226_49:
                        cmp              edx, 14
                                                                                        je    .Lx226_52
                        cmp              ecx, 7
                                                                                        je    .Lx226_53
                        cmp              edx, 7
                                                                                        je    .Lx226_53
                        cmp              ecx, 6
                                                                                        jne   .Lx226_50
                        cmp              edx, 6
                                                                                        jne   .Lx226_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx226_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx226_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx226_51
                                                                                        jmp   .Lx226_52
.Lx226_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx226_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx226_53
.Lx226_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx226_54
.Lx226_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx226_54
.Lx226_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx226_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n83_var_ref_α
n80_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
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
                        lea              r9, [rbp + 928]
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
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n84_op19_α
n81_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op19_α:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
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
.Lx233_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx233_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_41
                        cmp              esi, 1
                                                                                        jne   .Lx233_55
                        mov              r8, rax
                                                                                        jmp   .Lx233_40
.Lx233_55:
                        cmp              esi, 2
                                                                                        jne   .Lx233_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx233_41
                        mov              r8, rax
                                                                                        jmp   .Lx233_40
.Lx233_56:
                        cmp              eax, 13
                                                                                        jne   .Lx233_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_41
                        cmp              rax, r8
                                                                                        je    .Lx233_41
                        mov              r8, rax
                                                                                        jmp   .Lx233_40
.Lx233_41:
                        lea              r9, [rbp + 640]
.Lx233_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx233_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_43
                        cmp              esi, 1
                                                                                        jne   .Lx233_57
                        mov              r9, rax
                                                                                        jmp   .Lx233_42
.Lx233_57:
                        cmp              esi, 2
                                                                                        jne   .Lx233_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx233_43
                        mov              r9, rax
                                                                                        jmp   .Lx233_42
.Lx233_58:
                        cmp              eax, 13
                                                                                        jne   .Lx233_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx233_43
                        cmp              rax, r9
                                                                                        je    .Lx233_43
                        mov              r9, rax
                                                                                        jmp   .Lx233_42
.Lx233_43:
                        cmp              r8, r9
                                                                                        je    .Lx233_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx233_44
                        cmp              eax, 99
                                                                                        je    .Lx233_44
                        cmp              eax, 13
                                                                                        jne   .Lx233_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx233_44
                                                                                        jmp   .Lx233_45
.Lx233_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx233_53
                        cmp              eax, 99
                                                                                        je    .Lx233_53
                        cmp              eax, 13
                                                                                        jne   .Lx233_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx233_53
                                                                                        jmp   .Lx233_46
.Lx233_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx233_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx233_53
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
                                                                                        jmp   .Lx233_51
.Lx233_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx233_47
                        cmp              eax, 99
                                                                                        je    .Lx233_47
                        cmp              eax, 13
                                                                                        jne   .Lx233_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx233_47
                                                                                        jmp   .Lx233_48
.Lx233_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx233_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx233_53
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
                                                                                        jmp   .Lx233_51
.Lx233_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx233_49
                        cmp              edx, 14
                                                                                        je    .Lx233_53
                                                                                        jmp   .Lx233_52
.Lx233_49:
                        cmp              edx, 14
                                                                                        je    .Lx233_52
                        cmp              ecx, 7
                                                                                        je    .Lx233_53
                        cmp              edx, 7
                                                                                        je    .Lx233_53
                        cmp              ecx, 6
                                                                                        jne   .Lx233_50
                        cmp              edx, 6
                                                                                        jne   .Lx233_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx233_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx233_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx233_51
                                                                                        jmp   .Lx233_52
.Lx233_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx233_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx233_53
.Lx233_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx233_54
.Lx233_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx233_54
.Lx233_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx233_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n70_op11_α
                                                                                        jmp   n87_var_ref_α
n85_op11_β:
                                                                                        jmp   n70_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx238_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx238_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        cmp              esi, 1
                                                                                        jne   .Lx238_55
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_55:
                        cmp              esi, 2
                                                                                        jne   .Lx238_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_56:
                        cmp              eax, 13
                                                                                        jne   .Lx238_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        cmp              rax, r8
                                                                                        je    .Lx238_41
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_41:
                        lea              r9, [rbp + 352]
.Lx238_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx238_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        cmp              esi, 1
                                                                                        jne   .Lx238_57
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_57:
                        cmp              esi, 2
                                                                                        jne   .Lx238_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_58:
                        cmp              eax, 13
                                                                                        jne   .Lx238_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        cmp              rax, r9
                                                                                        je    .Lx238_43
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_43:
                        cmp              r8, r9
                                                                                        je    .Lx238_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_44
                        cmp              eax, 99
                                                                                        je    .Lx238_44
                        cmp              eax, 13
                                                                                        jne   .Lx238_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx238_44
                                                                                        jmp   .Lx238_45
.Lx238_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_53
                        cmp              eax, 99
                                                                                        je    .Lx238_53
                        cmp              eax, 13
                                                                                        jne   .Lx238_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx238_53
                                                                                        jmp   .Lx238_46
.Lx238_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx238_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx238_53
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
                                                                                        jmp   .Lx238_51
.Lx238_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_47
                        cmp              eax, 99
                                                                                        je    .Lx238_47
                        cmp              eax, 13
                                                                                        jne   .Lx238_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx238_47
                                                                                        jmp   .Lx238_48
.Lx238_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx238_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx238_53
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
                                                                                        jmp   .Lx238_51
.Lx238_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx238_49
                        cmp              edx, 14
                                                                                        je    .Lx238_53
                                                                                        jmp   .Lx238_52
.Lx238_49:
                        cmp              edx, 14
                                                                                        je    .Lx238_52
                        cmp              ecx, 7
                                                                                        je    .Lx238_53
                        cmp              edx, 7
                                                                                        je    .Lx238_53
                        cmp              ecx, 6
                                                                                        jne   .Lx238_50
                        cmp              edx, 6
                                                                                        jne   .Lx238_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx238_51
                                                                                        jmp   .Lx238_52
.Lx238_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx238_53
.Lx238_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx238_54
.Lx238_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx238_54
.Lx238_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx238_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n90_var_ref_α
n88_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n91_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
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
.Lx243_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx243_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_41
                        cmp              esi, 1
                                                                                        jne   .Lx243_55
                        mov              r8, rax
                                                                                        jmp   .Lx243_40
.Lx243_55:
                        cmp              esi, 2
                                                                                        jne   .Lx243_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_41
                        mov              r8, rax
                                                                                        jmp   .Lx243_40
.Lx243_56:
                        cmp              eax, 13
                                                                                        jne   .Lx243_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_41
                        cmp              rax, r8
                                                                                        je    .Lx243_41
                        mov              r8, rax
                                                                                        jmp   .Lx243_40
.Lx243_41:
                        lea              r9, [rbp + 560]
.Lx243_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx243_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_43
                        cmp              esi, 1
                                                                                        jne   .Lx243_57
                        mov              r9, rax
                                                                                        jmp   .Lx243_42
.Lx243_57:
                        cmp              esi, 2
                                                                                        jne   .Lx243_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx243_43
                        mov              r9, rax
                                                                                        jmp   .Lx243_42
.Lx243_58:
                        cmp              eax, 13
                                                                                        jne   .Lx243_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx243_43
                        cmp              rax, r9
                                                                                        je    .Lx243_43
                        mov              r9, rax
                                                                                        jmp   .Lx243_42
.Lx243_43:
                        cmp              r8, r9
                                                                                        je    .Lx243_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_44
                        cmp              eax, 99
                                                                                        je    .Lx243_44
                        cmp              eax, 13
                                                                                        jne   .Lx243_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx243_44
                                                                                        jmp   .Lx243_45
.Lx243_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_53
                        cmp              eax, 99
                                                                                        je    .Lx243_53
                        cmp              eax, 13
                                                                                        jne   .Lx243_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx243_53
                                                                                        jmp   .Lx243_46
.Lx243_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx243_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx243_53
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
                                                                                        jmp   .Lx243_51
.Lx243_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx243_47
                        cmp              eax, 99
                                                                                        je    .Lx243_47
                        cmp              eax, 13
                                                                                        jne   .Lx243_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx243_47
                                                                                        jmp   .Lx243_48
.Lx243_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx243_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx243_53
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
                                                                                        jmp   .Lx243_51
.Lx243_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx243_49
                        cmp              edx, 14
                                                                                        je    .Lx243_53
                                                                                        jmp   .Lx243_52
.Lx243_49:
                        cmp              edx, 14
                                                                                        je    .Lx243_52
                        cmp              ecx, 7
                                                                                        je    .Lx243_53
                        cmp              edx, 7
                                                                                        je    .Lx243_53
                        cmp              ecx, 6
                                                                                        jne   .Lx243_50
                        cmp              edx, 6
                                                                                        jne   .Lx243_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx243_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx243_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx243_51
                                                                                        jmp   .Lx243_52
.Lx243_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx243_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx243_53
.Lx243_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx243_54
.Lx243_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx243_54
.Lx243_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx243_54:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n70_op11_α
                                                                                        jmp   n93_op19_α
n91_op11_β:
                                                                                        jmp   n70_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2720]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n94_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op19_α:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
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
.Lx247_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx247_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx247_41
                        cmp              esi, 1
                                                                                        jne   .Lx247_55
                        mov              r8, rax
                                                                                        jmp   .Lx247_40
.Lx247_55:
                        cmp              esi, 2
                                                                                        jne   .Lx247_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx247_41
                        mov              r8, rax
                                                                                        jmp   .Lx247_40
.Lx247_56:
                        cmp              eax, 13
                                                                                        jne   .Lx247_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx247_41
                        cmp              rax, r8
                                                                                        je    .Lx247_41
                        mov              r8, rax
                                                                                        jmp   .Lx247_40
.Lx247_41:
                        lea              r9, [rbp + 272]
.Lx247_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx247_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx247_43
                        cmp              esi, 1
                                                                                        jne   .Lx247_57
                        mov              r9, rax
                                                                                        jmp   .Lx247_42
.Lx247_57:
                        cmp              esi, 2
                                                                                        jne   .Lx247_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx247_43
                        mov              r9, rax
                                                                                        jmp   .Lx247_42
.Lx247_58:
                        cmp              eax, 13
                                                                                        jne   .Lx247_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx247_43
                        cmp              rax, r9
                                                                                        je    .Lx247_43
                        mov              r9, rax
                                                                                        jmp   .Lx247_42
.Lx247_43:
                        cmp              r8, r9
                                                                                        je    .Lx247_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx247_44
                        cmp              eax, 99
                                                                                        je    .Lx247_44
                        cmp              eax, 13
                                                                                        jne   .Lx247_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx247_44
                                                                                        jmp   .Lx247_45
.Lx247_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx247_53
                        cmp              eax, 99
                                                                                        je    .Lx247_53
                        cmp              eax, 13
                                                                                        jne   .Lx247_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx247_53
                                                                                        jmp   .Lx247_46
.Lx247_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx247_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx247_53
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
                                                                                        jmp   .Lx247_51
.Lx247_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx247_47
                        cmp              eax, 99
                                                                                        je    .Lx247_47
                        cmp              eax, 13
                                                                                        jne   .Lx247_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx247_47
                                                                                        jmp   .Lx247_48
.Lx247_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx247_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx247_53
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
                                                                                        jmp   .Lx247_51
.Lx247_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx247_49
                        cmp              edx, 14
                                                                                        je    .Lx247_53
                                                                                        jmp   .Lx247_52
.Lx247_49:
                        cmp              edx, 14
                                                                                        je    .Lx247_52
                        cmp              ecx, 7
                                                                                        je    .Lx247_53
                        cmp              edx, 7
                                                                                        je    .Lx247_53
                        cmp              ecx, 6
                                                                                        jne   .Lx247_50
                        cmp              edx, 6
                                                                                        jne   .Lx247_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx247_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx247_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx247_51
                                                                                        jmp   .Lx247_52
.Lx247_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx247_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx247_53
.Lx247_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx247_54
.Lx247_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx247_54
.Lx247_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx247_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n95_var_ref_α
n94_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx252_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx252_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx252_41
                        cmp              esi, 1
                                                                                        jne   .Lx252_55
                        mov              r8, rax
                                                                                        jmp   .Lx252_40
.Lx252_55:
                        cmp              esi, 2
                                                                                        jne   .Lx252_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx252_41
                        mov              r8, rax
                                                                                        jmp   .Lx252_40
.Lx252_56:
                        cmp              eax, 13
                                                                                        jne   .Lx252_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx252_41
                        cmp              rax, r8
                                                                                        je    .Lx252_41
                        mov              r8, rax
                                                                                        jmp   .Lx252_40
.Lx252_41:
                        lea              r9, [rbp + 192]
.Lx252_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx252_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx252_43
                        cmp              esi, 1
                                                                                        jne   .Lx252_57
                        mov              r9, rax
                                                                                        jmp   .Lx252_42
.Lx252_57:
                        cmp              esi, 2
                                                                                        jne   .Lx252_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx252_43
                        mov              r9, rax
                                                                                        jmp   .Lx252_42
.Lx252_58:
                        cmp              eax, 13
                                                                                        jne   .Lx252_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx252_43
                        cmp              rax, r9
                                                                                        je    .Lx252_43
                        mov              r9, rax
                                                                                        jmp   .Lx252_42
.Lx252_43:
                        cmp              r8, r9
                                                                                        je    .Lx252_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx252_44
                        cmp              eax, 99
                                                                                        je    .Lx252_44
                        cmp              eax, 13
                                                                                        jne   .Lx252_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx252_44
                                                                                        jmp   .Lx252_45
.Lx252_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx252_53
                        cmp              eax, 99
                                                                                        je    .Lx252_53
                        cmp              eax, 13
                                                                                        jne   .Lx252_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx252_53
                                                                                        jmp   .Lx252_46
.Lx252_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx252_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx252_53
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
                                                                                        jmp   .Lx252_51
.Lx252_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx252_47
                        cmp              eax, 99
                                                                                        je    .Lx252_47
                        cmp              eax, 13
                                                                                        jne   .Lx252_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx252_47
                                                                                        jmp   .Lx252_48
.Lx252_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx252_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx252_53
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
                                                                                        jmp   .Lx252_51
.Lx252_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx252_49
                        cmp              edx, 14
                                                                                        je    .Lx252_53
                                                                                        jmp   .Lx252_52
.Lx252_49:
                        cmp              edx, 14
                                                                                        je    .Lx252_52
                        cmp              ecx, 7
                                                                                        je    .Lx252_53
                        cmp              edx, 7
                                                                                        je    .Lx252_53
                        cmp              ecx, 6
                                                                                        jne   .Lx252_50
                        cmp              edx, 6
                                                                                        jne   .Lx252_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx252_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx252_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx252_51
                                                                                        jmp   .Lx252_52
.Lx252_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx252_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx252_53
.Lx252_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx252_54
.Lx252_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx252_54
.Lx252_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx252_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n98_suspend_α
n97_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_suspend_α:
                        lea              rax, [rip + n98_suspend_β]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_differ$2F4_γ
n98_suspend_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F4_β:
                                                                                        jmp   qword ptr [rbp + 2688]
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_differ$2F4_res]
                        push             rax
                        mov              rax, [rbp + 2824]
                        mov              rbp, [rbp + 2840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F4_ω:
                        mov              rax, [rbp + 2832]
                        lea              rsp, [rbp + 2848]
                        mov              rbp, [rbp + 2840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 1504
                        mov              [rsp + 1480], rcx
                        mov              [rsp + 1488], rdx
                        mov              [rsp + 1496], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1360
                        mov              edx, 1472
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx295_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx295_101
.Lx295_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx295_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n256_var_ref_α
n255_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n257_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        mov              qword ptr [rbp + 1312], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx299_20
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx299_21
.Lx299_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        call             rt_arg_stage@PLT
.Lx299_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx299_1
                        lea              rcx, [rip + .Lx299_3]
                        lea              rdx, [rip + .Lx299_4]
                                                                                        jmp   rax
.Lx299_3:
                        mov              qword ptr [rbp + 1320], rsp
                        mov              rax, qword ptr [rbp + 1312]
                        test             rax, rax
                                                                                        jne   .Lx299_5
                        mov              qword ptr [rbp + 1312], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx299_2
.Lx299_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx299_2
.Lx299_4:
                        mov              rax, qword ptr [rbp + 1312]
                        test             rax, rax
                                                                                        jne   .Lx299_6
                        mov              qword ptr [rbp + 1312], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx299_2
.Lx299_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx299_2
.Lx299_1:
                        call             rt_faildescr@PLT
.Lx299_2:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n259_op11_α
                                                                                        jmp   n258_var_ref_α
n257_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1320]
                                                                                        jmp   qword ptr [rsp]
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n260_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n259_op11_α:
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
n259_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n260_call_proc_staged_α:
                        mov              qword ptr [rbp + 1232], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx304_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx304_21
.Lx304_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx304_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx304_1
                        lea              rcx, [rip + .Lx304_3]
                        lea              rdx, [rip + .Lx304_4]
                                                                                        jmp   rax
.Lx304_3:
                        mov              qword ptr [rbp + 1240], rsp
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx304_5
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx304_2
.Lx304_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx304_2
.Lx304_4:
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax
                                                                                        jne   .Lx304_6
                        mov              qword ptr [rbp + 1232], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx304_2
.Lx304_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx304_2
.Lx304_1:
                        call             rt_faildescr@PLT
.Lx304_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n257_call_proc_staged_β
                                                                                        jmp   n261_var_ref_α
n260_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1240]
                                                                                        jmp   qword ptr [rsp]
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n262_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_proc_staged_α:
                        mov              qword ptr [rbp + 1152], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx308_20
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx308_21
.Lx308_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_arg_stage@PLT
.Lx308_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx308_1
                        lea              rcx, [rip + .Lx308_3]
                        lea              rdx, [rip + .Lx308_4]
                                                                                        jmp   rax
.Lx308_3:
                        mov              qword ptr [rbp + 1160], rsp
                        mov              rax, qword ptr [rbp + 1152]
                        test             rax, rax
                                                                                        jne   .Lx308_5
                        mov              qword ptr [rbp + 1152], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx308_2
.Lx308_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx308_2
.Lx308_4:
                        mov              rax, qword ptr [rbp + 1152]
                        test             rax, rax
                                                                                        jne   .Lx308_6
                        mov              qword ptr [rbp + 1152], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx308_2
.Lx308_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx308_2
.Lx308_1:
                        call             rt_faildescr@PLT
.Lx308_2:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n260_call_proc_staged_β
                                                                                        jmp   n263_var_ref_α
n262_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1160]
                                                                                        jmp   qword ptr [rsp]
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n264_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_proc_staged_α:
                        mov              qword ptr [rbp + 1072], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx312_20
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx312_21
.Lx312_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        call             rt_arg_stage@PLT
.Lx312_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx312_1
                        lea              rcx, [rip + .Lx312_3]
                        lea              rdx, [rip + .Lx312_4]
                                                                                        jmp   rax
.Lx312_3:
                        mov              qword ptr [rbp + 1080], rsp
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax
                                                                                        jne   .Lx312_5
                        mov              qword ptr [rbp + 1072], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx312_2
.Lx312_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx312_2
.Lx312_4:
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax
                                                                                        jne   .Lx312_6
                        mov              qword ptr [rbp + 1072], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx312_2
.Lx312_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx312_2
.Lx312_1:
                        call             rt_faildescr@PLT
.Lx312_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n262_call_proc_staged_β
                                                                                        jmp   n265_var_ref_α
n264_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1080]
                                                                                        jmp   qword ptr [rsp]
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n266_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n268_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n269_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_proc_staged_α:
                        mov              qword ptr [rbp + 944], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_20
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx322_21
.Lx322_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx322_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_22
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx322_23
.Lx322_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        call             rt_arg_stage@PLT
.Lx322_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_24
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx322_25
.Lx322_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx322_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_26
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx322_27
.Lx322_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx322_27:
                        mov              edi, 0
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx322_1
                        lea              rcx, [rip + .Lx322_3]
                        lea              rdx, [rip + .Lx322_4]
                                                                                        jmp   rax
.Lx322_3:
                        mov              qword ptr [rbp + 952], rsp
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx322_5
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx322_2
.Lx322_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx322_2
.Lx322_4:
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx322_6
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx322_2
.Lx322_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx322_2
.Lx322_1:
                        call             rt_faildescr@PLT
.Lx322_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n264_call_proc_staged_β
                                                                                        jmp   n270_var_ref_α
n269_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 952]
                                                                                        jmp   qword ptr [rsp]
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "differ/4"
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n272_op11_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              rsi, qword ptr [rip + .Lx326_2]
                                                                                        jmp   .Lx326_3
.Lx326_2:
                        .quad            .Lx326_2_s
.Lx326_2_s:
                        .string          "architect"
.Lx326_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n269_call_proc_staged_β
                                                                                        jmp   n273_var_ref_α
n272_op11_β:
                                                                                        jmp   n269_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n275_op11_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n275_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              rsi, qword ptr [rip + .Lx330_2]
                                                                                        jmp   .Lx330_3
.Lx330_2:
                        .quad            .Lx330_2_s
.Lx330_2_s:
                        .string          "banker"
.Lx330_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n269_call_proc_staged_β
                                                                                        jmp   n276_var_ref_α
n275_op11_β:
                                                                                        jmp   n269_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n278_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n278_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx336_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx336_21
.Lx336_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx336_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx336_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx336_23
.Lx336_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx336_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx336_1
                        lea              rcx, [rip + .Lx336_3]
                        lea              rdx, [rip + .Lx336_4]
                                                                                        jmp   rax
.Lx336_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx336_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx336_2
.Lx336_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx336_2
.Lx336_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx336_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx336_2
.Lx336_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx336_2
.Lx336_1:
                        call             rt_faildescr@PLT
.Lx336_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n269_call_proc_staged_β
                                                                                        jmp   n279_var_ref_α
n278_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "income/2"
#-----------------------------------------------------------------------------------------------------------------------
n279_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n280_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n281_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_proc_staged_α:
                        mov              qword ptr [rbp + 528], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_20
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx342_21
.Lx342_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx342_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_22
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx342_23
.Lx342_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx342_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx342_1
                        lea              rcx, [rip + .Lx342_3]
                        lea              rdx, [rip + .Lx342_4]
                                                                                        jmp   rax
.Lx342_3:
                        mov              qword ptr [rbp + 536], rsp
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax
                                                                                        jne   .Lx342_5
                        mov              qword ptr [rbp + 528], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_4:
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax
                                                                                        jne   .Lx342_6
                        mov              qword ptr [rbp + 528], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_1:
                        call             rt_faildescr@PLT
.Lx342_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n278_call_proc_staged_β
                                                                                        jmp   n282_var_α
n281_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 536]
                                                                                        jmp   qword ptr [rsp]
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "income/2"
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n284_var_α
.Lx345_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n285_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n285_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n259_op11_α
                                                                                        jmp   n286_op11_α
n285_op11_β:
                                                                                        jmp   n259_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n281_call_proc_staged_β
                                                                                        jmp   n287_var_α
n286_op11_β:
                                                                                        jmp   n281_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n288_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n289_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n281_call_proc_staged_β
                                                                                        jmp   n290_var_ref_α
n289_op11_β:
                                                                                        jmp   n281_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n294_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n294_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 192]
                        lea              rcx, [rbp + 208]
                        lea              r8, [rbp + 224]
                        call             proc_display$2F4_dcα
                                                                                        jmp   .Lx364_2
.Lx364_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n281_call_proc_staged_β
                                                                                        jmp   n294_call_proc_staged_β
n294_call_proc_staged_β:
                                                                                        jmp   n281_call_proc_staged_β
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "display/4"
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
                        mov              rax, [rbp + 1480]
                        mov              rbp, [rbp + 1496]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 1488]
                        lea              rsp, [rbp + 1504]
                        mov              rbp, [rbp + 1496]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_occupation$2F1_α
proc_occupation$2F1_α:
                        .global          proc_occupation$2F1_α
                        .global          proc_occupation$2F1_β
                        .global          proc_occupation$2F1_γ
                        .global          proc_occupation$2F1_ω
                        sub              rsp, 800
                        mov              [rsp + 776], rcx
                        mov              [rsp + 784], rdx
                        mov              [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 768
                        call             rt_jmp_frame_lexprep2@PLT
proc_occupation$2F1_α_body:
                        lea              rax, [rip + n385_suspend_β]
                        mov              qword ptr [rbp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n365_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx386_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx386_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx386_101
.Lx386_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx386_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   n366_var_ref_α
n365_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n368_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n368_op11_α:
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
.Lx391_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx391_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_41
                        cmp              esi, 1
                                                                                        jne   .Lx391_55
                        mov              r8, rax
                                                                                        jmp   .Lx391_40
.Lx391_55:
                        cmp              esi, 2
                                                                                        jne   .Lx391_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx391_41
                        mov              r8, rax
                                                                                        jmp   .Lx391_40
.Lx391_56:
                        cmp              eax, 13
                                                                                        jne   .Lx391_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_41
                        cmp              rax, r8
                                                                                        je    .Lx391_41
                        mov              r8, rax
                                                                                        jmp   .Lx391_40
.Lx391_41:
                        lea              r9, [rbp + 688]
.Lx391_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx391_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_43
                        cmp              esi, 1
                                                                                        jne   .Lx391_57
                        mov              r9, rax
                                                                                        jmp   .Lx391_42
.Lx391_57:
                        cmp              esi, 2
                                                                                        jne   .Lx391_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx391_43
                        mov              r9, rax
                                                                                        jmp   .Lx391_42
.Lx391_58:
                        cmp              eax, 13
                                                                                        jne   .Lx391_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_43
                        cmp              rax, r9
                                                                                        je    .Lx391_43
                        mov              r9, rax
                                                                                        jmp   .Lx391_42
.Lx391_43:
                        cmp              r8, r9
                                                                                        je    .Lx391_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx391_44
                        cmp              eax, 99
                                                                                        je    .Lx391_44
                        cmp              eax, 13
                                                                                        jne   .Lx391_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx391_44
                                                                                        jmp   .Lx391_45
.Lx391_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx391_53
                        cmp              eax, 99
                                                                                        je    .Lx391_53
                        cmp              eax, 13
                                                                                        jne   .Lx391_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx391_53
                                                                                        jmp   .Lx391_46
.Lx391_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx391_53
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
                                                                                        jmp   .Lx391_51
.Lx391_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx391_47
                        cmp              eax, 99
                                                                                        je    .Lx391_47
                        cmp              eax, 13
                                                                                        jne   .Lx391_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx391_47
                                                                                        jmp   .Lx391_48
.Lx391_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx391_53
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
                                                                                        jmp   .Lx391_51
.Lx391_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx391_49
                        cmp              edx, 14
                                                                                        je    .Lx391_53
                                                                                        jmp   .Lx391_52
.Lx391_49:
                        cmp              edx, 14
                                                                                        je    .Lx391_52
                        cmp              ecx, 7
                                                                                        je    .Lx391_53
                        cmp              edx, 7
                                                                                        je    .Lx391_53
                        cmp              ecx, 6
                                                                                        jne   .Lx391_50
                        cmp              edx, 6
                                                                                        jne   .Lx391_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx391_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx391_51
                                                                                        jmp   .Lx391_52
.Lx391_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx391_53
.Lx391_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx391_54
.Lx391_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx391_54
.Lx391_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx391_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n370_op11_α
                                                                                        jmp   n369_var_ref_α
n368_op11_β:
                                                                                        jmp   n370_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_op11_α:
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
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   proc_occupation$2F1_ω
n370_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n372_lit_string_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n373_lit_string_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n374_lit_string_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n375_lit_string_α
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n376_lit_string_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n377_lit_string_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n378_lit_string_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n379_lit_string_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n380_op11_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n380_op11_α:
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
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   n381_op11_α
n380_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
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
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   n382_op11_α
n381_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
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
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   n383_op11_α
n382_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_op11_α:
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
                                                                                        je    n370_op11_α
                                                                                        jmp   n384_call_proc_staged_α
n383_op11_β:
                                                                                        jmp   n370_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx409_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx409_21
.Lx409_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx409_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx409_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx409_23
.Lx409_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx409_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx409_1
                        lea              rcx, [rip + .Lx409_3]
                        lea              rdx, [rip + .Lx409_4]
                                                                                        jmp   rax
.Lx409_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx409_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx409_2
.Lx409_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx409_2
.Lx409_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx409_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx409_2
.Lx409_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx409_2
.Lx409_1:
                        call             rt_faildescr@PLT
.Lx409_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n370_op11_α
                                                                                        jmp   n385_suspend_α
n384_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n385_suspend_α:
                        lea              rax, [rip + n385_suspend_β]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_occupation$2F1_γ
n385_suspend_β:
                                                                                        jmp   n384_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_β:
                                                                                        jmp   qword ptr [rbp + 736]
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_occupation$2F1_res]
                        push             rax
                        mov              rax, [rbp + 776]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_ω:
                        mov              rax, [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
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
                        lea              rax, [rip + n414_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n412_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx418_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx418_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx418_101
.Lx418_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx418_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n413_call_proc_staged_α
n412_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n413_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 1
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx420_1
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4]
                                                                                        jmp   rax
.Lx420_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx420_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx420_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_1:
                        call             rt_faildescr@PLT
.Lx420_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n415_op11_α
                                                                                        jmp   n414_suspend_α
n413_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n414_suspend_α:
                        lea              rax, [rip + n414_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n414_suspend_β:
                                                                                        jmp   n413_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n415_op11_α:
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
                                                                                        jmp   n416_suspend_α
n415_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n416_suspend_α:
                        lea              rax, [rip + n416_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n416_suspend_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n417_op11_α:
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
n417_op11_β:
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
                        .globl           proc_income$2F2_α
proc_income$2F2_α:
                        .global          proc_income$2F2_α
                        .global          proc_income$2F2_β
                        .global          proc_income$2F2_γ
                        .global          proc_income$2F2_ω
                        sub              rsp, 1616
                        mov              [rsp + 1592], rcx
                        mov              [rsp + 1600], rdx
                        mov              [rsp + 1608], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1552
                        mov              edx, 1584
                        call             rt_jmp_frame_lexprep2@PLT
proc_income$2F2_α_body:
                        lea              rax, [rip + n451_suspend_β]
                        mov              qword ptr [rbp + 1552], rax
#-----------------------------------------------------------------------------------------------------------------------
n427_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx480_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx480_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx480_101
.Lx480_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx480_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_income$2F2_ω
                                                                                        jmp   n428_var_ref_α
n427_op11_β:
                                                                                        jmp   proc_income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n430_op11_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n430_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]
                        mov              rsi, qword ptr [rip + .Lx484_2]
                                                                                        jmp   .Lx484_3
.Lx484_2:
                        .quad            .Lx484_2_s
.Lx484_2_s:
                        .string          "banker"
.Lx484_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n432_op11_α
                                                                                        jmp   n431_var_ref_α
n430_op11_β:
                                                                                        jmp   n432_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n433_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n432_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    proc_income$2F2_ω
                                                                                        jmp   n434_var_ref_α
n432_op11_β:
                                                                                        jmp   proc_income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n435_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1408]
                        lea              r8, [rbp + 1408]
.Lx492_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx492_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_41
                        cmp              esi, 1
                                                                                        jne   .Lx492_55
                        mov              r8, rax
                                                                                        jmp   .Lx492_40
.Lx492_55:
                        cmp              esi, 2
                                                                                        jne   .Lx492_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx492_41
                        mov              r8, rax
                                                                                        jmp   .Lx492_40
.Lx492_56:
                        cmp              eax, 13
                                                                                        jne   .Lx492_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_41
                        cmp              rax, r8
                                                                                        je    .Lx492_41
                        mov              r8, rax
                                                                                        jmp   .Lx492_40
.Lx492_41:
                        lea              r9, [rbp + 1424]
.Lx492_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx492_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_43
                        cmp              esi, 1
                                                                                        jne   .Lx492_57
                        mov              r9, rax
                                                                                        jmp   .Lx492_42
.Lx492_57:
                        cmp              esi, 2
                                                                                        jne   .Lx492_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx492_43
                        mov              r9, rax
                                                                                        jmp   .Lx492_42
.Lx492_58:
                        cmp              eax, 13
                                                                                        jne   .Lx492_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_43
                        cmp              rax, r9
                                                                                        je    .Lx492_43
                        mov              r9, rax
                                                                                        jmp   .Lx492_42
.Lx492_43:
                        cmp              r8, r9
                                                                                        je    .Lx492_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx492_44
                        cmp              eax, 99
                                                                                        je    .Lx492_44
                        cmp              eax, 13
                                                                                        jne   .Lx492_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx492_44
                                                                                        jmp   .Lx492_45
.Lx492_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx492_53
                        cmp              eax, 99
                                                                                        je    .Lx492_53
                        cmp              eax, 13
                                                                                        jne   .Lx492_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx492_53
                                                                                        jmp   .Lx492_46
.Lx492_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx492_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx492_53
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
                                                                                        jmp   .Lx492_51
.Lx492_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx492_47
                        cmp              eax, 99
                                                                                        je    .Lx492_47
                        cmp              eax, 13
                                                                                        jne   .Lx492_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx492_47
                                                                                        jmp   .Lx492_48
.Lx492_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx492_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx492_53
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
                                                                                        jmp   .Lx492_51
.Lx492_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx492_49
                        cmp              edx, 14
                                                                                        je    .Lx492_53
                                                                                        jmp   .Lx492_52
.Lx492_49:
                        cmp              edx, 14
                                                                                        je    .Lx492_52
                        cmp              ecx, 7
                                                                                        je    .Lx492_53
                        cmp              edx, 7
                                                                                        je    .Lx492_53
                        cmp              ecx, 6
                                                                                        jne   .Lx492_50
                        cmp              edx, 6
                                                                                        jne   .Lx492_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx492_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx492_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx492_51
                                                                                        jmp   .Lx492_52
.Lx492_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx492_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx492_53
.Lx492_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx492_54
.Lx492_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx492_54
.Lx492_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx492_54:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n432_op11_α
                                                                                        jmp   n437_var_ref_α
n435_op11_β:
                                                                                        jmp   n432_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n438_op11_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n439_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n438_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lx496_2]
                                                                                        jmp   .Lx496_3
.Lx496_2:
                        .quad            .Lx496_2_s
.Lx496_2_s:
                        .string          "architect"
.Lx496_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n441_op11_α
                                                                                        jmp   n440_var_ref_α
n438_op11_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n442_lit_integer_α
.Lx497_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n443_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_income$2F2_ω
                                                                                        jmp   n444_var_ref_α
n441_op11_β:
                                                                                        jmp   proc_income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n445_op11_α
.Lx501_0:
                        .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n446_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n447_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n445_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n432_op11_α
                                                                                        jmp   n448_op11_α
n445_op11_β:
                                                                                        jmp   n432_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n446_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1040]
                        lea              r8, [rbp + 1040]
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
                        lea              r9, [rbp + 1056]
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
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n441_op11_α
                                                                                        jmp   n449_var_ref_α
n446_op11_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n450_op11_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n448_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n432_op11_α
                                                                                        jmp   n451_suspend_α
n448_op11_β:
                                                                                        jmp   n432_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n450_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              rsi, qword ptr [rip + .Lx512_2]
                                                                                        jmp   .Lx512_3
.Lx512_2:
                        .quad            .Lx512_2_s
.Lx512_2_s:
                        .string          "druggist"
.Lx512_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n454_op11_α
                                                                                        jmp   n453_var_ref_α
n450_op11_β:
                                                                                        jmp   n454_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n451_suspend_α:
                        lea              rax, [rip + n451_suspend_β]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_income$2F2_γ
n451_suspend_β:
                                                                                        jmp   n432_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n455_lit_integer_α
.Lx515_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n454_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    proc_income$2F2_ω
                                                                                        jmp   n457_var_ref_α
n454_op11_β:
                                                                                        jmp   proc_income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n458_op11_α
.Lx519_0:
                        .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n460_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n441_op11_α
                                                                                        jmp   n461_op11_α
n458_op11_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n459_op11_α:
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
.Lx525_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx525_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_41
                        cmp              esi, 1
                                                                                        jne   .Lx525_55
                        mov              r8, rax
                                                                                        jmp   .Lx525_40
.Lx525_55:
                        cmp              esi, 2
                                                                                        jne   .Lx525_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx525_41
                        mov              r8, rax
                                                                                        jmp   .Lx525_40
.Lx525_56:
                        cmp              eax, 13
                                                                                        jne   .Lx525_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_41
                        cmp              rax, r8
                                                                                        je    .Lx525_41
                        mov              r8, rax
                                                                                        jmp   .Lx525_40
.Lx525_41:
                        lea              r9, [rbp + 688]
.Lx525_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx525_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_43
                        cmp              esi, 1
                                                                                        jne   .Lx525_57
                        mov              r9, rax
                                                                                        jmp   .Lx525_42
.Lx525_57:
                        cmp              esi, 2
                                                                                        jne   .Lx525_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx525_43
                        mov              r9, rax
                                                                                        jmp   .Lx525_42
.Lx525_58:
                        cmp              eax, 13
                                                                                        jne   .Lx525_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx525_43
                        cmp              rax, r9
                                                                                        je    .Lx525_43
                        mov              r9, rax
                                                                                        jmp   .Lx525_42
.Lx525_43:
                        cmp              r8, r9
                                                                                        je    .Lx525_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx525_44
                        cmp              eax, 99
                                                                                        je    .Lx525_44
                        cmp              eax, 13
                                                                                        jne   .Lx525_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx525_44
                                                                                        jmp   .Lx525_45
.Lx525_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx525_53
                        cmp              eax, 99
                                                                                        je    .Lx525_53
                        cmp              eax, 13
                                                                                        jne   .Lx525_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx525_53
                                                                                        jmp   .Lx525_46
.Lx525_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx525_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx525_53
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
                                                                                        jmp   .Lx525_51
.Lx525_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx525_47
                        cmp              eax, 99
                                                                                        je    .Lx525_47
                        cmp              eax, 13
                                                                                        jne   .Lx525_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx525_47
                                                                                        jmp   .Lx525_48
.Lx525_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx525_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx525_53
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
                                                                                        jmp   .Lx525_51
.Lx525_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx525_49
                        cmp              edx, 14
                                                                                        je    .Lx525_53
                                                                                        jmp   .Lx525_52
.Lx525_49:
                        cmp              edx, 14
                                                                                        je    .Lx525_52
                        cmp              ecx, 7
                                                                                        je    .Lx525_53
                        cmp              edx, 7
                                                                                        je    .Lx525_53
                        cmp              ecx, 6
                                                                                        jne   .Lx525_50
                        cmp              edx, 6
                                                                                        jne   .Lx525_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx525_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx525_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx525_51
                                                                                        jmp   .Lx525_52
.Lx525_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx525_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx525_53
.Lx525_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx525_54
.Lx525_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx525_54
.Lx525_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx525_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n454_op11_α
                                                                                        jmp   n462_var_ref_α
n459_op11_β:
                                                                                        jmp   n454_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n463_op11_α
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n461_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n441_op11_α
                                                                                        jmp   n464_suspend_α
n461_op11_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n465_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n463_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx530_2]
                                                                                        jmp   .Lx530_3
.Lx530_2:
                        .quad            .Lx530_2_s
.Lx530_2_s:
                        .string          "grocer"
.Lx530_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n467_op11_α
                                                                                        jmp   n466_var_ref_α
n463_op11_β:
                                                                                        jmp   n467_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n464_suspend_α:
                        lea              rax, [rip + n464_suspend_β]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_income$2F2_γ
n464_suspend_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n468_lit_integer_α
.Lx533_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n469_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n467_op11_α:
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
                                                                                        je    proc_income$2F2_ω
                                                                                        jmp   proc_income$2F2_ω
n467_op11_β:
                                                                                        jmp   proc_income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n470_op11_α
.Lx537_0:
                        .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n471_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n454_op11_α
                                                                                        jmp   n472_op11_α
n470_op11_β:
                                                                                        jmp   n454_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n471_op11_α:
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
.Lx541_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx541_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_41
                        cmp              esi, 1
                                                                                        jne   .Lx541_55
                        mov              r8, rax
                                                                                        jmp   .Lx541_40
.Lx541_55:
                        cmp              esi, 2
                                                                                        jne   .Lx541_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx541_41
                        mov              r8, rax
                                                                                        jmp   .Lx541_40
.Lx541_56:
                        cmp              eax, 13
                                                                                        jne   .Lx541_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_41
                        cmp              rax, r8
                                                                                        je    .Lx541_41
                        mov              r8, rax
                                                                                        jmp   .Lx541_40
.Lx541_41:
                        lea              r9, [rbp + 320]
.Lx541_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx541_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_43
                        cmp              esi, 1
                                                                                        jne   .Lx541_57
                        mov              r9, rax
                                                                                        jmp   .Lx541_42
.Lx541_57:
                        cmp              esi, 2
                                                                                        jne   .Lx541_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx541_43
                        mov              r9, rax
                                                                                        jmp   .Lx541_42
.Lx541_58:
                        cmp              eax, 13
                                                                                        jne   .Lx541_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_43
                        cmp              rax, r9
                                                                                        je    .Lx541_43
                        mov              r9, rax
                                                                                        jmp   .Lx541_42
.Lx541_43:
                        cmp              r8, r9
                                                                                        je    .Lx541_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx541_44
                        cmp              eax, 99
                                                                                        je    .Lx541_44
                        cmp              eax, 13
                                                                                        jne   .Lx541_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx541_44
                                                                                        jmp   .Lx541_45
.Lx541_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx541_53
                        cmp              eax, 99
                                                                                        je    .Lx541_53
                        cmp              eax, 13
                                                                                        jne   .Lx541_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx541_53
                                                                                        jmp   .Lx541_46
.Lx541_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx541_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx541_53
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
                                                                                        jmp   .Lx541_51
.Lx541_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx541_47
                        cmp              eax, 99
                                                                                        je    .Lx541_47
                        cmp              eax, 13
                                                                                        jne   .Lx541_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx541_47
                                                                                        jmp   .Lx541_48
.Lx541_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx541_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx541_53
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
                                                                                        jmp   .Lx541_51
.Lx541_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx541_49
                        cmp              edx, 14
                                                                                        je    .Lx541_53
                                                                                        jmp   .Lx541_52
.Lx541_49:
                        cmp              edx, 14
                                                                                        je    .Lx541_52
                        cmp              ecx, 7
                                                                                        je    .Lx541_53
                        cmp              edx, 7
                                                                                        je    .Lx541_53
                        cmp              ecx, 6
                                                                                        jne   .Lx541_50
                        cmp              edx, 6
                                                                                        jne   .Lx541_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx541_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx541_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx541_51
                                                                                        jmp   .Lx541_52
.Lx541_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx541_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx541_53
.Lx541_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx541_54
.Lx541_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx541_54
.Lx541_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx541_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n467_op11_α
                                                                                        jmp   n473_var_ref_α
n471_op11_β:
                                                                                        jmp   n467_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n472_op11_α:
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
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n454_op11_α
                                                                                        jmp   n474_suspend_α
n472_op11_β:
                                                                                        jmp   n454_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n475_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n474_suspend_α:
                        lea              rax, [rip + n474_suspend_β]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_income$2F2_γ
n474_suspend_β:
                                                                                        jmp   n454_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n476_lit_integer_α
.Lx547_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n477_op11_α
.Lx548_0:
                        .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n467_op11_α
                                                                                        jmp   n478_op11_α
n477_op11_β:
                                                                                        jmp   n467_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n478_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n467_op11_α
                                                                                        jmp   n479_suspend_α
n478_op11_β:
                                                                                        jmp   n467_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n479_suspend_α:
                        lea              rax, [rip + n479_suspend_β]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_income$2F2_γ
n479_suspend_β:
                                                                                        jmp   n467_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_income$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_income$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1552]
#-----------------------------------------------------------------------------------------------------------------------
proc_income$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_income$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1592]
                        mov              rbp, [rbp + 1608]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_income$2F2_ω:
                        mov              rax, [rbp + 1600]
                        lea              rsp, [rbp + 1616]
                        mov              rbp, [rbp + 1608]
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
                        lea              rax, [rip + n565_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n553_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx575_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx575_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx575_101
.Lx575_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx575_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n554_var_ref_α
n553_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n555_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n556_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n556_op11_α:
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
.Lx580_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx580_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx580_41
                        cmp              esi, 1
                                                                                        jne   .Lx580_55
                        mov              r8, rax
                                                                                        jmp   .Lx580_40
.Lx580_55:
                        cmp              esi, 2
                                                                                        jne   .Lx580_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx580_41
                        mov              r8, rax
                                                                                        jmp   .Lx580_40
.Lx580_56:
                        cmp              eax, 13
                                                                                        jne   .Lx580_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx580_41
                        cmp              rax, r8
                                                                                        je    .Lx580_41
                        mov              r8, rax
                                                                                        jmp   .Lx580_40
.Lx580_41:
                        lea              r9, [rbp + 608]
.Lx580_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx580_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx580_43
                        cmp              esi, 1
                                                                                        jne   .Lx580_57
                        mov              r9, rax
                                                                                        jmp   .Lx580_42
.Lx580_57:
                        cmp              esi, 2
                                                                                        jne   .Lx580_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx580_43
                        mov              r9, rax
                                                                                        jmp   .Lx580_42
.Lx580_58:
                        cmp              eax, 13
                                                                                        jne   .Lx580_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx580_43
                        cmp              rax, r9
                                                                                        je    .Lx580_43
                        mov              r9, rax
                                                                                        jmp   .Lx580_42
.Lx580_43:
                        cmp              r8, r9
                                                                                        je    .Lx580_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx580_44
                        cmp              eax, 99
                                                                                        je    .Lx580_44
                        cmp              eax, 13
                                                                                        jne   .Lx580_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx580_44
                                                                                        jmp   .Lx580_45
.Lx580_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx580_53
                        cmp              eax, 99
                                                                                        je    .Lx580_53
                        cmp              eax, 13
                                                                                        jne   .Lx580_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx580_53
                                                                                        jmp   .Lx580_46
.Lx580_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx580_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx580_53
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
                                                                                        jmp   .Lx580_51
.Lx580_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx580_47
                        cmp              eax, 99
                                                                                        je    .Lx580_47
                        cmp              eax, 13
                                                                                        jne   .Lx580_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx580_47
                                                                                        jmp   .Lx580_48
.Lx580_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx580_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx580_53
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
                                                                                        jmp   .Lx580_51
.Lx580_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx580_49
                        cmp              edx, 14
                                                                                        je    .Lx580_53
                                                                                        jmp   .Lx580_52
.Lx580_49:
                        cmp              edx, 14
                                                                                        je    .Lx580_52
                        cmp              ecx, 7
                                                                                        je    .Lx580_53
                        cmp              edx, 7
                                                                                        je    .Lx580_53
                        cmp              ecx, 6
                                                                                        jne   .Lx580_50
                        cmp              edx, 6
                                                                                        jne   .Lx580_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx580_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx580_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx580_51
                                                                                        jmp   .Lx580_52
.Lx580_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx580_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx580_53
.Lx580_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx580_54
.Lx580_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx580_54
.Lx580_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx580_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n558_op11_α
                                                                                        jmp   n557_var_ref_α
n556_op11_β:
                                                                                        jmp   n558_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n559_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n558_op11_α:
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
                                                                                        jmp   n560_var_ref_α
n558_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n561_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n562_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n561_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n563_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n564_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n563_op11_α:
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
                        lea              r9, [rbp + 512]
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
                        lea              rcx, [rbp + 528]
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
                        lea              r9, [rbp + 512]
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
                        lea              rcx, [rbp + 528]
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n558_op11_α
                                                                                        jmp   n565_suspend_α
n563_op11_β:
                                                                                        jmp   n558_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n564_op11_α:
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
.Lx593_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx593_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_41
                        cmp              esi, 1
                                                                                        jne   .Lx593_55
                        mov              r8, rax
                                                                                        jmp   .Lx593_40
.Lx593_55:
                        cmp              esi, 2
                                                                                        jne   .Lx593_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx593_41
                        mov              r8, rax
                                                                                        jmp   .Lx593_40
.Lx593_56:
                        cmp              eax, 13
                                                                                        jne   .Lx593_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_41
                        cmp              rax, r8
                                                                                        je    .Lx593_41
                        mov              r8, rax
                                                                                        jmp   .Lx593_40
.Lx593_41:
                        lea              r9, [rbp + 368]
.Lx593_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx593_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_43
                        cmp              esi, 1
                                                                                        jne   .Lx593_57
                        mov              r9, rax
                                                                                        jmp   .Lx593_42
.Lx593_57:
                        cmp              esi, 2
                                                                                        jne   .Lx593_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx593_43
                        mov              r9, rax
                                                                                        jmp   .Lx593_42
.Lx593_58:
                        cmp              eax, 13
                                                                                        jne   .Lx593_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_43
                        cmp              rax, r9
                                                                                        je    .Lx593_43
                        mov              r9, rax
                                                                                        jmp   .Lx593_42
.Lx593_43:
                        cmp              r8, r9
                                                                                        je    .Lx593_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx593_44
                        cmp              eax, 99
                                                                                        je    .Lx593_44
                        cmp              eax, 13
                                                                                        jne   .Lx593_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx593_44
                                                                                        jmp   .Lx593_45
.Lx593_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx593_53
                        cmp              eax, 99
                                                                                        je    .Lx593_53
                        cmp              eax, 13
                                                                                        jne   .Lx593_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx593_53
                                                                                        jmp   .Lx593_46
.Lx593_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx593_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx593_53
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
                                                                                        jmp   .Lx593_51
.Lx593_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx593_47
                        cmp              eax, 99
                                                                                        je    .Lx593_47
                        cmp              eax, 13
                                                                                        jne   .Lx593_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx593_47
                                                                                        jmp   .Lx593_48
.Lx593_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx593_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx593_53
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
                                                                                        jmp   .Lx593_51
.Lx593_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx593_49
                        cmp              edx, 14
                                                                                        je    .Lx593_53
                                                                                        jmp   .Lx593_52
.Lx593_49:
                        cmp              edx, 14
                                                                                        je    .Lx593_52
                        cmp              ecx, 7
                                                                                        je    .Lx593_53
                        cmp              edx, 7
                                                                                        je    .Lx593_53
                        cmp              ecx, 6
                                                                                        jne   .Lx593_50
                        cmp              edx, 6
                                                                                        jne   .Lx593_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx593_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx593_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx593_51
                                                                                        jmp   .Lx593_52
.Lx593_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx593_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx593_53
.Lx593_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx593_54
.Lx593_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx593_54
.Lx593_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx593_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n567_op11_α
                                                                                        jmp   n566_var_ref_α
n564_op11_β:
                                                                                        jmp   n567_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n565_suspend_α:
                        lea              rax, [rip + n565_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n565_suspend_β:
                                                                                        jmp   n558_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n567_op11_α:
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
n567_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n569_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n570_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n570_op11_α:
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
.Lx603_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_61
                        cmp              esi, 1
                                                                                        jne   .Lx603_62
                        mov              r8, rax
                                                                                        jmp   .Lx603_60
.Lx603_62:
                        cmp              esi, 2
                                                                                        jne   .Lx603_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_61
                        mov              r8, rax
                                                                                        jmp   .Lx603_60
.Lx603_63:
                        cmp              eax, 13
                                                                                        jne   .Lx603_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_61
                        cmp              rax, r8
                                                                                        je    .Lx603_61
                        mov              r8, rax
                                                                                        jmp   .Lx603_60
.Lx603_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_80
                        cmp              eax, 99
                                                                                        je    .Lx603_80
                        cmp              eax, 13
                                                                                        jne   .Lx603_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx603_80
                                                                                        jmp   .Lx603_74
.Lx603_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx603_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx603_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx603_73
                        lea              r9, [rbp + 272]
.Lx603_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_65
                        cmp              esi, 1
                                                                                        jne   .Lx603_66
                        mov              r9, rax
                                                                                        jmp   .Lx603_64
.Lx603_66:
                        cmp              esi, 2
                                                                                        jne   .Lx603_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_65
                        mov              r9, rax
                                                                                        jmp   .Lx603_64
.Lx603_67:
                        cmp              eax, 13
                                                                                        jne   .Lx603_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_65
                        cmp              rax, r9
                                                                                        je    .Lx603_65
                        mov              r9, rax
                                                                                        jmp   .Lx603_64
.Lx603_65:
                        lea              rcx, [rbp + 288]
.Lx603_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx603_69
                        cmp              esi, 1
                                                                                        jne   .Lx603_70
                        mov              rcx, rax
                                                                                        jmp   .Lx603_68
.Lx603_70:
                        cmp              esi, 2
                                                                                        jne   .Lx603_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_69
                        mov              rcx, rax
                                                                                        jmp   .Lx603_68
.Lx603_71:
                        cmp              eax, 13
                                                                                        jne   .Lx603_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx603_69
                        cmp              rax, rcx
                                                                                        je    .Lx603_69
                        mov              rcx, rax
                                                                                        jmp   .Lx603_68
.Lx603_69:
                        cmp              r9, rcx
                                                                                        je    .Lx603_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_75
                        cmp              eax, 99
                                                                                        je    .Lx603_75
                        cmp              eax, 13
                                                                                        jne   .Lx603_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx603_75
                                                                                        jmp   .Lx603_72
.Lx603_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_76
                        cmp              eax, 99
                                                                                        je    .Lx603_76
                        cmp              eax, 13
                                                                                        jne   .Lx603_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx603_76
                                                                                        jmp   .Lx603_72
.Lx603_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx603_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx603_72
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
                                                                                        jmp   .Lx603_77
.Lx603_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx603_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx603_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx603_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx603_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx603_72
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
.Lx603_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_82
                        cmp              esi, 1
                                                                                        jne   .Lx603_83
                        mov              r9, rax
                                                                                        jmp   .Lx603_81
.Lx603_83:
                        cmp              esi, 2
                                                                                        jne   .Lx603_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_82
                        mov              r9, rax
                                                                                        jmp   .Lx603_81
.Lx603_84:
                        cmp              eax, 13
                                                                                        jne   .Lx603_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_82
                        cmp              rax, r9
                                                                                        je    .Lx603_82
                        mov              r9, rax
                                                                                        jmp   .Lx603_81
.Lx603_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_85
                        cmp              eax, 99
                                                                                        je    .Lx603_85
                        cmp              eax, 13
                                                                                        jne   .Lx603_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx603_85
                                                                                        jmp   .Lx603_86
.Lx603_85:
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
                                                                                        jmp   .Lx603_87
.Lx603_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx603_87:
                        lea              rcx, [rbp + 288]
.Lx603_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx603_89
                        cmp              esi, 1
                                                                                        jne   .Lx603_90
                        mov              rcx, rax
                                                                                        jmp   .Lx603_88
.Lx603_90:
                        cmp              esi, 2
                                                                                        jne   .Lx603_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_89
                        mov              rcx, rax
                                                                                        jmp   .Lx603_88
.Lx603_91:
                        cmp              eax, 13
                                                                                        jne   .Lx603_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx603_89
                        cmp              rax, rcx
                                                                                        je    .Lx603_89
                        mov              rcx, rax
                                                                                        jmp   .Lx603_88
.Lx603_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_92
                        cmp              eax, 99
                                                                                        je    .Lx603_92
                        cmp              eax, 13
                                                                                        jne   .Lx603_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx603_92
                                                                                        jmp   .Lx603_93
.Lx603_92:
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
                                                                                        jmp   .Lx603_94
.Lx603_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx603_94:
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
                                                                                        jmp   .Lx603_77
.Lx603_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx603_77
.Lx603_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx603_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n567_op11_α
                                                                                        jmp   n571_var_ref_α
n570_op11_β:
                                                                                        jmp   n567_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n572_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n573_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx609_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx609_21
.Lx609_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx609_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx609_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx609_23
.Lx609_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx609_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx609_1
                        lea              rcx, [rip + .Lx609_3]
                        lea              rdx, [rip + .Lx609_4]
                                                                                        jmp   rax
.Lx609_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx609_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx609_2
.Lx609_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx609_2
.Lx609_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx609_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx609_2
.Lx609_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx609_2
.Lx609_1:
                        call             rt_faildescr@PLT
.Lx609_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n567_op11_α
                                                                                        jmp   n574_suspend_α
n573_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n574_suspend_α:
                        lea              rax, [rip + n574_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n574_suspend_β:
                                                                                        jmp   n573_call_proc_staged_β
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
                        .globl           proc_display$2F4_α
proc_display$2F4_α:
                        .global          proc_display$2F4_α
                        .global          proc_display$2F4_β
                        .global          proc_display$2F4_γ
                        .global          proc_display$2F4_ω
                        sub              rsp, 1024
                        mov              [rsp + 1000], rcx
                        mov              [rsp + 1008], rdx
                        mov              [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 928
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
proc_display$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n612_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx646_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx646_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx646_101
.Lx646_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx646_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F4_ω
                                                                                        jmp   n613_var_ref_α
n612_op11_β:
                                                                                        jmp   proc_display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n614_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n615_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n615_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 864]
                        lea              r8, [rbp + 864]
.Lx651_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx651_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        cmp              esi, 1
                                                                                        jne   .Lx651_55
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_55:
                        cmp              esi, 2
                                                                                        jne   .Lx651_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_56:
                        cmp              eax, 13
                                                                                        jne   .Lx651_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        cmp              rax, r8
                                                                                        je    .Lx651_41
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_41:
                        lea              r9, [rbp + 880]
.Lx651_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx651_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        cmp              esi, 1
                                                                                        jne   .Lx651_57
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_57:
                        cmp              esi, 2
                                                                                        jne   .Lx651_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_58:
                        cmp              eax, 13
                                                                                        jne   .Lx651_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        cmp              rax, r9
                                                                                        je    .Lx651_43
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_43:
                        cmp              r8, r9
                                                                                        je    .Lx651_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_44
                        cmp              eax, 99
                                                                                        je    .Lx651_44
                        cmp              eax, 13
                                                                                        jne   .Lx651_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx651_44
                                                                                        jmp   .Lx651_45
.Lx651_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_53
                        cmp              eax, 99
                                                                                        je    .Lx651_53
                        cmp              eax, 13
                                                                                        jne   .Lx651_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx651_53
                                                                                        jmp   .Lx651_46
.Lx651_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx651_53
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
                                                                                        jmp   .Lx651_51
.Lx651_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_47
                        cmp              eax, 99
                                                                                        je    .Lx651_47
                        cmp              eax, 13
                                                                                        jne   .Lx651_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx651_47
                                                                                        jmp   .Lx651_48
.Lx651_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx651_53
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
                                                                                        jmp   .Lx651_51
.Lx651_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx651_49
                        cmp              edx, 14
                                                                                        je    .Lx651_53
                                                                                        jmp   .Lx651_52
.Lx651_49:
                        cmp              edx, 14
                                                                                        je    .Lx651_52
                        cmp              ecx, 7
                                                                                        je    .Lx651_53
                        cmp              edx, 7
                                                                                        je    .Lx651_53
                        cmp              ecx, 6
                                                                                        jne   .Lx651_50
                        cmp              edx, 6
                                                                                        jne   .Lx651_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx651_51
                                                                                        jmp   .Lx651_52
.Lx651_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx651_53
.Lx651_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx651_54
.Lx651_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx651_54
.Lx651_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx651_54:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n616_var_ref_α
n615_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n618_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n617_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F4_ω
                                                                                        jmp   proc_display$2F4_ω
n617_op11_β:
                                                                                        jmp   proc_display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n619_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n619_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx657_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx657_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx657_41
                        cmp              esi, 1
                                                                                        jne   .Lx657_55
                        mov              r8, rax
                                                                                        jmp   .Lx657_40
.Lx657_55:
                        cmp              esi, 2
                                                                                        jne   .Lx657_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx657_41
                        mov              r8, rax
                                                                                        jmp   .Lx657_40
.Lx657_56:
                        cmp              eax, 13
                                                                                        jne   .Lx657_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx657_41
                        cmp              rax, r8
                                                                                        je    .Lx657_41
                        mov              r8, rax
                                                                                        jmp   .Lx657_40
.Lx657_41:
                        lea              r9, [rbp + 800]
.Lx657_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx657_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx657_43
                        cmp              esi, 1
                                                                                        jne   .Lx657_57
                        mov              r9, rax
                                                                                        jmp   .Lx657_42
.Lx657_57:
                        cmp              esi, 2
                                                                                        jne   .Lx657_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx657_43
                        mov              r9, rax
                                                                                        jmp   .Lx657_42
.Lx657_58:
                        cmp              eax, 13
                                                                                        jne   .Lx657_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx657_43
                        cmp              rax, r9
                                                                                        je    .Lx657_43
                        mov              r9, rax
                                                                                        jmp   .Lx657_42
.Lx657_43:
                        cmp              r8, r9
                                                                                        je    .Lx657_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx657_44
                        cmp              eax, 99
                                                                                        je    .Lx657_44
                        cmp              eax, 13
                                                                                        jne   .Lx657_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx657_44
                                                                                        jmp   .Lx657_45
.Lx657_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx657_53
                        cmp              eax, 99
                                                                                        je    .Lx657_53
                        cmp              eax, 13
                                                                                        jne   .Lx657_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx657_53
                                                                                        jmp   .Lx657_46
.Lx657_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx657_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx657_53
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
                                                                                        jmp   .Lx657_51
.Lx657_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx657_47
                        cmp              eax, 99
                                                                                        je    .Lx657_47
                        cmp              eax, 13
                                                                                        jne   .Lx657_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx657_47
                                                                                        jmp   .Lx657_48
.Lx657_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx657_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx657_53
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
                                                                                        jmp   .Lx657_51
.Lx657_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx657_49
                        cmp              edx, 14
                                                                                        je    .Lx657_53
                                                                                        jmp   .Lx657_52
.Lx657_49:
                        cmp              edx, 14
                                                                                        je    .Lx657_52
                        cmp              ecx, 7
                                                                                        je    .Lx657_53
                        cmp              edx, 7
                                                                                        je    .Lx657_53
                        cmp              ecx, 6
                                                                                        jne   .Lx657_50
                        cmp              edx, 6
                                                                                        jne   .Lx657_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx657_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx657_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx657_51
                                                                                        jmp   .Lx657_52
.Lx657_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx657_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx657_53
.Lx657_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx657_54
.Lx657_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx657_54
.Lx657_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx657_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n620_var_ref_α
n619_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n621_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n622_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        lea              r8, [rbp + 704]
.Lx662_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx662_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_41
                        cmp              esi, 1
                                                                                        jne   .Lx662_55
                        mov              r8, rax
                                                                                        jmp   .Lx662_40
.Lx662_55:
                        cmp              esi, 2
                                                                                        jne   .Lx662_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx662_41
                        mov              r8, rax
                                                                                        jmp   .Lx662_40
.Lx662_56:
                        cmp              eax, 13
                                                                                        jne   .Lx662_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_41
                        cmp              rax, r8
                                                                                        je    .Lx662_41
                        mov              r8, rax
                                                                                        jmp   .Lx662_40
.Lx662_41:
                        lea              r9, [rbp + 720]
.Lx662_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx662_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_43
                        cmp              esi, 1
                                                                                        jne   .Lx662_57
                        mov              r9, rax
                                                                                        jmp   .Lx662_42
.Lx662_57:
                        cmp              esi, 2
                                                                                        jne   .Lx662_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx662_43
                        mov              r9, rax
                                                                                        jmp   .Lx662_42
.Lx662_58:
                        cmp              eax, 13
                                                                                        jne   .Lx662_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_43
                        cmp              rax, r9
                                                                                        je    .Lx662_43
                        mov              r9, rax
                                                                                        jmp   .Lx662_42
.Lx662_43:
                        cmp              r8, r9
                                                                                        je    .Lx662_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx662_44
                        cmp              eax, 99
                                                                                        je    .Lx662_44
                        cmp              eax, 13
                                                                                        jne   .Lx662_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx662_44
                                                                                        jmp   .Lx662_45
.Lx662_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx662_53
                        cmp              eax, 99
                                                                                        je    .Lx662_53
                        cmp              eax, 13
                                                                                        jne   .Lx662_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx662_53
                                                                                        jmp   .Lx662_46
.Lx662_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx662_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx662_53
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
                                                                                        jmp   .Lx662_51
.Lx662_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx662_47
                        cmp              eax, 99
                                                                                        je    .Lx662_47
                        cmp              eax, 13
                                                                                        jne   .Lx662_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx662_47
                                                                                        jmp   .Lx662_48
.Lx662_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx662_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx662_53
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
                                                                                        jmp   .Lx662_51
.Lx662_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx662_49
                        cmp              edx, 14
                                                                                        je    .Lx662_53
                                                                                        jmp   .Lx662_52
.Lx662_49:
                        cmp              edx, 14
                                                                                        je    .Lx662_52
                        cmp              ecx, 7
                                                                                        je    .Lx662_53
                        cmp              edx, 7
                                                                                        je    .Lx662_53
                        cmp              ecx, 6
                                                                                        jne   .Lx662_50
                        cmp              edx, 6
                                                                                        jne   .Lx662_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx662_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx662_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx662_51
                                                                                        jmp   .Lx662_52
.Lx662_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx662_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx662_53
.Lx662_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx662_54
.Lx662_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx662_54
.Lx662_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx662_54:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n623_var_ref_α
n622_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n624_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n625_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n625_op11_α:
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
.Lx667_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx667_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx667_41
                        cmp              esi, 1
                                                                                        jne   .Lx667_55
                        mov              r8, rax
                                                                                        jmp   .Lx667_40
.Lx667_55:
                        cmp              esi, 2
                                                                                        jne   .Lx667_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx667_41
                        mov              r8, rax
                                                                                        jmp   .Lx667_40
.Lx667_56:
                        cmp              eax, 13
                                                                                        jne   .Lx667_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx667_41
                        cmp              rax, r8
                                                                                        je    .Lx667_41
                        mov              r8, rax
                                                                                        jmp   .Lx667_40
.Lx667_41:
                        lea              r9, [rbp + 640]
.Lx667_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx667_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx667_43
                        cmp              esi, 1
                                                                                        jne   .Lx667_57
                        mov              r9, rax
                                                                                        jmp   .Lx667_42
.Lx667_57:
                        cmp              esi, 2
                                                                                        jne   .Lx667_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx667_43
                        mov              r9, rax
                                                                                        jmp   .Lx667_42
.Lx667_58:
                        cmp              eax, 13
                                                                                        jne   .Lx667_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx667_43
                        cmp              rax, r9
                                                                                        je    .Lx667_43
                        mov              r9, rax
                                                                                        jmp   .Lx667_42
.Lx667_43:
                        cmp              r8, r9
                                                                                        je    .Lx667_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx667_44
                        cmp              eax, 99
                                                                                        je    .Lx667_44
                        cmp              eax, 13
                                                                                        jne   .Lx667_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx667_44
                                                                                        jmp   .Lx667_45
.Lx667_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx667_53
                        cmp              eax, 99
                                                                                        je    .Lx667_53
                        cmp              eax, 13
                                                                                        jne   .Lx667_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx667_53
                                                                                        jmp   .Lx667_46
.Lx667_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx667_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx667_53
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
                                                                                        jmp   .Lx667_51
.Lx667_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx667_47
                        cmp              eax, 99
                                                                                        je    .Lx667_47
                        cmp              eax, 13
                                                                                        jne   .Lx667_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx667_47
                                                                                        jmp   .Lx667_48
.Lx667_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx667_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx667_53
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
                                                                                        jmp   .Lx667_51
.Lx667_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx667_49
                        cmp              edx, 14
                                                                                        je    .Lx667_53
                                                                                        jmp   .Lx667_52
.Lx667_49:
                        cmp              edx, 14
                                                                                        je    .Lx667_52
                        cmp              ecx, 7
                                                                                        je    .Lx667_53
                        cmp              edx, 7
                                                                                        je    .Lx667_53
                        cmp              ecx, 6
                                                                                        jne   .Lx667_50
                        cmp              edx, 6
                                                                                        jne   .Lx667_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx667_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx667_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx667_51
                                                                                        jmp   .Lx667_52
.Lx667_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx667_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx667_53
.Lx667_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx667_54
.Lx667_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx667_54
.Lx667_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx667_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n626_lit_string_α
n625_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n627_op11_α
.Lx668_0:
                        .quad            .Lx668_0_s
.Lx668_0_s:
                        .string          "Carter="
#-----------------------------------------------------------------------------------------------------------------------
n627_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn670:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn670]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n628_var_α
n627_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n628_var_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n629_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n629_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn674:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn674]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n630_lit_string_α
n629_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n631_op11_α
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          " Flynn="
#-----------------------------------------------------------------------------------------------------------------------
n631_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn677:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn677]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n632_var_α
n631_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n632_var_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n633_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n633_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn681:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn681]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n634_lit_string_α
n633_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n635_op11_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          " Milne="
#-----------------------------------------------------------------------------------------------------------------------
n635_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn684:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn684]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n636_var_α
n635_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n636_var_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n637_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n637_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn688:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn688]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n638_lit_string_α
n637_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n639_op11_α
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          " Savage="
#-----------------------------------------------------------------------------------------------------------------------
n639_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn691:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn691]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n640_var_α
n639_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n641_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n641_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn695:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn695]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n642_lit_string_α
n641_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n642_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n643_op11_α
.Lx696_0:
                        .quad            .Lx696_0_s
.Lx696_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n643_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn698:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn698]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n644_move_label_α
n643_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n644_move_label_α:
                        lea              rax, [rip + n617_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_display$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n645_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n645_disjunction_β:
                                                                                        jmp   proc_display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F4_β:
                                                                                        jmp   n645_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1000]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F4_ω:
                        mov              rax, [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F4_dcα:
                        pop              r11
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 992], r11
                        lea              rax, [rip + .Lx703_2]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rax, [rip + .Lx703_3]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 928
                        mov              edx, 992
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_display$2F4_α_body
.Lx703_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1024
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx703_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1024
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "differ/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_differ$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2816
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
                        mov              esi, 1472
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "occupation/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_occupation$2F1_α]
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
.Lstartup_pname4:       .string          "income/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_income$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1584
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
.Lstartup_pname6:       .string          "display/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_display$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 992
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_display$2F4_dcα]
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
                        sub              rsp, 152
                        mov              rdi, rsp
                        mov              ecx, 152
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 144], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n704_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx709_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx709_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx709_101
.Lx709_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx709_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n705_call_proc_staged_α
n704_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n705_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx711_1
                        lea              rcx, [rip + .Lx711_3]
                        lea              rdx, [rip + .Lx711_4]
                                                                                        jmp   rax
.Lx711_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx711_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx711_2
.Lx711_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx711_2
.Lx711_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx711_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx711_2
.Lx711_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx711_2
.Lx711_1:
                        call             rt_faildescr@PLT
.Lx711_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n707_op11_α
                                                                                        jmp   n706_move_label_α
n705_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n706_move_label_α:
                        lea              rax, [rip + n705_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n707_op11_α:
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
n707_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n708_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n708_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n708_disjunction_α
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
