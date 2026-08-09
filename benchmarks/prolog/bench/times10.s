                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_d$2F3_α
proc_d$2F3_α:
                        sub              rsp, 8272
                        mov              qword ptr [rsp + 8248], rcx
                        mov              qword ptr [rsp + 8256], rdx
                        mov              qword ptr [rsp + 8264], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 8240
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 3
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
proc_d$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx278_102
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                                                                                        jmp   .Lx278_101
.Lx278_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx278_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx278_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx278_101
.Lx278_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx278_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 8096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 8104], rax
                                                                                        jmp   n3_lit_string_α
.Lx281_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 8112], 2                      # result
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 8120], rax
                                                                                        jmp   n4_call_builtin_prolog_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 8112]
                        mov              qword ptr [rbp + 8064], rax
                        mov              rax, qword ptr [rbp + 8120]
                        mov              qword ptr [rbp + 8072], rax
                        mov              rax, qword ptr [rbp + 8096]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8104]
                        mov              qword ptr [rbp + 8056], rax
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 8032], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 8040], rax
                        lea              rdi, [rbp + 8032]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 8016], rax
                        mov              qword ptr [rbp + 8024], rdx
                        cmp              eax, 104
                                                                                        je    n31_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 8000], 2                      # result
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n7_var_ref_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                                                                                        jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                                                                                        jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7904]
                        mov              qword ptr [rbp + 7968], rax
                        mov              rax, qword ptr [rbp + 7912]
                        mov              qword ptr [rbp + 7976], rax
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7960], rax
                        mov              rax, qword ptr [rbp + 8000]
                        mov              qword ptr [rbp + 7936], rax
                        mov              rax, qword ptr [rbp + 8008]
                        mov              qword ptr [rbp + 7944], rax
                        lea              rdi, [rbp + 7936]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                        cmp              eax, 104
                                                                                        je    n30_call_builtin_prolog_α
                                                                                        jmp   n10_call_builtin_prolog_α
n9_call_builtin_prolog_β:
                                                                                        jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7920]
                        mov              qword ptr [rbp + 7856], rax
                        mov              rax, qword ptr [rbp + 7928]
                        mov              qword ptr [rbp + 7864], rax
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7848], rax
                        lea              rdi, [rbp + 7840]
                        lea              r8, [rbp + 7840]
.Lx292_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx292_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        cmp              esi, 1
                                                                                        jne   .Lx292_55
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_55:
                        cmp              esi, 2
                                                                                        jne   .Lx292_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_56:
                        cmp              eax, 72
                                                                                        jne   .Lx292_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        cmp              rax, r8
                                                                                        je    .Lx292_41
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_41:
                        lea              r9, [rbp + 7856]
.Lx292_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx292_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        cmp              esi, 1
                                                                                        jne   .Lx292_57
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_57:
                        cmp              esi, 2
                                                                                        jne   .Lx292_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_58:
                        cmp              eax, 72
                                                                                        jne   .Lx292_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        cmp              rax, r9
                                                                                        je    .Lx292_43
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_43:
                        cmp              r8, r9
                                                                                        je    .Lx292_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_44
                        cmp              eax, 104
                                                                                        je    .Lx292_44
                        cmp              eax, 72
                                                                                        jne   .Lx292_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx292_44
                                                                                        jmp   .Lx292_45
.Lx292_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_53
                        cmp              eax, 104
                                                                                        je    .Lx292_53
                        cmp              eax, 72
                                                                                        jne   .Lx292_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_53
                                                                                        jmp   .Lx292_46
.Lx292_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx292_53
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
                                                                                        jmp   .Lx292_51
.Lx292_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_47
                        cmp              eax, 104
                                                                                        je    .Lx292_47
                        cmp              eax, 72
                                                                                        jne   .Lx292_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_47
                                                                                        jmp   .Lx292_48
.Lx292_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx292_53
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
                                                                                        jmp   .Lx292_51
.Lx292_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx292_49
                        cmp              edx, 80
                                                                                        je    .Lx292_53
                                                                                        jmp   .Lx292_52
.Lx292_49:
                        cmp              edx, 80
                                                                                        je    .Lx292_52
                        cmp              ecx, 5
                                                                                        je    .Lx292_53
                        cmp              edx, 5
                                                                                        je    .Lx292_53
                        cmp              ecx, 3
                                                                                        jne   .Lx292_50
                        cmp              edx, 3
                                                                                        jne   .Lx292_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx292_51
                                                                                        jmp   .Lx292_52
.Lx292_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx292_53
.Lx292_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx292_54
.Lx292_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx292_54
.Lx292_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx292_54:
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              eax, 104
                                                                                        je    n30_call_builtin_prolog_α
                                                                                        jmp   n11_var_ref_α
n10_call_builtin_prolog_β:
                                                                                        jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                                                                                        jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7808]
                        mov              qword ptr [rbp + 7776], rax
                        mov              rax, qword ptr [rbp + 7816]
                        mov              qword ptr [rbp + 7784], rax
                        mov              rax, qword ptr [rbp + 7792]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7800]
                        mov              qword ptr [rbp + 7768], rax
                        lea              rdi, [rbp + 7760]
                        lea              r8, [rbp + 7760]
.Lx297_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx297_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx297_41
                        cmp              rax, r8
                                                                                        je    .Lx297_41
                        mov              r8, rax
                                                                                        jmp   .Lx297_40
.Lx297_41:
                        lea              r9, [rbp + 7776]
.Lx297_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx297_44
                        cmp              eax, 72
                                                                                        jne   .Lx297_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx297_44
                                                                                        jmp   .Lx297_45
.Lx297_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx297_53
                        cmp              eax, 104
                                                                                        je    .Lx297_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx297_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx297_49
                        cmp              edx, 80
                                                                                        je    .Lx297_53
                                                                                        jmp   .Lx297_52
.Lx297_49:
                        cmp              edx, 80
                                                                                        je    .Lx297_52
                        cmp              ecx, 5
                                                                                        je    .Lx297_53
                        cmp              edx, 5
                                                                                        je    .Lx297_53
                        cmp              ecx, 3
                                                                                        jne   .Lx297_50
                        cmp              edx, 3
                                                                                        jne   .Lx297_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx297_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx297_54
.Lx297_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx297_54:
                        mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              eax, 104
                                                                                        je    n30_call_builtin_prolog_α
                                                                                        jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                                                                                        jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 7728], 2                      # result
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 7736], rax
                                                                                        jmp   n16_var_ref_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                                                                                        jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7704], rax
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7688], rax
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7672], rax
                        lea              rdi, [rbp + 7664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              eax, 104
                                                                                        je    n30_call_builtin_prolog_α
                                                                                        jmp   n19_call_builtin_prolog_α
n18_call_builtin_prolog_β:
                                                                                        jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7592], rax
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 7568], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7576], rax
                        lea              rdi, [rbp + 7568]
                        lea              r8, [rbp + 7568]
.Lx306_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx306_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        cmp              esi, 1
                                                                                        jne   .Lx306_55
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_55:
                        cmp              esi, 2
                                                                                        jne   .Lx306_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_56:
                        cmp              eax, 72
                                                                                        jne   .Lx306_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        cmp              rax, r8
                                                                                        je    .Lx306_41
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_41:
                        lea              r9, [rbp + 7584]
.Lx306_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx306_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        cmp              esi, 1
                                                                                        jne   .Lx306_57
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_57:
                        cmp              esi, 2
                                                                                        jne   .Lx306_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_58:
                        cmp              eax, 72
                                                                                        jne   .Lx306_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        cmp              rax, r9
                                                                                        je    .Lx306_43
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_43:
                        cmp              r8, r9
                                                                                        je    .Lx306_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_44
                        cmp              eax, 104
                                                                                        je    .Lx306_44
                        cmp              eax, 72
                                                                                        jne   .Lx306_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx306_44
                                                                                        jmp   .Lx306_45
.Lx306_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_53
                        cmp              eax, 104
                                                                                        je    .Lx306_53
                        cmp              eax, 72
                                                                                        jne   .Lx306_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx306_53
                                                                                        jmp   .Lx306_46
.Lx306_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx306_53
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
                                                                                        jmp   .Lx306_51
.Lx306_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_47
                        cmp              eax, 104
                                                                                        je    .Lx306_47
                        cmp              eax, 72
                                                                                        jne   .Lx306_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx306_47
                                                                                        jmp   .Lx306_48
.Lx306_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx306_53
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
                                                                                        jmp   .Lx306_51
.Lx306_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx306_49
                        cmp              edx, 80
                                                                                        je    .Lx306_53
                                                                                        jmp   .Lx306_52
.Lx306_49:
                        cmp              edx, 80
                                                                                        je    .Lx306_52
                        cmp              ecx, 5
                                                                                        je    .Lx306_53
                        cmp              edx, 5
                                                                                        je    .Lx306_53
                        cmp              ecx, 3
                                                                                        jne   .Lx306_50
                        cmp              edx, 3
                                                                                        jne   .Lx306_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx306_51
                                                                                        jmp   .Lx306_52
.Lx306_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx306_53
.Lx306_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx306_54
.Lx306_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx306_54
.Lx306_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx306_54:
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              eax, 104
                                                                                        je    n30_call_builtin_prolog_α
                                                                                        jmp   n20_cut_α
n19_call_builtin_prolog_β:
                                                                                        jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_cut_α:
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                                                                                        jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α:
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx315_2
.Lx315_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n25_var_ref_α
n24_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                                                                                        jmp   n28_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α:
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx323_2
.Lx323_2:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              eax, 104
                                                                                        je    n24_call_proc_staged_β
                                                                                        jmp   n29_move_label_α
n28_call_proc_staged_β:
                                                                                        jmp   n24_call_proc_staged_β
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n29_move_label_α:
                        lea              rax, [rip + n28_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 7288], rax
                        lea              rdi, [rbp + 7280]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                                                                                        jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 7232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n33_lit_string_α
.Lx329_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 7248], 2                      # result
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n34_call_builtin_prolog_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7208], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7192], rax
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7176], rax
                        lea              rdi, [rbp + 7168]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx
                        cmp              eax, 104
                                                                                        je    n61_var_ref_α
                                                                                        jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                                                                                        jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 7136], 2                      # result
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 7144], rax
                                                                                        jmp   n37_var_ref_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                                                                                        jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                                                                                        jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7040]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 7048]
                        mov              qword ptr [rbp + 7112], rax
                        mov              rax, qword ptr [rbp + 7024]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 7096], rax
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7080], rax
                        lea              rdi, [rbp + 7072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                        cmp              eax, 104
                                                                                        je    n60_call_builtin_prolog_α
                                                                                        jmp   n40_call_builtin_prolog_α
n39_call_builtin_prolog_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7056]
                        mov              qword ptr [rbp + 6992], rax
                        mov              rax, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7000], rax
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 6984], rax
                        lea              rdi, [rbp + 6976]
                        lea              r8, [rbp + 6976]
.Lx340_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx340_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_41
                        cmp              esi, 1
                                                                                        jne   .Lx340_55
                        mov              r8, rax
                                                                                        jmp   .Lx340_40
.Lx340_55:
                        cmp              esi, 2
                                                                                        jne   .Lx340_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx340_41
                        mov              r8, rax
                                                                                        jmp   .Lx340_40
.Lx340_56:
                        cmp              eax, 72
                                                                                        jne   .Lx340_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_41
                        cmp              rax, r8
                                                                                        je    .Lx340_41
                        mov              r8, rax
                                                                                        jmp   .Lx340_40
.Lx340_41:
                        lea              r9, [rbp + 6992]
.Lx340_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx340_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_43
                        cmp              esi, 1
                                                                                        jne   .Lx340_57
                        mov              r9, rax
                                                                                        jmp   .Lx340_42
.Lx340_57:
                        cmp              esi, 2
                                                                                        jne   .Lx340_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx340_43
                        mov              r9, rax
                                                                                        jmp   .Lx340_42
.Lx340_58:
                        cmp              eax, 72
                                                                                        jne   .Lx340_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_43
                        cmp              rax, r9
                                                                                        je    .Lx340_43
                        mov              r9, rax
                                                                                        jmp   .Lx340_42
.Lx340_43:
                        cmp              r8, r9
                                                                                        je    .Lx340_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx340_44
                        cmp              eax, 104
                                                                                        je    .Lx340_44
                        cmp              eax, 72
                                                                                        jne   .Lx340_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx340_44
                                                                                        jmp   .Lx340_45
.Lx340_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx340_53
                        cmp              eax, 104
                                                                                        je    .Lx340_53
                        cmp              eax, 72
                                                                                        jne   .Lx340_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx340_53
                                                                                        jmp   .Lx340_46
.Lx340_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx340_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx340_53
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
                                                                                        jmp   .Lx340_51
.Lx340_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx340_47
                        cmp              eax, 104
                                                                                        je    .Lx340_47
                        cmp              eax, 72
                                                                                        jne   .Lx340_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx340_47
                                                                                        jmp   .Lx340_48
.Lx340_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx340_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx340_53
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
                                                                                        jmp   .Lx340_51
.Lx340_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx340_49
                        cmp              edx, 80
                                                                                        je    .Lx340_53
                                                                                        jmp   .Lx340_52
.Lx340_49:
                        cmp              edx, 80
                                                                                        je    .Lx340_52
                        cmp              ecx, 5
                                                                                        je    .Lx340_53
                        cmp              edx, 5
                                                                                        je    .Lx340_53
                        cmp              ecx, 3
                                                                                        jne   .Lx340_50
                        cmp              edx, 3
                                                                                        jne   .Lx340_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx340_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx340_51
                                                                                        jmp   .Lx340_52
.Lx340_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx340_53
.Lx340_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx340_54
.Lx340_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx340_54
.Lx340_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx340_54:
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              eax, 104
                                                                                        je    n60_call_builtin_prolog_α
                                                                                        jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                                                                                        jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                                                                                        jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6920], rax
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6896], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6904], rax
                        lea              rdi, [rbp + 6896]
                        lea              r8, [rbp + 6896]
.Lx345_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx345_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx345_41
                        cmp              esi, 1
                                                                                        jne   .Lx345_55
                        mov              r8, rax
                                                                                        jmp   .Lx345_40
.Lx345_55:
                        cmp              esi, 2
                                                                                        jne   .Lx345_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx345_41
                        mov              r8, rax
                                                                                        jmp   .Lx345_40
.Lx345_56:
                        cmp              eax, 72
                                                                                        jne   .Lx345_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx345_41
                        cmp              rax, r8
                                                                                        je    .Lx345_41
                        mov              r8, rax
                                                                                        jmp   .Lx345_40
.Lx345_41:
                        lea              r9, [rbp + 6912]
.Lx345_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx345_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx345_43
                        cmp              esi, 1
                                                                                        jne   .Lx345_57
                        mov              r9, rax
                                                                                        jmp   .Lx345_42
.Lx345_57:
                        cmp              esi, 2
                                                                                        jne   .Lx345_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx345_43
                        mov              r9, rax
                                                                                        jmp   .Lx345_42
.Lx345_58:
                        cmp              eax, 72
                                                                                        jne   .Lx345_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx345_43
                        cmp              rax, r9
                                                                                        je    .Lx345_43
                        mov              r9, rax
                                                                                        jmp   .Lx345_42
.Lx345_43:
                        cmp              r8, r9
                                                                                        je    .Lx345_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx345_44
                        cmp              eax, 104
                                                                                        je    .Lx345_44
                        cmp              eax, 72
                                                                                        jne   .Lx345_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx345_44
                                                                                        jmp   .Lx345_45
.Lx345_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx345_53
                        cmp              eax, 104
                                                                                        je    .Lx345_53
                        cmp              eax, 72
                                                                                        jne   .Lx345_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx345_53
                                                                                        jmp   .Lx345_46
.Lx345_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx345_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx345_53
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
                                                                                        jmp   .Lx345_51
.Lx345_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx345_47
                        cmp              eax, 104
                                                                                        je    .Lx345_47
                        cmp              eax, 72
                                                                                        jne   .Lx345_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx345_47
                                                                                        jmp   .Lx345_48
.Lx345_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx345_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx345_53
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
                                                                                        jmp   .Lx345_51
.Lx345_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx345_49
                        cmp              edx, 80
                                                                                        je    .Lx345_53
                                                                                        jmp   .Lx345_52
.Lx345_49:
                        cmp              edx, 80
                                                                                        je    .Lx345_52
                        cmp              ecx, 5
                                                                                        je    .Lx345_53
                        cmp              edx, 5
                                                                                        je    .Lx345_53
                        cmp              ecx, 3
                                                                                        jne   .Lx345_50
                        cmp              edx, 3
                                                                                        jne   .Lx345_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx345_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx345_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx345_51
                                                                                        jmp   .Lx345_52
.Lx345_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx345_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx345_53
.Lx345_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx345_54
.Lx345_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx345_54
.Lx345_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx345_54:
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              eax, 104
                                                                                        je    n60_call_builtin_prolog_α
                                                                                        jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 6864], 2                      # result
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n46_var_ref_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                                                                                        jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                                                                                        jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6808], rax
                        lea              rdi, [rbp + 6800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              eax, 104
                                                                                        je    n60_call_builtin_prolog_α
                                                                                        jmp   n49_call_builtin_prolog_α
n48_call_builtin_prolog_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6728], rax
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 6712], rax
                        lea              rdi, [rbp + 6704]
                        lea              r8, [rbp + 6704]
.Lx354_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx354_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx354_41
                        cmp              esi, 1
                                                                                        jne   .Lx354_55
                        mov              r8, rax
                                                                                        jmp   .Lx354_40
.Lx354_55:
                        cmp              esi, 2
                                                                                        jne   .Lx354_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx354_41
                        mov              r8, rax
                                                                                        jmp   .Lx354_40
.Lx354_56:
                        cmp              eax, 72
                                                                                        jne   .Lx354_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx354_41
                        cmp              rax, r8
                                                                                        je    .Lx354_41
                        mov              r8, rax
                                                                                        jmp   .Lx354_40
.Lx354_41:
                        lea              r9, [rbp + 6720]
.Lx354_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx354_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx354_43
                        cmp              esi, 1
                                                                                        jne   .Lx354_57
                        mov              r9, rax
                                                                                        jmp   .Lx354_42
.Lx354_57:
                        cmp              esi, 2
                                                                                        jne   .Lx354_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx354_43
                        mov              r9, rax
                                                                                        jmp   .Lx354_42
.Lx354_58:
                        cmp              eax, 72
                                                                                        jne   .Lx354_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx354_43
                        cmp              rax, r9
                                                                                        je    .Lx354_43
                        mov              r9, rax
                                                                                        jmp   .Lx354_42
.Lx354_43:
                        cmp              r8, r9
                                                                                        je    .Lx354_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx354_44
                        cmp              eax, 104
                                                                                        je    .Lx354_44
                        cmp              eax, 72
                                                                                        jne   .Lx354_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx354_44
                                                                                        jmp   .Lx354_45
.Lx354_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx354_53
                        cmp              eax, 104
                                                                                        je    .Lx354_53
                        cmp              eax, 72
                                                                                        jne   .Lx354_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx354_53
                                                                                        jmp   .Lx354_46
.Lx354_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx354_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx354_53
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
                                                                                        jmp   .Lx354_51
.Lx354_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx354_47
                        cmp              eax, 104
                                                                                        je    .Lx354_47
                        cmp              eax, 72
                                                                                        jne   .Lx354_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx354_47
                                                                                        jmp   .Lx354_48
.Lx354_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx354_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx354_53
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
                                                                                        jmp   .Lx354_51
.Lx354_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx354_49
                        cmp              edx, 80
                                                                                        je    .Lx354_53
                                                                                        jmp   .Lx354_52
.Lx354_49:
                        cmp              edx, 80
                                                                                        je    .Lx354_52
                        cmp              ecx, 5
                                                                                        je    .Lx354_53
                        cmp              edx, 5
                                                                                        je    .Lx354_53
                        cmp              ecx, 3
                                                                                        jne   .Lx354_50
                        cmp              edx, 3
                                                                                        jne   .Lx354_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx354_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx354_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx354_51
                                                                                        jmp   .Lx354_52
.Lx354_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx354_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx354_53
.Lx354_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx354_54
.Lx354_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx354_54
.Lx354_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx354_54:
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 104
                                                                                        je    n60_call_builtin_prolog_α
                                                                                        jmp   n50_cut_α
n49_call_builtin_prolog_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_cut_α:
                                                                                        jmp   n51_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                                                                                        jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                                                                                        jmp   n54_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_proc_staged_α:
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx363_2
.Lx363_2:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n55_var_ref_α
n54_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                                                                                        jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                                                                                        jmp   n58_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_proc_staged_α:
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx371_2
.Lx371_2:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              eax, 104
                                                                                        je    n54_call_proc_staged_β
                                                                                        jmp   n59_move_label_α
n58_call_proc_staged_β:
                                                                                        jmp   n54_call_proc_staged_β
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n59_move_label_α:
                        lea              rax, [rip + n58_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 6416], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 6424], rax
                        lea              rdi, [rbp + 6416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n61_var_ref_α
n60_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 6368], 3                      # result
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n63_lit_string_α
.Lx377_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 6384], 2                      # result
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n64_call_builtin_prolog_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 6344], rax
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6328], rax
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 6312], rax
                        lea              rdi, [rbp + 6304]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx
                        cmp              eax, 104
                                                                                        je    n97_var_ref_α
                                                                                        jmp   n65_var_ref_α
n64_call_builtin_prolog_β:
                                                                                        jmp   n97_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 6272], 2                      # result
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n67_var_ref_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                                                                                        jmp   n68_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                                                                                        jmp   n69_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6248], rax
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6168]
                        mov              qword ptr [rbp + 6232], rax
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6216], rax
                        lea              rdi, [rbp + 6208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                        cmp              eax, 104
                                                                                        je    n96_call_builtin_prolog_α
                                                                                        jmp   n70_call_builtin_prolog_α
n69_call_builtin_prolog_β:
                                                                                        jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6136], rax
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6120], rax
                        lea              rdi, [rbp + 6112]
                        lea              r8, [rbp + 6112]
.Lx388_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx388_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        cmp              esi, 1
                                                                                        jne   .Lx388_55
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_55:
                        cmp              esi, 2
                                                                                        jne   .Lx388_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_56:
                        cmp              eax, 72
                                                                                        jne   .Lx388_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_41
                        cmp              rax, r8
                                                                                        je    .Lx388_41
                        mov              r8, rax
                                                                                        jmp   .Lx388_40
.Lx388_41:
                        lea              r9, [rbp + 6128]
.Lx388_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx388_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        cmp              esi, 1
                                                                                        jne   .Lx388_57
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_57:
                        cmp              esi, 2
                                                                                        jne   .Lx388_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_58:
                        cmp              eax, 72
                                                                                        jne   .Lx388_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx388_43
                        cmp              rax, r9
                                                                                        je    .Lx388_43
                        mov              r9, rax
                                                                                        jmp   .Lx388_42
.Lx388_43:
                        cmp              r8, r9
                                                                                        je    .Lx388_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_44
                        cmp              eax, 104
                                                                                        je    .Lx388_44
                        cmp              eax, 72
                                                                                        jne   .Lx388_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx388_44
                                                                                        jmp   .Lx388_45
.Lx388_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_53
                        cmp              eax, 104
                                                                                        je    .Lx388_53
                        cmp              eax, 72
                                                                                        jne   .Lx388_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx388_53
                                                                                        jmp   .Lx388_46
.Lx388_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx388_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx388_53
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
                                                                                        jmp   .Lx388_51
.Lx388_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx388_47
                        cmp              eax, 104
                                                                                        je    .Lx388_47
                        cmp              eax, 72
                                                                                        jne   .Lx388_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx388_47
                                                                                        jmp   .Lx388_48
.Lx388_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx388_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx388_53
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
                                                                                        jmp   .Lx388_51
.Lx388_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx388_49
                        cmp              edx, 80
                                                                                        je    .Lx388_53
                                                                                        jmp   .Lx388_52
.Lx388_49:
                        cmp              edx, 80
                                                                                        je    .Lx388_52
                        cmp              ecx, 5
                                                                                        je    .Lx388_53
                        cmp              edx, 5
                                                                                        je    .Lx388_53
                        cmp              ecx, 3
                                                                                        jne   .Lx388_50
                        cmp              edx, 3
                                                                                        jne   .Lx388_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx388_51
                                                                                        jmp   .Lx388_52
.Lx388_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx388_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx388_53
.Lx388_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx388_54
.Lx388_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx388_54
.Lx388_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx388_54:
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 104
                                                                                        je    n96_call_builtin_prolog_α
                                                                                        jmp   n71_var_ref_α
n70_call_builtin_prolog_β:
                                                                                        jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                                                                                        jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                                                                                        jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6040], rax
                        lea              rdi, [rbp + 6032]
                        lea              r8, [rbp + 6032]
.Lx393_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx393_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        cmp              esi, 1
                                                                                        jne   .Lx393_55
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_55:
                        cmp              esi, 2
                                                                                        jne   .Lx393_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_56:
                        cmp              eax, 72
                                                                                        jne   .Lx393_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        cmp              rax, r8
                                                                                        je    .Lx393_41
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_41:
                        lea              r9, [rbp + 6048]
.Lx393_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx393_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        cmp              esi, 1
                                                                                        jne   .Lx393_57
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_57:
                        cmp              esi, 2
                                                                                        jne   .Lx393_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_58:
                        cmp              eax, 72
                                                                                        jne   .Lx393_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        cmp              rax, r9
                                                                                        je    .Lx393_43
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_43:
                        cmp              r8, r9
                                                                                        je    .Lx393_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_44
                        cmp              eax, 104
                                                                                        je    .Lx393_44
                        cmp              eax, 72
                                                                                        jne   .Lx393_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx393_44
                                                                                        jmp   .Lx393_45
.Lx393_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_53
                        cmp              eax, 104
                                                                                        je    .Lx393_53
                        cmp              eax, 72
                                                                                        jne   .Lx393_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_53
                                                                                        jmp   .Lx393_46
.Lx393_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx393_53
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
                                                                                        jmp   .Lx393_51
.Lx393_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_47
                        cmp              eax, 104
                                                                                        je    .Lx393_47
                        cmp              eax, 72
                                                                                        jne   .Lx393_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_47
                                                                                        jmp   .Lx393_48
.Lx393_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx393_53
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
                                                                                        jmp   .Lx393_51
.Lx393_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx393_49
                        cmp              edx, 80
                                                                                        je    .Lx393_53
                                                                                        jmp   .Lx393_52
.Lx393_49:
                        cmp              edx, 80
                                                                                        je    .Lx393_52
                        cmp              ecx, 5
                                                                                        je    .Lx393_53
                        cmp              edx, 5
                                                                                        je    .Lx393_53
                        cmp              ecx, 3
                                                                                        jne   .Lx393_50
                        cmp              edx, 3
                                                                                        jne   .Lx393_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx393_51
                                                                                        jmp   .Lx393_52
.Lx393_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx393_53
.Lx393_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx393_54
.Lx393_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx393_54
.Lx393_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx393_54:
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 104
                                                                                        je    n96_call_builtin_prolog_α
                                                                                        jmp   n74_var_ref_α
n73_call_builtin_prolog_β:
                                                                                        jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 6000], 2                      # result
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n76_lit_string_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 5776], 2                      # result
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n77_var_ref_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5752], rax
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5720], rax
                        lea              rdi, [rbp + 5712]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n80_lit_string_α
n79_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 5904], 2                      # result
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n81_var_ref_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                                                                                        jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 5880], rax
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 5864], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5848], rax
                        lea              rdi, [rbp + 5840]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n84_call_builtin_prolog_α
n83_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5976], rax
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5960], rax
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5944], rax
                        lea              rdi, [rbp + 5936]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 104
                                                                                        je    n96_call_builtin_prolog_α
                                                                                        jmp   n85_call_builtin_prolog_α
n84_call_builtin_prolog_β:
                                                                                        jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5640], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5624], rax
                        lea              rdi, [rbp + 5616]
                        lea              r8, [rbp + 5616]
.Lx410_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx410_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_41
                        cmp              esi, 1
                                                                                        jne   .Lx410_55
                        mov              r8, rax
                                                                                        jmp   .Lx410_40
.Lx410_55:
                        cmp              esi, 2
                                                                                        jne   .Lx410_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx410_41
                        mov              r8, rax
                                                                                        jmp   .Lx410_40
.Lx410_56:
                        cmp              eax, 72
                                                                                        jne   .Lx410_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_41
                        cmp              rax, r8
                                                                                        je    .Lx410_41
                        mov              r8, rax
                                                                                        jmp   .Lx410_40
.Lx410_41:
                        lea              r9, [rbp + 5632]
.Lx410_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx410_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_43
                        cmp              esi, 1
                                                                                        jne   .Lx410_57
                        mov              r9, rax
                                                                                        jmp   .Lx410_42
.Lx410_57:
                        cmp              esi, 2
                                                                                        jne   .Lx410_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx410_43
                        mov              r9, rax
                                                                                        jmp   .Lx410_42
.Lx410_58:
                        cmp              eax, 72
                                                                                        jne   .Lx410_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_43
                        cmp              rax, r9
                                                                                        je    .Lx410_43
                        mov              r9, rax
                                                                                        jmp   .Lx410_42
.Lx410_43:
                        cmp              r8, r9
                                                                                        je    .Lx410_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx410_44
                        cmp              eax, 104
                                                                                        je    .Lx410_44
                        cmp              eax, 72
                                                                                        jne   .Lx410_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx410_44
                                                                                        jmp   .Lx410_45
.Lx410_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx410_53
                        cmp              eax, 104
                                                                                        je    .Lx410_53
                        cmp              eax, 72
                                                                                        jne   .Lx410_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx410_53
                                                                                        jmp   .Lx410_46
.Lx410_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx410_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx410_53
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
                                                                                        jmp   .Lx410_51
.Lx410_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx410_47
                        cmp              eax, 104
                                                                                        je    .Lx410_47
                        cmp              eax, 72
                                                                                        jne   .Lx410_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx410_47
                                                                                        jmp   .Lx410_48
.Lx410_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx410_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx410_53
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
                                                                                        jmp   .Lx410_51
.Lx410_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx410_49
                        cmp              edx, 80
                                                                                        je    .Lx410_53
                                                                                        jmp   .Lx410_52
.Lx410_49:
                        cmp              edx, 80
                                                                                        je    .Lx410_52
                        cmp              ecx, 5
                                                                                        je    .Lx410_53
                        cmp              edx, 5
                                                                                        je    .Lx410_53
                        cmp              ecx, 3
                                                                                        jne   .Lx410_50
                        cmp              edx, 3
                                                                                        jne   .Lx410_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx410_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx410_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx410_51
                                                                                        jmp   .Lx410_52
.Lx410_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx410_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx410_53
.Lx410_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx410_54
.Lx410_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx410_54
.Lx410_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx410_54:
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              eax, 104
                                                                                        je    n96_call_builtin_prolog_α
                                                                                        jmp   n86_cut_α
n85_call_builtin_prolog_β:
                                                                                        jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_cut_α:
                                                                                        jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                                                                                        jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                                                                                        jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                                                                                        jmp   n90_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_proc_staged_α:
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx419_2
.Lx419_2:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n91_var_ref_α
n90_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                                                                                        jmp   n93_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                                                                                        jmp   n94_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx427_2
.Lx427_2:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 104
                                                                                        je    n90_call_proc_staged_β
                                                                                        jmp   n95_move_label_α
n94_call_proc_staged_β:
                                                                                        jmp   n90_call_proc_staged_β
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n95_move_label_α:
                        lea              rax, [rip + n94_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5328]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n97_var_ref_α
n96_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                                                                                        jmp   n98_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 5280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n99_lit_string_α
.Lx433_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 5296], 2                      # result
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n100_call_builtin_prolog_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5224], rax
                        lea              rdi, [rbp + 5216]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              eax, 104
                                                                                        je    n139_var_ref_α
                                                                                        jmp   n101_var_ref_α
n100_call_builtin_prolog_β:
                                                                                        jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 5184], 2                      # result
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n103_var_ref_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                                                                                        jmp   n104_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                                                                                        jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5128], rax
                        lea              rdi, [rbp + 5120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 104
                                                                                        je    n138_call_builtin_prolog_α
                                                                                        jmp   n106_call_builtin_prolog_α
n105_call_builtin_prolog_β:
                                                                                        jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 5032], rax
                        lea              rdi, [rbp + 5024]
                        lea              r8, [rbp + 5024]
.Lx444_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx444_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx444_41
                        cmp              rax, r8
                                                                                        je    .Lx444_41
                        mov              r8, rax
                                                                                        jmp   .Lx444_40
.Lx444_41:
                        lea              r9, [rbp + 5040]
.Lx444_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx444_44
                        cmp              eax, 72
                                                                                        jne   .Lx444_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx444_44
                                                                                        jmp   .Lx444_45
.Lx444_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx444_53
                        cmp              eax, 104
                                                                                        je    .Lx444_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx444_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx444_49
                        cmp              edx, 80
                                                                                        je    .Lx444_53
                                                                                        jmp   .Lx444_52
.Lx444_49:
                        cmp              edx, 80
                                                                                        je    .Lx444_52
                        cmp              ecx, 5
                                                                                        je    .Lx444_53
                        cmp              edx, 5
                                                                                        je    .Lx444_53
                        cmp              ecx, 3
                                                                                        jne   .Lx444_50
                        cmp              edx, 3
                                                                                        jne   .Lx444_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx444_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx444_54
.Lx444_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx444_54:
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              eax, 104
                                                                                        je    n138_call_builtin_prolog_α
                                                                                        jmp   n107_var_ref_α
n106_call_builtin_prolog_β:
                                                                                        jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                                                                                        jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4952], rax
                        lea              rdi, [rbp + 4944]
                        lea              r8, [rbp + 4944]
.Lx449_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              rax, r8
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_41:
                        lea              r9, [rbp + 4960]
.Lx449_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx449_44
                        cmp              eax, 72
                                                                                        jne   .Lx449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx449_44
                                                                                        jmp   .Lx449_45
.Lx449_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_53
                        cmp              eax, 104
                                                                                        je    .Lx449_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx449_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx449_49
                        cmp              edx, 80
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_52
.Lx449_49:
                        cmp              edx, 80
                                                                                        je    .Lx449_52
                        cmp              ecx, 5
                                                                                        je    .Lx449_53
                        cmp              edx, 5
                                                                                        je    .Lx449_53
                        cmp              ecx, 3
                                                                                        jne   .Lx449_50
                        cmp              edx, 3
                                                                                        jne   .Lx449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx449_54
.Lx449_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx449_54:
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 104
                                                                                        je    n138_call_builtin_prolog_α
                                                                                        jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                                        jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 4912], 2                      # result
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n112_lit_string_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 4688], 2                      # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n113_lit_string_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 4464], 2                      # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n114_var_ref_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                                                                                        jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                                                                                        jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4440], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n117_lit_string_α
n116_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 4592], 2                      # result
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n118_var_ref_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   n119_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n120_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4568], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n121_call_builtin_prolog_α
n120_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4648], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n122_lit_string_α
n121_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 4816], 2                      # result
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n123_var_ref_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                                                                                        jmp   n124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 4720], 3                      # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n125_call_builtin_prolog_α
.Lx470_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4776], rax
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4760], rax
                        lea              rdi, [rbp + 4752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n126_call_builtin_prolog_α
n125_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4888], rax
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4872], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4856], rax
                        lea              rdi, [rbp + 4848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        cmp              eax, 104
                                                                                        je    n138_call_builtin_prolog_α
                                                                                        jmp   n127_call_builtin_prolog_α
n126_call_builtin_prolog_β:
                                                                                        jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4304]
                        lea              r8, [rbp + 4304]
.Lx473_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx473_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_41
                        cmp              esi, 1
                                                                                        jne   .Lx473_55
                        mov              r8, rax
                                                                                        jmp   .Lx473_40
.Lx473_55:
                        cmp              esi, 2
                                                                                        jne   .Lx473_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx473_41
                        mov              r8, rax
                                                                                        jmp   .Lx473_40
.Lx473_56:
                        cmp              eax, 72
                                                                                        jne   .Lx473_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_41
                        cmp              rax, r8
                                                                                        je    .Lx473_41
                        mov              r8, rax
                                                                                        jmp   .Lx473_40
.Lx473_41:
                        lea              r9, [rbp + 4320]
.Lx473_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx473_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_43
                        cmp              esi, 1
                                                                                        jne   .Lx473_57
                        mov              r9, rax
                                                                                        jmp   .Lx473_42
.Lx473_57:
                        cmp              esi, 2
                                                                                        jne   .Lx473_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx473_43
                        mov              r9, rax
                                                                                        jmp   .Lx473_42
.Lx473_58:
                        cmp              eax, 72
                                                                                        jne   .Lx473_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_43
                        cmp              rax, r9
                                                                                        je    .Lx473_43
                        mov              r9, rax
                                                                                        jmp   .Lx473_42
.Lx473_43:
                        cmp              r8, r9
                                                                                        je    .Lx473_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx473_44
                        cmp              eax, 104
                                                                                        je    .Lx473_44
                        cmp              eax, 72
                                                                                        jne   .Lx473_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx473_44
                                                                                        jmp   .Lx473_45
.Lx473_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx473_53
                        cmp              eax, 104
                                                                                        je    .Lx473_53
                        cmp              eax, 72
                                                                                        jne   .Lx473_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx473_53
                                                                                        jmp   .Lx473_46
.Lx473_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx473_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx473_53
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
                                                                                        jmp   .Lx473_51
.Lx473_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx473_47
                        cmp              eax, 104
                                                                                        je    .Lx473_47
                        cmp              eax, 72
                                                                                        jne   .Lx473_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx473_47
                                                                                        jmp   .Lx473_48
.Lx473_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx473_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx473_53
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
                                                                                        jmp   .Lx473_51
.Lx473_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx473_49
                        cmp              edx, 80
                                                                                        je    .Lx473_53
                                                                                        jmp   .Lx473_52
.Lx473_49:
                        cmp              edx, 80
                                                                                        je    .Lx473_52
                        cmp              ecx, 5
                                                                                        je    .Lx473_53
                        cmp              edx, 5
                                                                                        je    .Lx473_53
                        cmp              ecx, 3
                                                                                        jne   .Lx473_50
                        cmp              edx, 3
                                                                                        jne   .Lx473_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx473_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx473_51
                                                                                        jmp   .Lx473_52
.Lx473_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx473_53
.Lx473_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx473_54
.Lx473_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx473_54
.Lx473_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx473_54:
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 104
                                                                                        je    n138_call_builtin_prolog_α
                                                                                        jmp   n128_cut_α
n127_call_builtin_prolog_β:
                                                                                        jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_cut_α:
                                                                                        jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n132_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx482_2
.Lx482_2:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n133_var_ref_α
n132_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n136_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx490_2
.Lx490_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 104
                                                                                        je    n132_call_proc_staged_β
                                                                                        jmp   n137_move_label_α
n136_call_proc_staged_β:
                                                                                        jmp   n132_call_proc_staged_β
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n137_move_label_α:
                        lea              rax, [rip + n136_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 4024], rax
                        lea              rdi, [rbp + 4016]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n139_var_ref_α
n138_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n141_lit_string_α
.Lx496_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 3984], 2                      # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n142_call_builtin_prolog_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 104
                                                                                        je    n178_var_ref_α
                                                                                        jmp   n143_var_ref_α
n142_call_builtin_prolog_β:
                                                                                        jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 3872], 2                      # result
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n145_var_ref_α
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n147_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 104
                                                                                        je    n177_call_builtin_prolog_α
                                                                                        jmp   n148_call_builtin_prolog_α
n147_call_builtin_prolog_β:
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        lea              r8, [rbp + 3712]
.Lx507_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              rax, r8
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_41:
                        lea              r9, [rbp + 3728]
.Lx507_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx507_44
                        cmp              eax, 72
                                                                                        jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx507_44
                                                                                        jmp   .Lx507_45
.Lx507_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_53
                        cmp              eax, 104
                                                                                        je    .Lx507_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx507_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx507_49
                        cmp              edx, 80
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_52
.Lx507_49:
                        cmp              edx, 80
                                                                                        je    .Lx507_52
                        cmp              ecx, 5
                                                                                        je    .Lx507_53
                        cmp              edx, 5
                                                                                        je    .Lx507_53
                        cmp              ecx, 3
                                                                                        jne   .Lx507_50
                        cmp              edx, 3
                                                                                        jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx507_54
.Lx507_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx507_54:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 104
                                                                                        je    n177_call_builtin_prolog_α
                                                                                        jmp   n149_var_ref_α
n148_call_builtin_prolog_β:
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        lea              r8, [rbp + 3632]
.Lx512_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx512_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        cmp              esi, 1
                                                                                        jne   .Lx512_55
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_55:
                        cmp              esi, 2
                                                                                        jne   .Lx512_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_56:
                        cmp              eax, 72
                                                                                        jne   .Lx512_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        cmp              rax, r8
                                                                                        je    .Lx512_41
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_41:
                        lea              r9, [rbp + 3648]
.Lx512_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx512_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        cmp              esi, 1
                                                                                        jne   .Lx512_57
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_57:
                        cmp              esi, 2
                                                                                        jne   .Lx512_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_58:
                        cmp              eax, 72
                                                                                        jne   .Lx512_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        cmp              rax, r9
                                                                                        je    .Lx512_43
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_43:
                        cmp              r8, r9
                                                                                        je    .Lx512_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_44
                        cmp              eax, 104
                                                                                        je    .Lx512_44
                        cmp              eax, 72
                                                                                        jne   .Lx512_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx512_44
                                                                                        jmp   .Lx512_45
.Lx512_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_53
                        cmp              eax, 104
                                                                                        je    .Lx512_53
                        cmp              eax, 72
                                                                                        jne   .Lx512_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx512_53
                                                                                        jmp   .Lx512_46
.Lx512_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx512_53
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
                                                                                        jmp   .Lx512_51
.Lx512_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_47
                        cmp              eax, 104
                                                                                        je    .Lx512_47
                        cmp              eax, 72
                                                                                        jne   .Lx512_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx512_47
                                                                                        jmp   .Lx512_48
.Lx512_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx512_53
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
                                                                                        jmp   .Lx512_51
.Lx512_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx512_49
                        cmp              edx, 80
                                                                                        je    .Lx512_53
                                                                                        jmp   .Lx512_52
.Lx512_49:
                        cmp              edx, 80
                                                                                        je    .Lx512_52
                        cmp              ecx, 5
                                                                                        je    .Lx512_53
                        cmp              edx, 5
                                                                                        je    .Lx512_53
                        cmp              ecx, 3
                                                                                        jne   .Lx512_50
                        cmp              edx, 3
                                                                                        jne   .Lx512_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx512_51
                                                                                        jmp   .Lx512_52
.Lx512_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx512_53
.Lx512_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx512_54
.Lx512_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx512_54
.Lx512_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx512_54:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 104
                                                                                        je    n177_call_builtin_prolog_α
                                                                                        jmp   n152_var_ref_α
n151_call_builtin_prolog_β:
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 3600], 2                      # result
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n154_lit_string_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 3376], 2                      # result
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n155_var_ref_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3320], rax
                        lea              rdi, [rbp + 3312]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n158_lit_string_α
n157_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 3504], 2                      # result
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n159_var_ref_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3448], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n162_call_builtin_prolog_α
n161_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3536]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 104
                                                                                        je    n177_call_builtin_prolog_α
                                                                                        jmp   n163_call_builtin_prolog_α
n162_call_builtin_prolog_β:
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        lea              r8, [rbp + 3216]
.Lx529_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx529_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx529_41
                        cmp              esi, 1
                                                                                        jne   .Lx529_55
                        mov              r8, rax
                                                                                        jmp   .Lx529_40
.Lx529_55:
                        cmp              esi, 2
                                                                                        jne   .Lx529_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx529_41
                        mov              r8, rax
                                                                                        jmp   .Lx529_40
.Lx529_56:
                        cmp              eax, 72
                                                                                        jne   .Lx529_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx529_41
                        cmp              rax, r8
                                                                                        je    .Lx529_41
                        mov              r8, rax
                                                                                        jmp   .Lx529_40
.Lx529_41:
                        lea              r9, [rbp + 3232]
.Lx529_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx529_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx529_43
                        cmp              esi, 1
                                                                                        jne   .Lx529_57
                        mov              r9, rax
                                                                                        jmp   .Lx529_42
.Lx529_57:
                        cmp              esi, 2
                                                                                        jne   .Lx529_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx529_43
                        mov              r9, rax
                                                                                        jmp   .Lx529_42
.Lx529_58:
                        cmp              eax, 72
                                                                                        jne   .Lx529_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx529_43
                        cmp              rax, r9
                                                                                        je    .Lx529_43
                        mov              r9, rax
                                                                                        jmp   .Lx529_42
.Lx529_43:
                        cmp              r8, r9
                                                                                        je    .Lx529_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx529_44
                        cmp              eax, 104
                                                                                        je    .Lx529_44
                        cmp              eax, 72
                                                                                        jne   .Lx529_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx529_44
                                                                                        jmp   .Lx529_45
.Lx529_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx529_53
                        cmp              eax, 104
                                                                                        je    .Lx529_53
                        cmp              eax, 72
                                                                                        jne   .Lx529_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx529_53
                                                                                        jmp   .Lx529_46
.Lx529_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx529_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx529_53
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
                                                                                        jmp   .Lx529_51
.Lx529_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx529_47
                        cmp              eax, 104
                                                                                        je    .Lx529_47
                        cmp              eax, 72
                                                                                        jne   .Lx529_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx529_47
                                                                                        jmp   .Lx529_48
.Lx529_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx529_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx529_53
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
                                                                                        jmp   .Lx529_51
.Lx529_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx529_49
                        cmp              edx, 80
                                                                                        je    .Lx529_53
                                                                                        jmp   .Lx529_52
.Lx529_49:
                        cmp              edx, 80
                                                                                        je    .Lx529_52
                        cmp              ecx, 5
                                                                                        je    .Lx529_53
                        cmp              edx, 5
                                                                                        je    .Lx529_53
                        cmp              ecx, 3
                                                                                        jne   .Lx529_50
                        cmp              edx, 3
                                                                                        jne   .Lx529_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx529_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx529_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx529_51
                                                                                        jmp   .Lx529_52
.Lx529_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx529_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx529_53
.Lx529_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx529_54
.Lx529_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx529_54
.Lx529_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx529_54:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 104
                                                                                        je    n177_call_builtin_prolog_α
                                                                                        jmp   n164_cut_α
n163_call_builtin_prolog_β:
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_cut_α:
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn534:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn534]                         # fn
                        lea              rsi, [rbp + 3168]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n167_var_ref_α
n166_call_builtin_prolog_β:
                                                                                        jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n168_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n170_call_builtin_prolog_α
.Lx539_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 3072]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n171_call_builtin_prolog_α
n170_call_builtin_prolog_β:
                                                                                        jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n172_var_ref_α
n171_call_builtin_prolog_β:
                                                                                        jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n173_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n174_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n175_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx549_2
.Lx549_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n176_move_label_α
n175_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n176_move_label_α:
                        lea              rax, [rip + n175_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n178_var_ref_α
n177_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n179_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 3                      # result
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n180_lit_string_α
.Lx555_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 2816], 2                      # result
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n181_call_builtin_prolog_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 104
                                                                                        je    n202_var_ref_α
                                                                                        jmp   n182_var_ref_α
n181_call_builtin_prolog_β:
                                                                                        jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 2704], 2                      # result
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n184_var_ref_α
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 104
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n186_call_builtin_prolog_α
n185_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        lea              r8, [rbp + 2576]
.Lx564_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx564_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx564_41
                        cmp              esi, 1
                                                                                        jne   .Lx564_55
                        mov              r8, rax
                                                                                        jmp   .Lx564_40
.Lx564_55:
                        cmp              esi, 2
                                                                                        jne   .Lx564_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx564_41
                        mov              r8, rax
                                                                                        jmp   .Lx564_40
.Lx564_56:
                        cmp              eax, 72
                                                                                        jne   .Lx564_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx564_41
                        cmp              rax, r8
                                                                                        je    .Lx564_41
                        mov              r8, rax
                                                                                        jmp   .Lx564_40
.Lx564_41:
                        lea              r9, [rbp + 2592]
.Lx564_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx564_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx564_43
                        cmp              esi, 1
                                                                                        jne   .Lx564_57
                        mov              r9, rax
                                                                                        jmp   .Lx564_42
.Lx564_57:
                        cmp              esi, 2
                                                                                        jne   .Lx564_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx564_43
                        mov              r9, rax
                                                                                        jmp   .Lx564_42
.Lx564_58:
                        cmp              eax, 72
                                                                                        jne   .Lx564_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx564_43
                        cmp              rax, r9
                                                                                        je    .Lx564_43
                        mov              r9, rax
                                                                                        jmp   .Lx564_42
.Lx564_43:
                        cmp              r8, r9
                                                                                        je    .Lx564_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx564_44
                        cmp              eax, 104
                                                                                        je    .Lx564_44
                        cmp              eax, 72
                                                                                        jne   .Lx564_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx564_44
                                                                                        jmp   .Lx564_45
.Lx564_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx564_53
                        cmp              eax, 104
                                                                                        je    .Lx564_53
                        cmp              eax, 72
                                                                                        jne   .Lx564_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx564_53
                                                                                        jmp   .Lx564_46
.Lx564_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx564_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx564_53
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
                                                                                        jmp   .Lx564_51
.Lx564_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx564_47
                        cmp              eax, 104
                                                                                        je    .Lx564_47
                        cmp              eax, 72
                                                                                        jne   .Lx564_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx564_47
                                                                                        jmp   .Lx564_48
.Lx564_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx564_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx564_53
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
                                                                                        jmp   .Lx564_51
.Lx564_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx564_49
                        cmp              edx, 80
                                                                                        je    .Lx564_53
                                                                                        jmp   .Lx564_52
.Lx564_49:
                        cmp              edx, 80
                                                                                        je    .Lx564_52
                        cmp              ecx, 5
                                                                                        je    .Lx564_53
                        cmp              edx, 5
                                                                                        je    .Lx564_53
                        cmp              ecx, 3
                                                                                        jne   .Lx564_50
                        cmp              edx, 3
                                                                                        jne   .Lx564_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx564_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx564_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx564_51
                                                                                        jmp   .Lx564_52
.Lx564_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx564_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx564_53
.Lx564_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx564_54
.Lx564_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx564_54
.Lx564_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx564_54:
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 104
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n187_var_ref_α
n186_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n189_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        lea              r8, [rbp + 2496]
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
                        lea              r9, [rbp + 2512]
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
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n190_var_ref_α
n189_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 2464], 2                      # result
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n192_var_ref_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n193_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 104
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n194_call_builtin_prolog_α
n193_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        lea              r8, [rbp + 2336]
.Lx576_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx576_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_41
                        cmp              rax, r8
                                                                                        je    .Lx576_41
                        mov              r8, rax
                                                                                        jmp   .Lx576_40
.Lx576_41:
                        lea              r9, [rbp + 2352]
.Lx576_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx576_44
                        cmp              eax, 72
                                                                                        jne   .Lx576_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx576_44
                                                                                        jmp   .Lx576_45
.Lx576_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_53
                        cmp              eax, 104
                                                                                        je    .Lx576_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx576_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx576_49
                        cmp              edx, 80
                                                                                        je    .Lx576_53
                                                                                        jmp   .Lx576_52
.Lx576_49:
                        cmp              edx, 80
                                                                                        je    .Lx576_52
                        cmp              ecx, 5
                                                                                        je    .Lx576_53
                        cmp              edx, 5
                                                                                        je    .Lx576_53
                        cmp              ecx, 3
                                                                                        jne   .Lx576_50
                        cmp              edx, 3
                                                                                        jne   .Lx576_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx576_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx576_54
.Lx576_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx576_54:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 104
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n195_cut_α
n194_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_cut_α:
                                                                                        jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n197_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n198_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n199_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx585_2
.Lx585_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n200_move_label_α
n199_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n200_move_label_α:
                        lea              rax, [rip + n199_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n202_var_ref_α
n201_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n204_lit_string_α
.Lx591_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 2144], 2                      # result
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n205_call_builtin_prolog_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n229_var_ref_α
                                                                                        jmp   n206_var_ref_α
n205_call_builtin_prolog_β:
                                                                                        jmp   n229_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 2032], 2                      # result
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n208_var_ref_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n209_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 104
                                                                                        je    n228_call_builtin_prolog_α
                                                                                        jmp   n210_call_builtin_prolog_α
n209_call_builtin_prolog_β:
                                                                                        jmp   n228_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1904]
                        lea              r8, [rbp + 1904]
.Lx600_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx600_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx600_41
                        cmp              esi, 1
                                                                                        jne   .Lx600_55
                        mov              r8, rax
                                                                                        jmp   .Lx600_40
.Lx600_55:
                        cmp              esi, 2
                                                                                        jne   .Lx600_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx600_41
                        mov              r8, rax
                                                                                        jmp   .Lx600_40
.Lx600_56:
                        cmp              eax, 72
                                                                                        jne   .Lx600_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx600_41
                        cmp              rax, r8
                                                                                        je    .Lx600_41
                        mov              r8, rax
                                                                                        jmp   .Lx600_40
.Lx600_41:
                        lea              r9, [rbp + 1920]
.Lx600_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx600_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx600_43
                        cmp              esi, 1
                                                                                        jne   .Lx600_57
                        mov              r9, rax
                                                                                        jmp   .Lx600_42
.Lx600_57:
                        cmp              esi, 2
                                                                                        jne   .Lx600_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx600_43
                        mov              r9, rax
                                                                                        jmp   .Lx600_42
.Lx600_58:
                        cmp              eax, 72
                                                                                        jne   .Lx600_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx600_43
                        cmp              rax, r9
                                                                                        je    .Lx600_43
                        mov              r9, rax
                                                                                        jmp   .Lx600_42
.Lx600_43:
                        cmp              r8, r9
                                                                                        je    .Lx600_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx600_44
                        cmp              eax, 104
                                                                                        je    .Lx600_44
                        cmp              eax, 72
                                                                                        jne   .Lx600_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx600_44
                                                                                        jmp   .Lx600_45
.Lx600_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx600_53
                        cmp              eax, 104
                                                                                        je    .Lx600_53
                        cmp              eax, 72
                                                                                        jne   .Lx600_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx600_53
                                                                                        jmp   .Lx600_46
.Lx600_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx600_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx600_53
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
                                                                                        jmp   .Lx600_51
.Lx600_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx600_47
                        cmp              eax, 104
                                                                                        je    .Lx600_47
                        cmp              eax, 72
                                                                                        jne   .Lx600_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx600_47
                                                                                        jmp   .Lx600_48
.Lx600_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx600_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx600_53
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
                                                                                        jmp   .Lx600_51
.Lx600_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx600_49
                        cmp              edx, 80
                                                                                        je    .Lx600_53
                                                                                        jmp   .Lx600_52
.Lx600_49:
                        cmp              edx, 80
                                                                                        je    .Lx600_52
                        cmp              ecx, 5
                                                                                        je    .Lx600_53
                        cmp              edx, 5
                                                                                        je    .Lx600_53
                        cmp              ecx, 3
                                                                                        jne   .Lx600_50
                        cmp              edx, 3
                                                                                        jne   .Lx600_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx600_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx600_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx600_51
                                                                                        jmp   .Lx600_52
.Lx600_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx600_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx600_53
.Lx600_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx600_54
.Lx600_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx600_54
.Lx600_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx600_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n228_call_builtin_prolog_α
                                                                                        jmp   n211_var_ref_α
n210_call_builtin_prolog_β:
                                                                                        jmp   n228_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1824]
                        lea              r8, [rbp + 1824]
.Lx605_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx605_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx605_41
                        cmp              esi, 1
                                                                                        jne   .Lx605_55
                        mov              r8, rax
                                                                                        jmp   .Lx605_40
.Lx605_55:
                        cmp              esi, 2
                                                                                        jne   .Lx605_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx605_41
                        mov              r8, rax
                                                                                        jmp   .Lx605_40
.Lx605_56:
                        cmp              eax, 72
                                                                                        jne   .Lx605_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx605_41
                        cmp              rax, r8
                                                                                        je    .Lx605_41
                        mov              r8, rax
                                                                                        jmp   .Lx605_40
.Lx605_41:
                        lea              r9, [rbp + 1840]
.Lx605_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx605_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx605_43
                        cmp              esi, 1
                                                                                        jne   .Lx605_57
                        mov              r9, rax
                                                                                        jmp   .Lx605_42
.Lx605_57:
                        cmp              esi, 2
                                                                                        jne   .Lx605_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx605_43
                        mov              r9, rax
                                                                                        jmp   .Lx605_42
.Lx605_58:
                        cmp              eax, 72
                                                                                        jne   .Lx605_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx605_43
                        cmp              rax, r9
                                                                                        je    .Lx605_43
                        mov              r9, rax
                                                                                        jmp   .Lx605_42
.Lx605_43:
                        cmp              r8, r9
                                                                                        je    .Lx605_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx605_44
                        cmp              eax, 104
                                                                                        je    .Lx605_44
                        cmp              eax, 72
                                                                                        jne   .Lx605_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx605_44
                                                                                        jmp   .Lx605_45
.Lx605_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx605_53
                        cmp              eax, 104
                                                                                        je    .Lx605_53
                        cmp              eax, 72
                                                                                        jne   .Lx605_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx605_53
                                                                                        jmp   .Lx605_46
.Lx605_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx605_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx605_53
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
                                                                                        jmp   .Lx605_51
.Lx605_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx605_47
                        cmp              eax, 104
                                                                                        je    .Lx605_47
                        cmp              eax, 72
                                                                                        jne   .Lx605_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx605_47
                                                                                        jmp   .Lx605_48
.Lx605_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx605_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx605_53
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
                                                                                        jmp   .Lx605_51
.Lx605_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx605_49
                        cmp              edx, 80
                                                                                        je    .Lx605_53
                                                                                        jmp   .Lx605_52
.Lx605_49:
                        cmp              edx, 80
                                                                                        je    .Lx605_52
                        cmp              ecx, 5
                                                                                        je    .Lx605_53
                        cmp              edx, 5
                                                                                        je    .Lx605_53
                        cmp              ecx, 3
                                                                                        jne   .Lx605_50
                        cmp              edx, 3
                                                                                        jne   .Lx605_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx605_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx605_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx605_51
                                                                                        jmp   .Lx605_52
.Lx605_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx605_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx605_53
.Lx605_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx605_54
.Lx605_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx605_54
.Lx605_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx605_54:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n228_call_builtin_prolog_α
                                                                                        jmp   n214_var_ref_α
n213_call_builtin_prolog_β:
                                                                                        jmp   n228_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n216_lit_string_α
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n217_var_ref_α
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n218_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n219_var_ref_α
n218_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n228_call_builtin_prolog_α
                                                                                        jmp   n221_call_builtin_prolog_α
n220_call_builtin_prolog_β:
                                                                                        jmp   n228_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        lea              r8, [rbp + 1552]
.Lx616_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx616_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_41
                        cmp              esi, 1
                                                                                        jne   .Lx616_55
                        mov              r8, rax
                                                                                        jmp   .Lx616_40
.Lx616_55:
                        cmp              esi, 2
                                                                                        jne   .Lx616_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx616_41
                        mov              r8, rax
                                                                                        jmp   .Lx616_40
.Lx616_56:
                        cmp              eax, 72
                                                                                        jne   .Lx616_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_41
                        cmp              rax, r8
                                                                                        je    .Lx616_41
                        mov              r8, rax
                                                                                        jmp   .Lx616_40
.Lx616_41:
                        lea              r9, [rbp + 1568]
.Lx616_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx616_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_43
                        cmp              esi, 1
                                                                                        jne   .Lx616_57
                        mov              r9, rax
                                                                                        jmp   .Lx616_42
.Lx616_57:
                        cmp              esi, 2
                                                                                        jne   .Lx616_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx616_43
                        mov              r9, rax
                                                                                        jmp   .Lx616_42
.Lx616_58:
                        cmp              eax, 72
                                                                                        jne   .Lx616_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_43
                        cmp              rax, r9
                                                                                        je    .Lx616_43
                        mov              r9, rax
                                                                                        jmp   .Lx616_42
.Lx616_43:
                        cmp              r8, r9
                                                                                        je    .Lx616_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx616_44
                        cmp              eax, 104
                                                                                        je    .Lx616_44
                        cmp              eax, 72
                                                                                        jne   .Lx616_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx616_44
                                                                                        jmp   .Lx616_45
.Lx616_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx616_53
                        cmp              eax, 104
                                                                                        je    .Lx616_53
                        cmp              eax, 72
                                                                                        jne   .Lx616_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx616_53
                                                                                        jmp   .Lx616_46
.Lx616_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx616_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx616_53
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
                                                                                        jmp   .Lx616_51
.Lx616_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx616_47
                        cmp              eax, 104
                                                                                        je    .Lx616_47
                        cmp              eax, 72
                                                                                        jne   .Lx616_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx616_47
                                                                                        jmp   .Lx616_48
.Lx616_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx616_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx616_53
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
                                                                                        jmp   .Lx616_51
.Lx616_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx616_49
                        cmp              edx, 80
                                                                                        je    .Lx616_53
                                                                                        jmp   .Lx616_52
.Lx616_49:
                        cmp              edx, 80
                                                                                        je    .Lx616_52
                        cmp              ecx, 5
                                                                                        je    .Lx616_53
                        cmp              edx, 5
                                                                                        je    .Lx616_53
                        cmp              ecx, 3
                                                                                        jne   .Lx616_50
                        cmp              edx, 3
                                                                                        jne   .Lx616_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx616_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx616_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx616_51
                                                                                        jmp   .Lx616_52
.Lx616_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx616_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx616_53
.Lx616_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx616_54
.Lx616_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx616_54
.Lx616_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx616_54:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 104
                                                                                        je    n228_call_builtin_prolog_α
                                                                                        jmp   n222_cut_α
n221_call_builtin_prolog_β:
                                                                                        jmp   n228_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_cut_α:
                                                                                        jmp   n223_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n224_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n226_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx625_2
.Lx625_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n227_move_label_α
n226_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n227_move_label_α:
                        lea              rax, [rip + n226_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n229_var_ref_α
n228_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n231_lit_string_α
.Lx631_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n232_call_builtin_prolog_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n254_var_ref_α
                                                                                        jmp   n233_var_ref_α
n232_call_builtin_prolog_β:
                                                                                        jmp   n254_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n235_var_ref_α
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n253_call_builtin_prolog_α
                                                                                        jmp   n237_call_builtin_prolog_α
n236_call_builtin_prolog_β:
                                                                                        jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx640_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx640_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx640_41
                        cmp              rax, r8
                                                                                        je    .Lx640_41
                        mov              r8, rax
                                                                                        jmp   .Lx640_40
.Lx640_41:
                        lea              r9, [rbp + 1136]
.Lx640_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx640_44
                        cmp              eax, 72
                                                                                        jne   .Lx640_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx640_44
                                                                                        jmp   .Lx640_45
.Lx640_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx640_53
                        cmp              eax, 104
                                                                                        je    .Lx640_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx640_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx640_49
                        cmp              edx, 80
                                                                                        je    .Lx640_53
                                                                                        jmp   .Lx640_52
.Lx640_49:
                        cmp              edx, 80
                                                                                        je    .Lx640_52
                        cmp              ecx, 5
                                                                                        je    .Lx640_53
                        cmp              edx, 5
                                                                                        je    .Lx640_53
                        cmp              ecx, 3
                                                                                        jne   .Lx640_50
                        cmp              edx, 3
                                                                                        jne   .Lx640_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx640_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx640_54
.Lx640_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx640_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n253_call_builtin_prolog_α
                                                                                        jmp   n238_var_ref_α
n237_call_builtin_prolog_β:
                                                                                        jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n239_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        lea              r8, [rbp + 1040]
.Lx645_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx645_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx645_41
                        cmp              esi, 1
                                                                                        jne   .Lx645_55
                        mov              r8, rax
                                                                                        jmp   .Lx645_40
.Lx645_55:
                        cmp              esi, 2
                                                                                        jne   .Lx645_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx645_41
                        mov              r8, rax
                                                                                        jmp   .Lx645_40
.Lx645_56:
                        cmp              eax, 72
                                                                                        jne   .Lx645_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx645_41
                        cmp              rax, r8
                                                                                        je    .Lx645_41
                        mov              r8, rax
                                                                                        jmp   .Lx645_40
.Lx645_41:
                        lea              r9, [rbp + 1056]
.Lx645_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx645_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx645_43
                        cmp              esi, 1
                                                                                        jne   .Lx645_57
                        mov              r9, rax
                                                                                        jmp   .Lx645_42
.Lx645_57:
                        cmp              esi, 2
                                                                                        jne   .Lx645_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx645_43
                        mov              r9, rax
                                                                                        jmp   .Lx645_42
.Lx645_58:
                        cmp              eax, 72
                                                                                        jne   .Lx645_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx645_43
                        cmp              rax, r9
                                                                                        je    .Lx645_43
                        mov              r9, rax
                                                                                        jmp   .Lx645_42
.Lx645_43:
                        cmp              r8, r9
                                                                                        je    .Lx645_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx645_44
                        cmp              eax, 104
                                                                                        je    .Lx645_44
                        cmp              eax, 72
                                                                                        jne   .Lx645_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx645_44
                                                                                        jmp   .Lx645_45
.Lx645_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx645_53
                        cmp              eax, 104
                                                                                        je    .Lx645_53
                        cmp              eax, 72
                                                                                        jne   .Lx645_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx645_53
                                                                                        jmp   .Lx645_46
.Lx645_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx645_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx645_53
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
                                                                                        jmp   .Lx645_51
.Lx645_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx645_47
                        cmp              eax, 104
                                                                                        je    .Lx645_47
                        cmp              eax, 72
                                                                                        jne   .Lx645_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx645_47
                                                                                        jmp   .Lx645_48
.Lx645_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx645_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx645_53
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
                                                                                        jmp   .Lx645_51
.Lx645_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx645_49
                        cmp              edx, 80
                                                                                        je    .Lx645_53
                                                                                        jmp   .Lx645_52
.Lx645_49:
                        cmp              edx, 80
                                                                                        je    .Lx645_52
                        cmp              ecx, 5
                                                                                        je    .Lx645_53
                        cmp              edx, 5
                                                                                        je    .Lx645_53
                        cmp              ecx, 3
                                                                                        jne   .Lx645_50
                        cmp              edx, 3
                                                                                        jne   .Lx645_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx645_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx645_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx645_51
                                                                                        jmp   .Lx645_52
.Lx645_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx645_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx645_53
.Lx645_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx645_54
.Lx645_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx645_54
.Lx645_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx645_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n253_call_builtin_prolog_α
                                                                                        jmp   n241_var_ref_α
n240_call_builtin_prolog_β:
                                                                                        jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n243_var_ref_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n244_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n245_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n253_call_builtin_prolog_α
                                                                                        jmp   n246_call_builtin_prolog_α
n245_call_builtin_prolog_β:
                                                                                        jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx654_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx654_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_41
                        cmp              esi, 1
                                                                                        jne   .Lx654_55
                        mov              r8, rax
                                                                                        jmp   .Lx654_40
.Lx654_55:
                        cmp              esi, 2
                                                                                        jne   .Lx654_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_41
                        mov              r8, rax
                                                                                        jmp   .Lx654_40
.Lx654_56:
                        cmp              eax, 72
                                                                                        jne   .Lx654_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_41
                        cmp              rax, r8
                                                                                        je    .Lx654_41
                        mov              r8, rax
                                                                                        jmp   .Lx654_40
.Lx654_41:
                        lea              r9, [rbp + 864]
.Lx654_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx654_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_43
                        cmp              esi, 1
                                                                                        jne   .Lx654_57
                        mov              r9, rax
                                                                                        jmp   .Lx654_42
.Lx654_57:
                        cmp              esi, 2
                                                                                        jne   .Lx654_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_43
                        mov              r9, rax
                                                                                        jmp   .Lx654_42
.Lx654_58:
                        cmp              eax, 72
                                                                                        jne   .Lx654_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_43
                        cmp              rax, r9
                                                                                        je    .Lx654_43
                        mov              r9, rax
                                                                                        jmp   .Lx654_42
.Lx654_43:
                        cmp              r8, r9
                                                                                        je    .Lx654_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_44
                        cmp              eax, 104
                                                                                        je    .Lx654_44
                        cmp              eax, 72
                                                                                        jne   .Lx654_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx654_44
                                                                                        jmp   .Lx654_45
.Lx654_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_53
                        cmp              eax, 104
                                                                                        je    .Lx654_53
                        cmp              eax, 72
                                                                                        jne   .Lx654_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx654_53
                                                                                        jmp   .Lx654_46
.Lx654_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx654_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx654_53
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
                                                                                        jmp   .Lx654_51
.Lx654_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_47
                        cmp              eax, 104
                                                                                        je    .Lx654_47
                        cmp              eax, 72
                                                                                        jne   .Lx654_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx654_47
                                                                                        jmp   .Lx654_48
.Lx654_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx654_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx654_53
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
                                                                                        jmp   .Lx654_51
.Lx654_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx654_49
                        cmp              edx, 80
                                                                                        je    .Lx654_53
                                                                                        jmp   .Lx654_52
.Lx654_49:
                        cmp              edx, 80
                                                                                        je    .Lx654_52
                        cmp              ecx, 5
                                                                                        je    .Lx654_53
                        cmp              edx, 5
                                                                                        je    .Lx654_53
                        cmp              ecx, 3
                                                                                        jne   .Lx654_50
                        cmp              edx, 3
                                                                                        jne   .Lx654_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx654_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx654_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx654_51
                                                                                        jmp   .Lx654_52
.Lx654_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx654_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx654_53
.Lx654_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx654_54
.Lx654_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx654_54
.Lx654_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx654_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n253_call_builtin_prolog_α
                                                                                        jmp   n247_cut_α
n246_call_builtin_prolog_β:
                                                                                        jmp   n253_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n247_cut_α:
                                                                                        jmp   n248_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n251_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx663_2
.Lx663_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n252_move_label_α
n251_call_proc_staged_β:
                                                                                        jmp   n277_call_builtin_prolog_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n252_move_label_α:
                        lea              rax, [rip + n251_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n254_var_ref_α
n253_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n255_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx671_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx671_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx671_41
                        cmp              esi, 1
                                                                                        jne   .Lx671_55
                        mov              r8, rax
                                                                                        jmp   .Lx671_40
.Lx671_55:
                        cmp              esi, 2
                                                                                        jne   .Lx671_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx671_41
                        mov              r8, rax
                                                                                        jmp   .Lx671_40
.Lx671_56:
                        cmp              eax, 72
                                                                                        jne   .Lx671_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx671_41
                        cmp              rax, r8
                                                                                        je    .Lx671_41
                        mov              r8, rax
                                                                                        jmp   .Lx671_40
.Lx671_41:
                        lea              r9, [rbp + 624]
.Lx671_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx671_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx671_43
                        cmp              esi, 1
                                                                                        jne   .Lx671_57
                        mov              r9, rax
                                                                                        jmp   .Lx671_42
.Lx671_57:
                        cmp              esi, 2
                                                                                        jne   .Lx671_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx671_43
                        mov              r9, rax
                                                                                        jmp   .Lx671_42
.Lx671_58:
                        cmp              eax, 72
                                                                                        jne   .Lx671_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx671_43
                        cmp              rax, r9
                                                                                        je    .Lx671_43
                        mov              r9, rax
                                                                                        jmp   .Lx671_42
.Lx671_43:
                        cmp              r8, r9
                                                                                        je    .Lx671_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx671_44
                        cmp              eax, 104
                                                                                        je    .Lx671_44
                        cmp              eax, 72
                                                                                        jne   .Lx671_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx671_44
                                                                                        jmp   .Lx671_45
.Lx671_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx671_53
                        cmp              eax, 104
                                                                                        je    .Lx671_53
                        cmp              eax, 72
                                                                                        jne   .Lx671_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx671_53
                                                                                        jmp   .Lx671_46
.Lx671_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx671_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx671_53
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
                                                                                        jmp   .Lx671_51
.Lx671_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx671_47
                        cmp              eax, 104
                                                                                        je    .Lx671_47
                        cmp              eax, 72
                                                                                        jne   .Lx671_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx671_47
                                                                                        jmp   .Lx671_48
.Lx671_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx671_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx671_53
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
                                                                                        jmp   .Lx671_51
.Lx671_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx671_49
                        cmp              edx, 80
                                                                                        je    .Lx671_53
                                                                                        jmp   .Lx671_52
.Lx671_49:
                        cmp              edx, 80
                                                                                        je    .Lx671_52
                        cmp              ecx, 5
                                                                                        je    .Lx671_53
                        cmp              edx, 5
                                                                                        je    .Lx671_53
                        cmp              ecx, 3
                                                                                        jne   .Lx671_50
                        cmp              edx, 3
                                                                                        jne   .Lx671_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx671_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx671_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx671_51
                                                                                        jmp   .Lx671_52
.Lx671_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx671_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx671_53
.Lx671_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx671_54
.Lx671_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx671_54
.Lx671_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx671_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n265_call_builtin_prolog_α
                                                                                        jmp   n257_var_ref_α
n256_call_builtin_prolog_β:
                                                                                        jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n258_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx676_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx676_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx676_41
                        cmp              esi, 1
                                                                                        jne   .Lx676_55
                        mov              r8, rax
                                                                                        jmp   .Lx676_40
.Lx676_55:
                        cmp              esi, 2
                                                                                        jne   .Lx676_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx676_41
                        mov              r8, rax
                                                                                        jmp   .Lx676_40
.Lx676_56:
                        cmp              eax, 72
                                                                                        jne   .Lx676_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx676_41
                        cmp              rax, r8
                                                                                        je    .Lx676_41
                        mov              r8, rax
                                                                                        jmp   .Lx676_40
.Lx676_41:
                        lea              r9, [rbp + 544]
.Lx676_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx676_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx676_43
                        cmp              esi, 1
                                                                                        jne   .Lx676_57
                        mov              r9, rax
                                                                                        jmp   .Lx676_42
.Lx676_57:
                        cmp              esi, 2
                                                                                        jne   .Lx676_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx676_43
                        mov              r9, rax
                                                                                        jmp   .Lx676_42
.Lx676_58:
                        cmp              eax, 72
                                                                                        jne   .Lx676_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx676_43
                        cmp              rax, r9
                                                                                        je    .Lx676_43
                        mov              r9, rax
                                                                                        jmp   .Lx676_42
.Lx676_43:
                        cmp              r8, r9
                                                                                        je    .Lx676_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx676_44
                        cmp              eax, 104
                                                                                        je    .Lx676_44
                        cmp              eax, 72
                                                                                        jne   .Lx676_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx676_44
                                                                                        jmp   .Lx676_45
.Lx676_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx676_53
                        cmp              eax, 104
                                                                                        je    .Lx676_53
                        cmp              eax, 72
                                                                                        jne   .Lx676_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx676_53
                                                                                        jmp   .Lx676_46
.Lx676_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx676_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx676_53
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
                                                                                        jmp   .Lx676_51
.Lx676_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx676_47
                        cmp              eax, 104
                                                                                        je    .Lx676_47
                        cmp              eax, 72
                                                                                        jne   .Lx676_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx676_47
                                                                                        jmp   .Lx676_48
.Lx676_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx676_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx676_53
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
                                                                                        jmp   .Lx676_51
.Lx676_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx676_49
                        cmp              edx, 80
                                                                                        je    .Lx676_53
                                                                                        jmp   .Lx676_52
.Lx676_49:
                        cmp              edx, 80
                                                                                        je    .Lx676_52
                        cmp              ecx, 5
                                                                                        je    .Lx676_53
                        cmp              edx, 5
                                                                                        je    .Lx676_53
                        cmp              ecx, 3
                                                                                        jne   .Lx676_50
                        cmp              edx, 3
                                                                                        jne   .Lx676_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx676_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx676_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx676_51
                                                                                        jmp   .Lx676_52
.Lx676_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx676_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx676_53
.Lx676_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx676_54
.Lx676_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx676_54
.Lx676_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx676_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n265_call_builtin_prolog_α
                                                                                        jmp   n260_var_ref_α
n259_call_builtin_prolog_β:
                                                                                        jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n261_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n262_call_builtin_prolog_α
.Lx679_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]                               # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n265_call_builtin_prolog_α
                                                                                        jmp   n263_cut_α
n262_call_builtin_prolog_β:
                                                                                        jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n263_cut_α:
                                                                                        jmp   n264_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n264_move_label_α:
                        lea              rax, [rip + n265_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n266_var_ref_α
n265_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx689_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx689_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx689_41
                        cmp              esi, 1
                                                                                        jne   .Lx689_55
                        mov              r8, rax
                                                                                        jmp   .Lx689_40
.Lx689_55:
                        cmp              esi, 2
                                                                                        jne   .Lx689_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx689_41
                        mov              r8, rax
                                                                                        jmp   .Lx689_40
.Lx689_56:
                        cmp              eax, 72
                                                                                        jne   .Lx689_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx689_41
                        cmp              rax, r8
                                                                                        je    .Lx689_41
                        mov              r8, rax
                                                                                        jmp   .Lx689_40
.Lx689_41:
                        lea              r9, [rbp + 352]
.Lx689_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx689_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx689_43
                        cmp              esi, 1
                                                                                        jne   .Lx689_57
                        mov              r9, rax
                                                                                        jmp   .Lx689_42
.Lx689_57:
                        cmp              esi, 2
                                                                                        jne   .Lx689_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx689_43
                        mov              r9, rax
                                                                                        jmp   .Lx689_42
.Lx689_58:
                        cmp              eax, 72
                                                                                        jne   .Lx689_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx689_43
                        cmp              rax, r9
                                                                                        je    .Lx689_43
                        mov              r9, rax
                                                                                        jmp   .Lx689_42
.Lx689_43:
                        cmp              r8, r9
                                                                                        je    .Lx689_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx689_44
                        cmp              eax, 104
                                                                                        je    .Lx689_44
                        cmp              eax, 72
                                                                                        jne   .Lx689_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx689_44
                                                                                        jmp   .Lx689_45
.Lx689_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx689_53
                        cmp              eax, 104
                                                                                        je    .Lx689_53
                        cmp              eax, 72
                                                                                        jne   .Lx689_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx689_53
                                                                                        jmp   .Lx689_46
.Lx689_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx689_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx689_53
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
                                                                                        jmp   .Lx689_51
.Lx689_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx689_47
                        cmp              eax, 104
                                                                                        je    .Lx689_47
                        cmp              eax, 72
                                                                                        jne   .Lx689_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx689_47
                                                                                        jmp   .Lx689_48
.Lx689_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx689_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx689_53
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
                                                                                        jmp   .Lx689_51
.Lx689_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx689_49
                        cmp              edx, 80
                                                                                        je    .Lx689_53
                                                                                        jmp   .Lx689_52
.Lx689_49:
                        cmp              edx, 80
                                                                                        je    .Lx689_52
                        cmp              ecx, 5
                                                                                        je    .Lx689_53
                        cmp              edx, 5
                                                                                        je    .Lx689_53
                        cmp              ecx, 3
                                                                                        jne   .Lx689_50
                        cmp              edx, 3
                                                                                        jne   .Lx689_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx689_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx689_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx689_51
                                                                                        jmp   .Lx689_52
.Lx689_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx689_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx689_53
.Lx689_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx689_54
.Lx689_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx689_54
.Lx689_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx689_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n269_var_ref_α
n268_call_builtin_prolog_β:
                                                                                        jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n270_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n271_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lx694_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx694_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx694_41
                        cmp              esi, 1
                                                                                        jne   .Lx694_55
                        mov              r8, rax
                                                                                        jmp   .Lx694_40
.Lx694_55:
                        cmp              esi, 2
                                                                                        jne   .Lx694_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx694_41
                        mov              r8, rax
                                                                                        jmp   .Lx694_40
.Lx694_56:
                        cmp              eax, 72
                                                                                        jne   .Lx694_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx694_41
                        cmp              rax, r8
                                                                                        je    .Lx694_41
                        mov              r8, rax
                                                                                        jmp   .Lx694_40
.Lx694_41:
                        lea              r9, [rbp + 272]
.Lx694_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx694_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx694_43
                        cmp              esi, 1
                                                                                        jne   .Lx694_57
                        mov              r9, rax
                                                                                        jmp   .Lx694_42
.Lx694_57:
                        cmp              esi, 2
                                                                                        jne   .Lx694_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx694_43
                        mov              r9, rax
                                                                                        jmp   .Lx694_42
.Lx694_58:
                        cmp              eax, 72
                                                                                        jne   .Lx694_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx694_43
                        cmp              rax, r9
                                                                                        je    .Lx694_43
                        mov              r9, rax
                                                                                        jmp   .Lx694_42
.Lx694_43:
                        cmp              r8, r9
                                                                                        je    .Lx694_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx694_44
                        cmp              eax, 104
                                                                                        je    .Lx694_44
                        cmp              eax, 72
                                                                                        jne   .Lx694_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx694_44
                                                                                        jmp   .Lx694_45
.Lx694_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx694_53
                        cmp              eax, 104
                                                                                        je    .Lx694_53
                        cmp              eax, 72
                                                                                        jne   .Lx694_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx694_53
                                                                                        jmp   .Lx694_46
.Lx694_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx694_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx694_53
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
                                                                                        jmp   .Lx694_51
.Lx694_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx694_47
                        cmp              eax, 104
                                                                                        je    .Lx694_47
                        cmp              eax, 72
                                                                                        jne   .Lx694_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx694_47
                                                                                        jmp   .Lx694_48
.Lx694_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx694_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx694_53
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
                                                                                        jmp   .Lx694_51
.Lx694_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx694_49
                        cmp              edx, 80
                                                                                        je    .Lx694_53
                                                                                        jmp   .Lx694_52
.Lx694_49:
                        cmp              edx, 80
                                                                                        je    .Lx694_52
                        cmp              ecx, 5
                                                                                        je    .Lx694_53
                        cmp              edx, 5
                                                                                        je    .Lx694_53
                        cmp              ecx, 3
                                                                                        jne   .Lx694_50
                        cmp              edx, 3
                                                                                        jne   .Lx694_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx694_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx694_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx694_51
                                                                                        jmp   .Lx694_52
.Lx694_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx694_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx694_53
.Lx694_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx694_54
.Lx694_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx694_54
.Lx694_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx694_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n272_var_ref_α
n271_call_builtin_prolog_β:
                                                                                        jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n273_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n274_call_builtin_prolog_α
.Lx697_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]                               # args
                        movabs           rsi, 0                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n277_call_builtin_prolog_α
                                                                                        jmp   n275_move_label_α
n274_call_builtin_prolog_β:
                                                                                        jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n275_move_label_α:
                        lea              rax, [rip + n277_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n276_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   rax
n276_disjunction_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n277_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   proc_d$2F3_ω
n277_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_β:
                                                                                        jmp   n276_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 8272]
                        mov              rcx, qword ptr [rbp + 8248]
                        mov              rbp, qword ptr [rbp + 8264]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_ω:
                        lea              rsp, [rbp + 8272]
                        mov              rcx, qword ptr [rbp + 8256]
                        mov              rbp, qword ptr [rbp + 8264]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 32
                        lea              rcx, [rip + .Lx704_2]
                        lea              rdx, [rip + .Lx704_3]
                                                                                        jmp   proc_d$2F3_α
.Lx704_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx704_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_top$2F0_α
proc_top$2F0_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 112
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_top$2F0_α_body:
                        lea              rax, [rip + n707_suspend_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n705_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx709_102
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                                                                                        jmp   .Lx709_101
.Lx709_102:
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
                        mov              eax, 3
                                                                                        jmp   .Lx709_101
.Lx709_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx709_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_top$2F0_ω
                                                                                        jmp   n706_call_proc_staged_α
n705_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        call             proc_times10$2F0_dcα
                                                                                        jmp   .Lx711_2
.Lx711_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n708_call_builtin_prolog_α
                                                                                        jmp   n707_suspend_α
n706_call_proc_staged_β:
                                                                                        jmp   n708_call_builtin_prolog_α
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "times10/0"
#-----------------------------------------------------------------------------------------------------------------------
n707_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx713_61
                        mov              qword ptr [rbp + 112], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 112]
.Lx713_61:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        lea              rdx, [rip + n707_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n707_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_top$2F0_γ
n707_suspend_β:
                                                                                        jmp   n706_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n708_call_builtin_prolog_α:
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
                                                                                        je    proc_top$2F0_ω
                                                                                        jmp   proc_top$2F0_ω
n708_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx714_50
                        mov              qword ptr [rbp + 112], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx714_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 176]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_ω:
                        lea              rsp, [rbp + 176]
                        mov              rcx, qword ptr [rbp + 160]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_times10$2F0_α
proc_times10$2F0_α:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1264
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_times10$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n715_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx750_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                                                                                        jmp   .Lx750_101
.Lx750_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx750_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx750_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx750_101
.Lx750_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx750_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n716_lit_string_α
n715_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n717_lit_string_α
.Lx751_0:
                        .quad            .Lx751_0_s
.Lx751_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx752_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n718_lit_string_α
.Lx752_0:
                        .quad            .Lx752_0_s
.Lx752_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Lx753_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n719_lit_string_α
.Lx753_0:
                        .quad            .Lx753_0_s
.Lx753_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n720_lit_string_α
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n721_lit_string_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx756_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n722_lit_string_α
.Lx756_0:
                        .quad            .Lx756_0_s
.Lx756_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Lx757_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n723_lit_string_α
.Lx757_0:
                        .quad            .Lx757_0_s
.Lx757_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n724_lit_string_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n725_lit_string_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n726_lit_string_α
.Lx760_0:
                        .quad            .Lx760_0_s
.Lx760_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n727_call_builtin_prolog_α
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n728_lit_string_α
n727_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n729_call_builtin_prolog_α
.Lx763_0:
                        .quad            .Lx763_0_s
.Lx763_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n729_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n730_lit_string_α
n729_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n731_call_builtin_prolog_α
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n731_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n732_lit_string_α
n731_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n733_call_builtin_prolog_α
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n733_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n734_lit_string_α
n733_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n735_call_builtin_prolog_α
.Lx769_0:
                        .quad            .Lx769_0_s
.Lx769_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n735_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n736_lit_string_α
n735_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n736_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n737_call_builtin_prolog_α
.Lx771_0:
                        .quad            .Lx771_0_s
.Lx771_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n737_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n738_lit_string_α
n737_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n739_call_builtin_prolog_α
.Lx773_0:
                        .quad            .Lx773_0_s
.Lx773_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n739_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n740_lit_string_α
n739_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n741_call_builtin_prolog_α
.Lx775_0:
                        .quad            .Lx775_0_s
.Lx775_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n741_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   n742_lit_string_α
n741_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        mov              qword ptr [rbp + 1088], 2                      # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n743_call_builtin_prolog_α
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n743_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n749_call_builtin_prolog_α
                                                                                        jmp   n744_lit_string_α
n743_call_builtin_prolog_β:
                                                                                        jmp   n749_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n745_var_ref_α
.Lx779_0:
                        .quad            .Lx779_0_s
.Lx779_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n745_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n746_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n746_call_proc_staged_α:
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1200]
                        lea              rcx, [rbp + 1216]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx783_2
.Lx783_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n749_call_builtin_prolog_α
                                                                                        jmp   n747_move_label_α
n746_call_proc_staged_β:
                                                                                        jmp   n749_call_builtin_prolog_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n747_move_label_α:
                        lea              rax, [rip + n746_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_times10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n748_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   rax
n748_disjunction_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n749_call_builtin_prolog_α:
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
                                                                                        je    proc_times10$2F0_ω
                                                                                        jmp   proc_times10$2F0_ω
n749_call_builtin_prolog_β:
                                                                                        jmp   proc_times10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_times10$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_times10$2F0_β:
                                                                                        jmp   n748_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_times10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              rbp, qword ptr [rbp + 1288]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_times10$2F0_ω:
                        lea              rsp, [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1288]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_times10$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx789_2]
                        lea              rdx, [rip + .Lx789_3]
                                                                                        jmp   proc_times10$2F0_α
.Lx789_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx789_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "d/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_d$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 8224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_d$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "top/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_top$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "times10/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_times10$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_times10$2F0_dcα]
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
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 304
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n790_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx801_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                                                                                        jmp   .Lx801_101
.Lx801_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx801_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx801_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx801_101
.Lx801_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx801_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n791_call_proc_staged_α
n790_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n791_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              rax, [rip + .Lx803_7]
                        push             rax
                        mov              edi, 1                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx803_1
                        lea              rcx, [rip + .Lx803_3]
                        lea              rdx, [rip + .Lx803_4]
                                                                                        jmp   rax
.Lx803_3:
                        mov              qword ptr [rbp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx803_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx803_2
.Lx803_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx803_2
.Lx803_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx803_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx803_2
.Lx803_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx803_2
.Lx803_1:
                        call             rt_faildescr@PLT
.Lx803_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n794_lit_string_α
                                                                                        jmp   n792_lit_string_α
n791_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 256], 0
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 280]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n794_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              ecx, 16
                        mov              r8d, 112
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 1                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n794_lit_string_α
                        lea              r11, [rip + .Lx803_7]
                        push             r11
                        lea              rcx, [rip + .Lx803_3]
                        lea              rdx, [rip + .Lx803_4]
                                                                                        jmp   rax
.Lx803_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n794_lit_string_α
                                                                                        jmp   n792_lit_string_α
.Lx803_0:
                        .quad            .Lx803_0_s
.Lx803_0_s:
                        .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n793_call_builtin_prolog_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n793_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn806:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn806]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n800_call_builtin_prolog_α
                                                                                        jmp   n796_lit_string_α
n793_call_builtin_prolog_β:
                                                                                        jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 6
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n795_call_builtin_prolog_α
.Lx807_0:
                        .quad            .Lx807_0_s
.Lx807_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn809:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n800_call_builtin_prolog_α
                                                                                        jmp   n796_lit_string_α
n795_call_builtin_prolog_β:
                                                                                        jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n797_call_builtin_prolog_α
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn812:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn812]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n800_call_builtin_prolog_α
                                                                                        jmp   n798_move_label_α
n797_call_builtin_prolog_β:
                                                                                        jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n798_move_label_α:
                        lea              rax, [rip + n800_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n799_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    main_ω
                                                                                        jmp   rax
n799_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n800_call_builtin_prolog_α:
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
n800_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n799_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 336]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 336]
                        mov              rcx, qword ptr [rbp + 320]
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
