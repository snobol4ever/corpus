                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 4400
                        mov              [rsp + 4376], rcx
                        mov              [rsp + 4384], rdx
                        mov              [rsp + 4392], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4288
                        mov              edx, 4368
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx143_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx143_101
.Lx143_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx143_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 4272], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n3_op11_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "bound"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4232], rax
                        lea              rdi, [rbp + 4224]
                        mov              rsi, qword ptr [rip + .Lx147_2]
                                                                                        jmp   .Lx147_3
.Lx147_2:
                        .quad            .Lx147_2_s
.Lx147_2_s:
                        .string          "bound"
.Lx147_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 4192], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n8_var_ref_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 3936], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n11_op11_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4152], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4168], rax
                        lea              rdi, [rbp + 4144]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n12_op11_α
n10_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        lea              rdi, [rbp + 3888]
                        mov              rsi, qword ptr [rip + .Lx158_2]
                                                                                        jmp   .Lx158_3
.Lx158_2:
                        .quad            .Lx158_2_s
.Lx158_2_s:
                        .string          "erase"
.Lx158_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4088], rax
                        lea              rdi, [rbp + 4064]
                        lea              r8, [rbp + 4064]
.Lx159_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx159_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_41
                        cmp              esi, 1
                                                                                        jne   .Lx159_55
                        mov              r8, rax
                                                                                        jmp   .Lx159_40
.Lx159_55:
                        cmp              esi, 2
                                                                                        jne   .Lx159_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx159_41
                        mov              r8, rax
                                                                                        jmp   .Lx159_40
.Lx159_56:
                        cmp              eax, 13
                                                                                        jne   .Lx159_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_41
                        cmp              rax, r8
                                                                                        je    .Lx159_41
                        mov              r8, rax
                                                                                        jmp   .Lx159_40
.Lx159_41:
                        lea              r9, [rbp + 4080]
.Lx159_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx159_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_43
                        cmp              esi, 1
                                                                                        jne   .Lx159_57
                        mov              r9, rax
                                                                                        jmp   .Lx159_42
.Lx159_57:
                        cmp              esi, 2
                                                                                        jne   .Lx159_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx159_43
                        mov              r9, rax
                                                                                        jmp   .Lx159_42
.Lx159_58:
                        cmp              eax, 13
                                                                                        jne   .Lx159_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_43
                        cmp              rax, r9
                                                                                        je    .Lx159_43
                        mov              r9, rax
                                                                                        jmp   .Lx159_42
.Lx159_43:
                        cmp              r8, r9
                                                                                        je    .Lx159_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx159_44
                        cmp              eax, 99
                                                                                        je    .Lx159_44
                        cmp              eax, 13
                                                                                        jne   .Lx159_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx159_44
                                                                                        jmp   .Lx159_45
.Lx159_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx159_53
                        cmp              eax, 99
                                                                                        je    .Lx159_53
                        cmp              eax, 13
                                                                                        jne   .Lx159_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx159_53
                                                                                        jmp   .Lx159_46
.Lx159_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx159_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx159_53
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
                                                                                        jmp   .Lx159_51
.Lx159_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx159_47
                        cmp              eax, 99
                                                                                        je    .Lx159_47
                        cmp              eax, 13
                                                                                        jne   .Lx159_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx159_47
                                                                                        jmp   .Lx159_48
.Lx159_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx159_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx159_53
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
                                                                                        jmp   .Lx159_51
.Lx159_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx159_49
                        cmp              edx, 14
                                                                                        je    .Lx159_53
                                                                                        jmp   .Lx159_52
.Lx159_49:
                        cmp              edx, 14
                                                                                        je    .Lx159_52
                        cmp              ecx, 7
                                                                                        je    .Lx159_53
                        cmp              edx, 7
                                                                                        je    .Lx159_53
                        cmp              ecx, 6
                                                                                        jne   .Lx159_50
                        cmp              edx, 6
                                                                                        jne   .Lx159_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx159_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx159_51
                                                                                        jmp   .Lx159_52
.Lx159_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx159_53
.Lx159_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx159_54
.Lx159_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx159_54
.Lx159_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx159_54:
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n15_lit_string_α
n12_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3592], rax
                        lea              rdi, [rbp + 3584]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n17_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n18_op11_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 3856], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n19_op11_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4024], rax
                        .section         .rodata
.Lrkfn168:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rbp + 4016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n21_suspend_α
n18_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              rsi, qword ptr [rip + .Lx169_2]
                                                                                        jmp   .Lx169_3
.Lx169_2:
                        .quad            .Lx169_2_s
.Lx169_2_s:
                        .string          "true"
.Lx169_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n22_lit_string_α
n19_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 3552], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n23_op11_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n21_suspend_α:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n21_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 3776], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n24_op11_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3512], rax
                        lea              rdi, [rbp + 3504]
                        mov              rsi, qword ptr [rip + .Lx174_2]
                                                                                        jmp   .Lx174_3
.Lx174_2:
                        .quad            .Lx174_2_s
.Lx174_2_s:
                        .string          "double_erase"
.Lx174_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n25_var_ref_α
n23_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lrkfn176:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rbp + 3760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n27_var_ref_α
n24_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
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
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n29_var_ref_α
n26_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n30_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 3472], 1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n31_op11_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx186_20
                        mov              rax, qword ptr [rbp + 3728]
                        mov              rdx, qword ptr [rbp + 3736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx186_21
.Lx186_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3728]
                        mov              rdx, qword ptr [rbp + 3736]
                        call             rt_arg_stage@PLT
.Lx186_21:
                        mov              rdi, qword ptr [rip + .Lx186_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx186_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx186_3]
                        lea              rdx, [rip + .Lx186_4]
                                                                                        jmp   rax
.Lx186_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx186_2
.Lx186_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx186_2
.Lx186_1:
                        call             rt_faildescr@PLT
.Lx186_2:
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n33_lit_string_α
n30_call_proc_staged_β:
                                                                                        jmp   n14_op11_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              rsi, qword ptr [rip + .Lx187_2]
                                                                                        jmp   .Lx187_3
.Lx187_2:
                        .quad            .Lx187_2_s
.Lx187_2_s:
                        .string          "true"
.Lx187_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n34_lit_string_α
n31_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n35_op11_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "retract_erase"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n36_call_proc_staged_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n37_op11_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        mov              rsi, qword ptr [rip + .Lx191_2]
                                                                                        jmp   .Lx191_3
.Lx191_2:
                        .quad            .Lx191_2_s
.Lx191_2_s:
                        .string          "retract_erase"
.Lx191_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n39_op11_α
                                                                                        jmp   n38_var_ref_α
n35_op11_β:
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α:
                        mov              qword ptr [rbp + 3632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx193_20
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx193_21
.Lx193_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        call             rt_arg_stage@PLT
.Lx193_21:
                        mov              edi, 10
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx193_1
                        lea              rcx, [rip + .Lx193_3]
                        lea              rdx, [rip + .Lx193_4]
                                                                                        jmp   rax
.Lx193_3:
                        mov              qword ptr [rbp + 3640], rsp
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx193_5
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx193_2
.Lx193_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx193_2
.Lx193_4:
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx193_6
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx193_2
.Lx193_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx193_2
.Lx193_1:
                        call             rt_faildescr@PLT
.Lx193_2:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n40_suspend_α
                                                                                        jmp   n30_call_proc_staged_β
n36_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3640]
                                                                                        jmp   qword ptr [rsp]
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "term/1"
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3384], rax
                        .section         .rodata
.Lrkfn195:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 3376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n41_var_ref_α
n37_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n43_var_ref_α
n39_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_suspend_α:
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n40_suspend_β:
                                                                                        jmp   n30_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n44_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n45_op11_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_20
                        mov              rax, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx207_21
.Lx207_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        call             rt_arg_stage@PLT
.Lx207_21:
                        mov              rdi, qword ptr [rip + .Lx207_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx207_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx207_3]
                        lea              rdx, [rip + .Lx207_4]
                                                                                        jmp   rax
.Lx207_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx207_2
.Lx207_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx207_2
.Lx207_1:
                        call             rt_faildescr@PLT
.Lx207_2:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n47_var_ref_α
n44_call_proc_staged_β:
                                                                                        jmp   n26_op11_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        mov              rsi, qword ptr [rip + .Lx208_2]
                                                                                        jmp   .Lx208_3
.Lx208_2:
                        .quad            .Lx208_2_s
.Lx208_2_s:
                        .string          "true"
.Lx208_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n39_op11_α
                                                                                        jmp   n48_lit_string_α
n45_op11_β:
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n49_op11_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n50_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n51_op11_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2776], rax
                        lea              rdi, [rbp + 2768]
                        mov              rsi, qword ptr [rip + .Lx213_2]
                                                                                        jmp   .Lx213_3
.Lx213_2:
                        .quad            .Lx213_2_s
.Lx213_2_s:
                        .string          "erase"
.Lx213_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n53_op11_α
                                                                                        jmp   n52_var_ref_α
n49_op11_β:
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx215_20
                        mov              rax, qword ptr [rbp + 3280]
                        mov              rdx, qword ptr [rbp + 3288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx215_21
.Lx215_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3280]
                        mov              rdx, qword ptr [rbp + 3288]
                        call             rt_arg_stage@PLT
.Lx215_21:
                        mov              rdi, qword ptr [rip + .Lx215_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx215_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx215_3]
                        lea              rdx, [rip + .Lx215_4]
                                                                                        jmp   rax
.Lx215_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx215_2
.Lx215_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx215_2
.Lx215_1:
                        call             rt_faildescr@PLT
.Lx215_2:
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n54_suspend_α
                                                                                        jmp   n44_call_proc_staged_β
n50_call_proc_staged_β:
                                                                                        jmp   n54_suspend_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3016], rax
                        .section         .rodata
.Lrkfn217:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n39_op11_α
                                                                                        jmp   n55_lit_string_α
n51_op11_β:
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n57_var_ref_α
n53_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_suspend_α:
                        lea              rax, [rip + n54_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n54_suspend_β:
                                                                                        jmp   n44_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n58_op11_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n59_op11_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn228:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n39_op11_α
                                                                                        jmp   n61_var_ref_α
n58_op11_β:
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2696], rax
                        lea              rdi, [rbp + 2688]
                        mov              rsi, qword ptr [rip + .Lx229_2]
                                                                                        jmp   .Lx229_3
.Lx229_2:
                        .quad            .Lx229_2_s
.Lx229_2_s:
                        .string          "true"
.Lx229_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n53_op11_α
                                                                                        jmp   n62_lit_string_α
n59_op11_β:
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n63_op11_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n64_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n65_lit_string_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              rsi, qword ptr [rip + .Lx234_2]
                                                                                        jmp   .Lx234_3
.Lx234_2:
                        .quad            .Lx234_2_s
.Lx234_2_s:
                        .string          "double_erase"
.Lx234_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n66_var_ref_α
n63_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_20
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx236_21
.Lx236_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        call             rt_arg_stage@PLT
.Lx236_21:
                        mov              rdi, qword ptr [rip + .Lx236_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx236_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx236_3]
                        lea              rdx, [rip + .Lx236_4]
                                                                                        jmp   rax
.Lx236_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_1:
                        call             rt_faildescr@PLT
.Lx236_2:
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    n68_suspend_α
                                                                                        jmp   n39_op11_α
n64_call_proc_staged_β:
                                                                                        jmp   n68_suspend_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n69_var_ref_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n71_var_ref_α
n67_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_suspend_α:
                        lea              rax, [rip + n68_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n68_suspend_β:
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n72_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n73_op11_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_20
                        mov              rax, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx249_21
.Lx249_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        call             rt_arg_stage@PLT
.Lx249_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_22
                        mov              rax, qword ptr [rbp + 2640]
                        mov              rdx, qword ptr [rbp + 2648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx249_23
.Lx249_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2640]
                        mov              rdx, qword ptr [rbp + 2648]
                        call             rt_arg_stage@PLT
.Lx249_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_24
                        mov              rax, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx249_25
.Lx249_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        call             rt_arg_stage@PLT
.Lx249_25:
                        mov              rdi, qword ptr [rip + .Lx249_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx249_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx249_3]
                        lea              rdx, [rip + .Lx249_4]
                                                                                        jmp   rax
.Lx249_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_1:
                        call             rt_faildescr@PLT
.Lx249_2:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n53_op11_α
                                                                                        jmp   n75_lit_string_α
n72_call_proc_staged_β:
                                                                                        jmp   n53_op11_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2112]
                        mov              rsi, qword ptr [rip + .Lx250_2]
                                                                                        jmp   .Lx250_3
.Lx250_2:
                        .quad            .Lx250_2_s
.Lx250_2_s:
                        .string          "true"
.Lx250_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n76_lit_string_α
n73_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n77_op11_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "recorded_vt"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n78_lit_string_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n79_lit_string_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              rsi, qword ptr [rip + .Lx254_2]
                                                                                        jmp   .Lx254_3
.Lx254_2:
                        .quad            .Lx254_2_s
.Lx254_2_s:
                        .string          "recorded_vt"
.Lx254_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n81_op11_α
                                                                                        jmp   n80_var_ref_α
n77_op11_β:
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n82_call_proc_staged_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n83_var_ref_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
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
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n81_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n82_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx261_20
                        mov              rax, qword ptr [rbp + 2512]
                        mov              rdx, qword ptr [rbp + 2520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx261_21
.Lx261_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2512]
                        mov              rdx, qword ptr [rbp + 2520]
                        call             rt_arg_stage@PLT
.Lx261_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx261_22
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx261_23
.Lx261_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        call             rt_arg_stage@PLT
.Lx261_23:
                        mov              rdi, qword ptr [rip + .Lx261_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx261_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx261_3]
                        lea              rdx, [rip + .Lx261_4]
                                                                                        jmp   rax
.Lx261_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx261_2
.Lx261_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx261_2
.Lx261_1:
                        call             rt_faildescr@PLT
.Lx261_2:
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_proc_staged_β
                                                                                        jmp   n85_var_ref_α
n82_call_proc_staged_β:
                                                                                        jmp   n72_call_proc_staged_β
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n86_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n87_lit_string_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n88_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_20
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx268_21
.Lx268_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx268_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_22
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx268_23
.Lx268_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        call             rt_arg_stage@PLT
.Lx268_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_24
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx268_25
.Lx268_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             rt_arg_stage@PLT
.Lx268_25:
                        mov              rdi, qword ptr [rip + .Lx268_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx268_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4]
                                                                                        jmp   rax
.Lx268_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx268_2
.Lx268_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx268_2
.Lx268_1:
                        call             rt_faildescr@PLT
.Lx268_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n89_lit_string_α
n86_call_proc_staged_β:
                                                                                        jmp   n67_op11_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n90_lit_string_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx271_20
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx271_21
.Lx271_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        call             rt_arg_stage@PLT
.Lx271_21:
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx271_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx271_3]
                        lea              rdx, [rip + .Lx271_4]
                                                                                        jmp   rax
.Lx271_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx271_2
.Lx271_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx271_2
.Lx271_1:
                        call             rt_faildescr@PLT
.Lx271_2:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n82_call_proc_staged_β
                                                                                        jmp   n91_lit_string_α
n88_call_proc_staged_β:
                                                                                        jmp   n82_call_proc_staged_β
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n92_lit_string_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n93_lit_string_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n94_lit_string_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n95_call_proc_staged_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n96_var_ref_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n97_call_proc_staged_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_20
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx279_21
.Lx279_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        call             rt_arg_stage@PLT
.Lx279_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_22
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx279_23
.Lx279_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        call             rt_arg_stage@PLT
.Lx279_23:
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx279_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4]
                                                                                        jmp   rax
.Lx279_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx279_2
.Lx279_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx279_2
.Lx279_1:
                        call             rt_faildescr@PLT
.Lx279_2:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n86_call_proc_staged_β
                                                                                        jmp   n98_var_ref_α
n95_call_proc_staged_β:
                                                                                        jmp   n86_call_proc_staged_β
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx283_20
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx283_21
.Lx283_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        call             rt_arg_stage@PLT
.Lx283_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx283_22
                        mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx283_23
.Lx283_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        call             rt_arg_stage@PLT
.Lx283_23:
                        mov              rdi, qword ptr [rip + .Lx283_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx283_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx283_3]
                        lea              rdx, [rip + .Lx283_4]
                                                                                        jmp   rax
.Lx283_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx283_2
.Lx283_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx283_2
.Lx283_1:
                        call             rt_faildescr@PLT
.Lx283_2:
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n100_suspend_α
                                                                                        jmp   n88_call_proc_staged_β
n97_call_proc_staged_β:
                                                                                        jmp   n100_suspend_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n101_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n102_var_ref_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n100_suspend_α:
                        lea              rax, [rip + n100_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n100_suspend_β:
                                                                                        jmp   n88_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx290_20
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx290_21
.Lx290_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_arg_stage@PLT
.Lx290_21:
                        mov              rdi, qword ptr [rip + .Lx290_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx290_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx290_3]
                        lea              rdx, [rip + .Lx290_4]
                                                                                        jmp   rax
.Lx290_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx290_2
.Lx290_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx290_2
.Lx290_1:
                        call             rt_faildescr@PLT
.Lx290_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n95_call_proc_staged_β
                                                                                        jmp   n103_var_ref_α
n101_call_proc_staged_β:
                                                                                        jmp   n95_call_proc_staged_β
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n105_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n106_op11_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx297_20
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx297_21
.Lx297_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        call             rt_arg_stage@PLT
.Lx297_21:
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx297_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx297_3]
                        lea              rdx, [rip + .Lx297_4]
                                                                                        jmp   rax
.Lx297_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx297_2
.Lx297_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx297_2
.Lx297_1:
                        call             rt_faildescr@PLT
.Lx297_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n107_suspend_α
                                                                                        jmp   n101_call_proc_staged_β
n105_call_proc_staged_β:
                                                                                        jmp   n107_suspend_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n108_op11_α
n106_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_suspend_α:
                        lea              rax, [rip + n107_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n107_suspend_β:
                                                                                        jmp   n101_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n109_lit_string_α
n108_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n110_lit_string_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n111_lit_string_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n112_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n113_lit_string_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n114_op11_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n114_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n115_op11_α
n114_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
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
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n116_op11_α
n115_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n117_op11_α
n116_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n118_lit_string_α
n117_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n119_lit_string_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n120_lit_string_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "nondet"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n121_op11_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n122_op11_α
n121_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n81_op11_α
                                                                                        jmp   n123_op11_α
n122_op11_β:
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        lea              r8, [rbp + 704]
.Lx316_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx316_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx316_41
                        cmp              esi, 1
                                                                                        jne   .Lx316_55
                        mov              r8, rax
                                                                                        jmp   .Lx316_40
.Lx316_55:
                        cmp              esi, 2
                                                                                        jne   .Lx316_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx316_41
                        mov              r8, rax
                                                                                        jmp   .Lx316_40
.Lx316_56:
                        cmp              eax, 13
                                                                                        jne   .Lx316_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx316_41
                        cmp              rax, r8
                                                                                        je    .Lx316_41
                        mov              r8, rax
                                                                                        jmp   .Lx316_40
.Lx316_41:
                        lea              r9, [rbp + 720]
.Lx316_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx316_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx316_43
                        cmp              esi, 1
                                                                                        jne   .Lx316_57
                        mov              r9, rax
                                                                                        jmp   .Lx316_42
.Lx316_57:
                        cmp              esi, 2
                                                                                        jne   .Lx316_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx316_43
                        mov              r9, rax
                                                                                        jmp   .Lx316_42
.Lx316_58:
                        cmp              eax, 13
                                                                                        jne   .Lx316_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx316_43
                        cmp              rax, r9
                                                                                        je    .Lx316_43
                        mov              r9, rax
                                                                                        jmp   .Lx316_42
.Lx316_43:
                        cmp              r8, r9
                                                                                        je    .Lx316_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx316_44
                        cmp              eax, 99
                                                                                        je    .Lx316_44
                        cmp              eax, 13
                                                                                        jne   .Lx316_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx316_44
                                                                                        jmp   .Lx316_45
.Lx316_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx316_53
                        cmp              eax, 99
                                                                                        je    .Lx316_53
                        cmp              eax, 13
                                                                                        jne   .Lx316_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx316_53
                                                                                        jmp   .Lx316_46
.Lx316_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx316_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx316_53
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
                                                                                        jmp   .Lx316_51
.Lx316_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx316_47
                        cmp              eax, 99
                                                                                        je    .Lx316_47
                        cmp              eax, 13
                                                                                        jne   .Lx316_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx316_47
                                                                                        jmp   .Lx316_48
.Lx316_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx316_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx316_53
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
                                                                                        jmp   .Lx316_51
.Lx316_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx316_49
                        cmp              edx, 14
                                                                                        je    .Lx316_53
                                                                                        jmp   .Lx316_52
.Lx316_49:
                        cmp              edx, 14
                                                                                        je    .Lx316_52
                        cmp              ecx, 7
                                                                                        je    .Lx316_53
                        cmp              edx, 7
                                                                                        je    .Lx316_53
                        cmp              ecx, 6
                                                                                        jne   .Lx316_50
                        cmp              edx, 6
                                                                                        jne   .Lx316_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx316_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx316_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx316_51
                                                                                        jmp   .Lx316_52
.Lx316_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx316_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx316_53
.Lx316_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx316_54
.Lx316_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx316_54
.Lx316_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx316_54:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n81_op11_α
                                                                                        jmp   n124_lit_string_α
n123_op11_β:
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n125_lit_string_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n126_var_ref_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4320]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_20
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx322_21
.Lx322_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx322_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_22
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx322_23
.Lx322_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx322_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_24
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx322_25
.Lx322_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx322_25:
                        mov              rdi, qword ptr [rip + .Lx322_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx322_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx322_3]
                        lea              rdx, [rip + .Lx322_4]
                                                                                        jmp   rax
.Lx322_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx322_2
.Lx322_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx322_2
.Lx322_1:
                        call             rt_faildescr@PLT
.Lx322_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n81_op11_α
                                                                                        jmp   n128_lit_string_α
n127_call_proc_staged_β:
                                                                                        jmp   n81_op11_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n129_lit_string_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n130_var_ref_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4304]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n131_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx328_20
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx328_21
.Lx328_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx328_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx328_22
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx328_23
.Lx328_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx328_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx328_24
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx328_25
.Lx328_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx328_25:
                        mov              rdi, qword ptr [rip + .Lx328_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx328_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx328_3]
                        lea              rdx, [rip + .Lx328_4]
                                                                                        jmp   rax
.Lx328_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx328_2
.Lx328_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx328_2
.Lx328_1:
                        call             rt_faildescr@PLT
.Lx328_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n127_call_proc_staged_β
                                                                                        jmp   n132_var_ref_α
n131_call_proc_staged_β:
                                                                                        jmp   n127_call_proc_staged_β
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "recorda/3"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx333_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx333_21
.Lx333_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx333_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx333_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx333_23
.Lx333_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx333_23:
                        mov              rdi, qword ptr [rip + .Lx333_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx333_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx333_3]
                        lea              rdx, [rip + .Lx333_4]
                                                                                        jmp   rax
.Lx333_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx333_2
.Lx333_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx333_2
.Lx333_1:
                        call             rt_faildescr@PLT
.Lx333_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n131_call_proc_staged_β
                                                                                        jmp   n135_var_ref_α
n134_call_proc_staged_β:
                                                                                        jmp   n131_call_proc_staged_β
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n137_call_proc_staged_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx338_21
.Lx338_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx338_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx338_23
.Lx338_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx338_23:
                        mov              rdi, qword ptr [rip + .Lx338_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx338_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx338_3]
                        lea              rdx, [rip + .Lx338_4]
                                                                                        jmp   rax
.Lx338_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx338_2
.Lx338_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx338_2
.Lx338_1:
                        call             rt_faildescr@PLT
.Lx338_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n134_call_proc_staged_β
                                                                                        jmp   n138_var_ref_α
n137_call_proc_staged_β:
                                                                                        jmp   n134_call_proc_staged_β
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "recorded/2"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4320]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx342_21
.Lx342_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx342_21:
                        mov              rdi, qword ptr [rip + .Lx342_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx342_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx342_3]
                        lea              rdx, [rip + .Lx342_4]
                                                                                        jmp   rax
.Lx342_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_1:
                        call             rt_faildescr@PLT
.Lx342_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n137_call_proc_staged_β
                                                                                        jmp   n140_var_ref_α
n139_call_proc_staged_β:
                                                                                        jmp   n137_call_proc_staged_β
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4304]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n141_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx346_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx346_21
.Lx346_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx346_21:
                        mov              rdi, qword ptr [rip + .Lx346_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx346_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx346_3]
                        lea              rdx, [rip + .Lx346_4]
                                                                                        jmp   rax
.Lx346_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx346_2
.Lx346_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx346_2
.Lx346_1:
                        call             rt_faildescr@PLT
.Lx346_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_proc_staged_β
                                                                                        jmp   n142_suspend_α
n141_call_proc_staged_β:
                                                                                        jmp   n139_call_proc_staged_β
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n142_suspend_α:
                        lea              rax, [rip + n142_suspend_β]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n142_suspend_β:
                                                                                        jmp   n141_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 4288]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 4376]
                        mov              rbp, [rbp + 4392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 4384]
                        lea              rsp, [rbp + 4400]
                        mov              rbp, [rbp + 4392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_dbref$2F0_α
proc_test_dbref$2F0_α:
                        .global          proc_test_dbref$2F0_α
                        .global          proc_test_dbref$2F0_β
                        .global          proc_test_dbref$2F0_γ
                        .global          proc_test_dbref$2F0_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_dbref$2F0_α_body:
                        lea              rax, [rip + n359_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n349_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx360_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx360_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx360_101
.Lx360_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx360_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_dbref$2F0_ω
                                                                                        jmp   n350_lit_string_α
n349_op11_β:
                                                                                        jmp   proc_test_dbref$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n351_lit_string_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n352_lit_string_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n353_lit_string_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n354_lit_string_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n355_op11_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n355_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_dbref$2F0_ω
                                                                                        jmp   n356_op11_α
n355_op11_β:
                                                                                        jmp   proc_test_dbref$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n358_op11_α
                                                                                        jmp   n357_call_proc_staged_α
n356_op11_β:
                                                                                        jmp   n358_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx369_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx369_21
.Lx369_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx369_21:
                        mov              rdi, qword ptr [rip + .Lx369_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx369_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx369_3]
                        lea              rdx, [rip + .Lx369_4]
                                                                                        jmp   rax
.Lx369_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx369_2
.Lx369_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx369_2
.Lx369_1:
                        call             rt_faildescr@PLT
.Lx369_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n358_op11_α
                                                                                        jmp   n359_suspend_α
n357_call_proc_staged_β:
                                                                                        jmp   n358_op11_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n358_op11_α:
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
                                                                                        je    proc_test_dbref$2F0_ω
                                                                                        jmp   proc_test_dbref$2F0_ω
n358_op11_β:
                                                                                        jmp   proc_test_dbref$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n359_suspend_α:
                        lea              rax, [rip + n359_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_dbref$2F0_γ
n359_suspend_β:
                                                                                        jmp   n357_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_dbref$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_dbref$2F0_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_dbref$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_dbref$2F0_res]
                        push             rax
                        mov              rax, [rbp + 392]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_dbref$2F0_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 8912
                        mov              [rsp + 8888], rcx
                        mov              [rsp + 8896], rdx
                        mov              [rsp + 8904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 8800
                        mov              edx, 8880
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n433_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
#-----------------------------------------------------------------------------------------------------------------------
n373_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx633_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx633_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx633_101
.Lx633_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx633_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n374_var_ref_α
n373_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n374_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8768], rax
                        mov              qword ptr [rbp + 8776], rdx
                                                                                        jmp   n375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 8784], 1
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 8792], rax
                                                                                        jmp   n376_op11_α
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n376_op11_α:
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 8736], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 8744], rax
                        lea              rdi, [rbp + 8736]
                        mov              rsi, qword ptr [rip + .Lx637_2]
                                                                                        jmp   .Lx637_3
.Lx637_2:
                        .quad            .Lx637_2_s
.Lx637_2_s:
                        .string          "assert2"
.Lx637_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 8720], rax
                        mov              qword ptr [rbp + 8728], rdx
                        cmp              eax, 99
                                                                                        je    n378_op11_α
                                                                                        jmp   n377_var_ref_α
n376_op11_β:
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8688], rax
                        mov              qword ptr [rbp + 8696], rdx
                                                                                        jmp   n379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n378_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 8176], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8184], rax
                        lea              rdi, [rbp + 8176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 8160], rax
                        mov              qword ptr [rbp + 8168], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n380_var_ref_α
n378_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 8704], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 8712], rax
                                                                                        jmp   n381_op11_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "bound"
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8128], rax
                        mov              qword ptr [rbp + 8136], rdx
                                                                                        jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
                        mov              rax, qword ptr [rbp + 8688]
                        mov              qword ptr [rbp + 8656], rax
                        mov              rax, qword ptr [rbp + 8696]
                        mov              qword ptr [rbp + 8664], rax
                        lea              rdi, [rbp + 8656]
                        mov              rsi, qword ptr [rip + .Lx644_2]
                                                                                        jmp   .Lx644_3
.Lx644_2:
                        .quad            .Lx644_2_s
.Lx644_2_s:
                        .string          "bound"
.Lx644_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 8640], rax
                        mov              qword ptr [rbp + 8648], rdx
                        cmp              eax, 99
                                                                                        je    n378_op11_α
                                                                                        jmp   n383_var_ref_α
n381_op11_β:
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 8144], 1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n384_op11_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 8528], rax
                        mov              qword ptr [rbp + 8536], rdx
                                                                                        jmp   n385_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n384_op11_α:
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 8096], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 8104], rax
                        lea              rdi, [rbp + 8096]
                        mov              rsi, qword ptr [rip + .Lx648_2]
                                                                                        jmp   .Lx648_3
.Lx648_2:
                        .quad            .Lx648_2_s
.Lx648_2_s:
                        .string          "assert2"
.Lx648_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        cmp              eax, 99
                                                                                        je    n387_op11_α
                                                                                        jmp   n386_var_ref_α
n384_op11_β:
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:
                        mov              qword ptr [rbp + 8624], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 8632], rax
                                                                                        jmp   n388_var_ref_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8048], rax
                        mov              qword ptr [rbp + 8056], rdx
                                                                                        jmp   n389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 7152], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 7160], rax
                        lea              rdi, [rbp + 7152]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n390_var_ref_α
n387_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 8544], rax
                        mov              qword ptr [rbp + 8552], rdx
                                                                                        jmp   n391_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:
                        mov              qword ptr [rbp + 8064], 1
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 8072], rax
                                                                                        jmp   n392_op11_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n390_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx
                                                                                        jmp   n393_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_op11_α:
                        mov              rax, qword ptr [rbp + 8624]
                        mov              qword ptr [rbp + 8576], rax
                        mov              rax, qword ptr [rbp + 8632]
                        mov              qword ptr [rbp + 8584], rax
                        mov              rax, qword ptr [rbp + 8544]
                        mov              qword ptr [rbp + 8592], rax
                        mov              rax, qword ptr [rbp + 8552]
                        mov              qword ptr [rbp + 8600], rax
                        lea              rdi, [rbp + 8576]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 8560], rax
                        mov              qword ptr [rbp + 8568], rdx
                        cmp              eax, 99
                                                                                        je    n378_op11_α
                                                                                        jmp   n394_op11_α
n391_op11_β:
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n392_op11_α:
                        mov              rax, qword ptr [rbp + 8048]
                        mov              qword ptr [rbp + 8016], rax
                        mov              rax, qword ptr [rbp + 8056]
                        mov              qword ptr [rbp + 8024], rax
                        lea              rdi, [rbp + 8016]
                        mov              rsi, qword ptr [rip + .Lx659_2]
                                                                                        jmp   .Lx659_3
.Lx659_2:
                        .quad            .Lx659_2_s
.Lx659_2_s:
                        .string          "erase"
.Lx659_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 8000], rax
                        mov              qword ptr [rbp + 8008], rdx
                        cmp              eax, 99
                                                                                        je    n387_op11_α
                                                                                        jmp   n395_var_ref_α
n392_op11_β:
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:
                        mov              qword ptr [rbp + 7120], 1
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rbp + 7128], rax
                                                                                        jmp   n396_op11_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n394_op11_α:
                        mov              rax, qword ptr [rbp + 8528]
                        mov              qword ptr [rbp + 8496], rax
                        mov              rax, qword ptr [rbp + 8536]
                        mov              qword ptr [rbp + 8504], rax
                        mov              rax, qword ptr [rbp + 8560]
                        mov              qword ptr [rbp + 8512], rax
                        mov              rax, qword ptr [rbp + 8568]
                        mov              qword ptr [rbp + 8520], rax
                        lea              rdi, [rbp + 8496]
                        lea              r8, [rbp + 8496]
.Lx661_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        cmp              esi, 1
                                                                                        jne   .Lx661_55
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_55:
                        cmp              esi, 2
                                                                                        jne   .Lx661_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_56:
                        cmp              eax, 13
                                                                                        jne   .Lx661_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        cmp              rax, r8
                                                                                        je    .Lx661_41
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_41:
                        lea              r9, [rbp + 8512]
.Lx661_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        cmp              esi, 1
                                                                                        jne   .Lx661_57
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_57:
                        cmp              esi, 2
                                                                                        jne   .Lx661_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_58:
                        cmp              eax, 13
                                                                                        jne   .Lx661_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        cmp              rax, r9
                                                                                        je    .Lx661_43
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_43:
                        cmp              r8, r9
                                                                                        je    .Lx661_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_44
                        cmp              eax, 99
                                                                                        je    .Lx661_44
                        cmp              eax, 13
                                                                                        jne   .Lx661_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx661_44
                                                                                        jmp   .Lx661_45
.Lx661_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_53
                        cmp              eax, 99
                                                                                        je    .Lx661_53
                        cmp              eax, 13
                                                                                        jne   .Lx661_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_53
                                                                                        jmp   .Lx661_46
.Lx661_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx661_53
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
                                                                                        jmp   .Lx661_51
.Lx661_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_47
                        cmp              eax, 99
                                                                                        je    .Lx661_47
                        cmp              eax, 13
                                                                                        jne   .Lx661_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_47
                                                                                        jmp   .Lx661_48
.Lx661_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx661_53
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
                                                                                        jmp   .Lx661_51
.Lx661_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx661_49
                        cmp              edx, 14
                                                                                        je    .Lx661_53
                                                                                        jmp   .Lx661_52
.Lx661_49:
                        cmp              edx, 14
                                                                                        je    .Lx661_52
                        cmp              ecx, 7
                                                                                        je    .Lx661_53
                        cmp              edx, 7
                                                                                        je    .Lx661_53
                        cmp              ecx, 6
                                                                                        jne   .Lx661_50
                        cmp              edx, 6
                                                                                        jne   .Lx661_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx661_51
                                                                                        jmp   .Lx661_52
.Lx661_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx661_53
.Lx661_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx661_54
.Lx661_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx661_54
.Lx661_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx661_54:
                        mov              qword ptr [rbp + 8480], rax
                        mov              qword ptr [rbp + 8488], rdx
                        cmp              eax, 99
                                                                                        je    n378_op11_α
                                                                                        jmp   n397_var_ref_α
n394_op11_β:
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7968], rax
                        mov              qword ptr [rbp + 7976], rdx
                                                                                        jmp   n398_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n396_op11_α:
                        mov              rax, qword ptr [rbp + 7104]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7080], rax
                        lea              rdi, [rbp + 7072]
                        mov              rsi, qword ptr [rip + .Lx664_2]
                                                                                        jmp   .Lx664_3
.Lx664_2:
                        .quad            .Lx664_2_s
.Lx664_2_s:
                        .string          "assert2"
.Lx664_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                        cmp              eax, 99
                                                                                        je    n400_op11_α
                                                                                        jmp   n399_var_ref_α
n396_op11_β:
                                                                                        jmp   n400_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 8256], rax
                        mov              qword ptr [rbp + 8264], rdx
                                                                                        jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rbp + 7984], 1
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 7992], rax
                                                                                        jmp   n402_op11_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n399_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                                                                                        jmp   n403_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n400_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 6136], rax
                        lea              rdi, [rbp + 6128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n404_var_ref_α
n400_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 8464], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 8472], rax
                                                                                        jmp   n405_lit_string_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n402_op11_α:
                        mov              rax, qword ptr [rbp + 7968]
                        mov              qword ptr [rbp + 7936], rax
                        mov              rax, qword ptr [rbp + 7976]
                        mov              qword ptr [rbp + 7944], rax
                        lea              rdi, [rbp + 7936]
                        mov              rsi, qword ptr [rip + .Lx672_2]
                                                                                        jmp   .Lx672_3
.Lx672_2:
                        .quad            .Lx672_2_s
.Lx672_2_s:
                        .string          "true"
.Lx672_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                        cmp              eax, 99
                                                                                        je    n387_op11_α
                                                                                        jmp   n406_var_ref_α
n402_op11_β:
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rbp + 7040], 1
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rbp + 7048], rax
                                                                                        jmp   n407_op11_α
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                                                                                        jmp   n408_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rbp + 8352], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 8360], rax
                                                                                        jmp   n409_lit_string_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx
                                                                                        jmp   n410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n407_op11_α:
                        mov              rax, qword ptr [rbp + 7024]
                        mov              qword ptr [rbp + 6992], rax
                        mov              rax, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 7000], rax
                        lea              rdi, [rbp + 6992]
                        mov              rsi, qword ptr [rip + .Lx679_2]
                                                                                        jmp   .Lx679_3
.Lx679_2:
                        .quad            .Lx679_2_s
.Lx679_2_s:
                        .string          "double_erase"
.Lx679_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                        cmp              eax, 99
                                                                                        je    n400_op11_α
                                                                                        jmp   n411_var_ref_α
n407_op11_β:
                                                                                        jmp   n400_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:
                        mov              qword ptr [rbp + 6096], 1
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n412_op11_α
.Lx680_0:
                        .quad            .Lx680_0_s
.Lx680_0_s:
                        .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:
                        mov              qword ptr [rbp + 8272], 1
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rbp + 8280], rax
                                                                                        jmp   n413_op11_α
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 7904], 1
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 7912], rax
                                                                                        jmp   n414_lit_string_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                                                                                        jmp   n415_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n412_op11_α:
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6056], rax
                        lea              rdi, [rbp + 6048]
                        mov              rsi, qword ptr [rip + .Lx685_2]
                                                                                        jmp   .Lx685_3
.Lx685_2:
                        .quad            .Lx685_2_s
.Lx685_2_s:
                        .string          "assert2"
.Lx685_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 6032], rax
                        mov              qword ptr [rbp + 6040], rdx
                        cmp              eax, 99
                                                                                        je    n417_op11_α
                                                                                        jmp   n416_var_ref_α
n412_op11_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 8352]
                        mov              qword ptr [rbp + 8304], rax
                        mov              rax, qword ptr [rbp + 8360]
                        mov              qword ptr [rbp + 8312], rax
                        mov              rax, qword ptr [rbp + 8272]
                        mov              qword ptr [rbp + 8320], rax
                        mov              rax, qword ptr [rbp + 8280]
                        mov              qword ptr [rbp + 8328], rax
                        lea              rdi, [rbp + 8304]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n418_lit_string_α
n413_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 7440], 1
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rbp + 7448], rax
                                                                                        jmp   n419_lit_string_α
.Lx687_0:
                        .quad            .Lx687_0_s
.Lx687_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:
                        mov              qword ptr [rbp + 6960], 1
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rbp + 6968], rax
                                                                                        jmp   n420_op11_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                                                                                        jmp   n421_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n417_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 5032], rax
                        lea              rdi, [rbp + 5024]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n422_var_ref_α
n417_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:
                        mov              qword ptr [rbp + 8368], 1
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 8376], rax
                                                                                        jmp   n423_op11_α
.Lx692_0:
                        .quad            .Lx692_0_s
.Lx692_0_s:
                        .string          "noref"
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 7328], 1
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 7336], rax
                                                                                        jmp   n424_lit_string_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6920], rax
                        lea              rdi, [rbp + 6912]
                        mov              rsi, qword ptr [rip + .Lx694_2]
                                                                                        jmp   .Lx694_3
.Lx694_2:
                        .quad            .Lx694_2_s
.Lx694_2_s:
                        .string          "true"
.Lx694_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                        cmp              eax, 99
                                                                                        je    n400_op11_α
                                                                                        jmp   n425_var_ref_α
n420_op11_β:
                                                                                        jmp   n400_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:
                        mov              qword ptr [rbp + 6016], 1
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n426_op11_α
.Lx695_0:
                        .quad            .Lx695_0_s
.Lx695_0_s:
                        .string          "retract_erase"
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                                                                                        jmp   n427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n423_op11_α:
                        mov              rax, qword ptr [rbp + 8464]
                        mov              qword ptr [rbp + 8400], rax
                        mov              rax, qword ptr [rbp + 8472]
                        mov              qword ptr [rbp + 8408], rax
                        mov              rax, qword ptr [rbp + 8288]
                        mov              qword ptr [rbp + 8416], rax
                        mov              rax, qword ptr [rbp + 8296]
                        mov              qword ptr [rbp + 8424], rax
                        mov              rax, qword ptr [rbp + 8368]
                        mov              qword ptr [rbp + 8432], rax
                        mov              rax, qword ptr [rbp + 8376]
                        mov              qword ptr [rbp + 8440], rax
                        lea              rdi, [rbp + 8400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 8384], rax
                        mov              qword ptr [rbp + 8392], rdx
                        cmp              eax, 99
                                                                                        je    n378_op11_α
                                                                                        jmp   n428_op11_α
n423_op11_β:
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:
                        mov              qword ptr [rbp + 7248], 1
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n429_op11_α
.Lx699_0:
                        .quad            .Lx699_0_s
.Lx699_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n425_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6208], rax
                        mov              qword ptr [rbp + 6216], rdx
                                                                                        jmp   n430_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n426_op11_α:
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5976], rax
                        lea              rdi, [rbp + 5968]
                        mov              rsi, qword ptr [rip + .Lx702_2]
                                                                                        jmp   .Lx702_3
.Lx702_2:
                        .quad            .Lx702_2_s
.Lx702_2_s:
                        .string          "retract_erase"
.Lx702_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx
                        cmp              eax, 99
                                                                                        je    n417_op11_α
                                                                                        jmp   n431_var_ref_α
n426_op11_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:
                        mov              qword ptr [rbp + 4992], 1
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n432_op11_α
.Lx703_0:
                        .quad            .Lx703_0_s
.Lx703_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n428_op11_α:
                        mov              rax, qword ptr [rbp + 8256]
                        mov              qword ptr [rbp + 8224], rax
                        mov              rax, qword ptr [rbp + 8264]
                        mov              qword ptr [rbp + 8232], rax
                        mov              rax, qword ptr [rbp + 8384]
                        mov              qword ptr [rbp + 8240], rax
                        mov              rax, qword ptr [rbp + 8392]
                        mov              qword ptr [rbp + 8248], rax
                        lea              rdi, [rbp + 8224]
                        lea              r8, [rbp + 8224]
.Lx704_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx704_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_41
                        cmp              esi, 1
                                                                                        jne   .Lx704_55
                        mov              r8, rax
                                                                                        jmp   .Lx704_40
.Lx704_55:
                        cmp              esi, 2
                                                                                        jne   .Lx704_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx704_41
                        mov              r8, rax
                                                                                        jmp   .Lx704_40
.Lx704_56:
                        cmp              eax, 13
                                                                                        jne   .Lx704_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_41
                        cmp              rax, r8
                                                                                        je    .Lx704_41
                        mov              r8, rax
                                                                                        jmp   .Lx704_40
.Lx704_41:
                        lea              r9, [rbp + 8240]
.Lx704_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx704_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_43
                        cmp              esi, 1
                                                                                        jne   .Lx704_57
                        mov              r9, rax
                                                                                        jmp   .Lx704_42
.Lx704_57:
                        cmp              esi, 2
                                                                                        jne   .Lx704_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx704_43
                        mov              r9, rax
                                                                                        jmp   .Lx704_42
.Lx704_58:
                        cmp              eax, 13
                                                                                        jne   .Lx704_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx704_43
                        cmp              rax, r9
                                                                                        je    .Lx704_43
                        mov              r9, rax
                                                                                        jmp   .Lx704_42
.Lx704_43:
                        cmp              r8, r9
                                                                                        je    .Lx704_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx704_44
                        cmp              eax, 99
                                                                                        je    .Lx704_44
                        cmp              eax, 13
                                                                                        jne   .Lx704_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx704_44
                                                                                        jmp   .Lx704_45
.Lx704_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx704_53
                        cmp              eax, 99
                                                                                        je    .Lx704_53
                        cmp              eax, 13
                                                                                        jne   .Lx704_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx704_53
                                                                                        jmp   .Lx704_46
.Lx704_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx704_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx704_53
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
                                                                                        jmp   .Lx704_51
.Lx704_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx704_47
                        cmp              eax, 99
                                                                                        je    .Lx704_47
                        cmp              eax, 13
                                                                                        jne   .Lx704_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx704_47
                                                                                        jmp   .Lx704_48
.Lx704_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx704_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx704_53
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
                                                                                        jmp   .Lx704_51
.Lx704_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx704_49
                        cmp              edx, 14
                                                                                        je    .Lx704_53
                                                                                        jmp   .Lx704_52
.Lx704_49:
                        cmp              edx, 14
                                                                                        je    .Lx704_52
                        cmp              ecx, 7
                                                                                        je    .Lx704_53
                        cmp              edx, 7
                                                                                        je    .Lx704_53
                        cmp              ecx, 6
                                                                                        jne   .Lx704_50
                        cmp              edx, 6
                                                                                        jne   .Lx704_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx704_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx704_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx704_51
                                                                                        jmp   .Lx704_52
.Lx704_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx704_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx704_53
.Lx704_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx704_54
.Lx704_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx704_54
.Lx704_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx704_54:
                        mov              qword ptr [rbp + 8208], rax
                        mov              qword ptr [rbp + 8216], rdx
                        cmp              eax, 99
                                                                                        je    n378_op11_α
                                                                                        jmp   n433_suspend_α
n428_op11_β:
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n429_op11_α:
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 7288], rax
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7296], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7304], rax
                        lea              rdi, [rbp + 7280]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n434_var_ref_α
n429_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:
                        mov              qword ptr [rbp + 6880], 1
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rbp + 6888], rax
                                                                                        jmp   n435_lit_string_α
.Lx706_0:
                        .quad            .Lx706_0_s
.Lx706_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                                                                                        jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n432_op11_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4952], rax
                        lea              rdi, [rbp + 4944]
                        mov              rsi, qword ptr [rip + .Lx709_2]
                                                                                        jmp   .Lx709_3
.Lx709_2:
                        .quad            .Lx709_2_s
.Lx709_2_s:
                        .string          "recorded"
.Lx709_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n438_op11_α
                                                                                        jmp   n437_var_ref_α
n432_op11_β:
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n433_suspend_α:
                        lea              rax, [rip + n433_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n433_suspend_β:
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx
                                                                                        jmp   n439_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:
                        mov              qword ptr [rbp + 6416], 1
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rbp + 6424], rax
                                                                                        jmp   n440_lit_string_α
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:
                        mov              qword ptr [rbp + 5936], 1
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rbp + 5944], rax
                                                                                        jmp   n441_op11_α
.Lx715_0:
                        .quad            .Lx715_0_s
.Lx715_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                                                                                        jmp   n442_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n438_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3800], rax
                        lea              rdi, [rbp + 3792]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n443_var_ref_α
n438_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n439_op11_α:
                        mov              rax, qword ptr [rbp + 7440]
                        mov              qword ptr [rbp + 7376], rax
                        mov              rax, qword ptr [rbp + 7448]
                        mov              qword ptr [rbp + 7384], rax
                        mov              rax, qword ptr [rbp + 7264]
                        mov              qword ptr [rbp + 7392], rax
                        mov              rax, qword ptr [rbp + 7272]
                        mov              qword ptr [rbp + 7400], rax
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 7408], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 7416], rax
                        lea              rdi, [rbp + 7376]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n444_lit_string_α
n439_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:
                        mov              qword ptr [rbp + 6304], 1
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rbp + 6312], rax
                                                                                        jmp   n445_lit_string_α
.Lx720_0:
                        .quad            .Lx720_0_s
.Lx720_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5888], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5896], rax
                        lea              rdi, [rbp + 5888]
                        mov              rsi, qword ptr [rip + .Lx721_2]
                                                                                        jmp   .Lx721_3
.Lx721_2:
                        .quad            .Lx721_2_s
.Lx721_2_s:
                        .string          "true"
.Lx721_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx
                        cmp              eax, 99
                                                                                        je    n417_op11_α
                                                                                        jmp   n446_var_ref_α
n441_op11_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n447_op11_α
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n448_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:
                        mov              qword ptr [rbp + 7808], 1
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rbp + 7816], rax
                                                                                        jmp   n449_lit_string_α
.Lx725_0:
                        .quad            .Lx725_0_s
.Lx725_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:
                        mov              qword ptr [rbp + 6224], 1
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n450_op11_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                                                                                        jmp   n451_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4872], rax
                        lea              rdi, [rbp + 4864]
                        mov              rsi, qword ptr [rip + .Lx729_2]
                                                                                        jmp   .Lx729_3
.Lx729_2:
                        .quad            .Lx729_2_s
.Lx729_2_s:
                        .string          "erase"
.Lx729_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                        cmp              eax, 99
                                                                                        je    n438_op11_α
                                                                                        jmp   n452_var_ref_α
n447_op11_β:
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:
                        mov              qword ptr [rbp + 3760], 1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n453_op11_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:
                        mov              qword ptr [rbp + 7536], 1
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rbp + 7544], rax
                                                                                        jmp   n454_var_ref_α
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n450_op11_α:
                        mov              rax, qword ptr [rbp + 6304]
                        mov              qword ptr [rbp + 6256], rax
                        mov              rax, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 6264], rax
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6272], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6280], rax
                        lea              rdi, [rbp + 6256]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n455_var_ref_α
n450_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:
                        mov              qword ptr [rbp + 5856], 1
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rbp + 5864], rax
                                                                                        jmp   n456_lit_string_α
.Lx733_0:
                        .quad            .Lx733_0_s
.Lx733_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                                                                                        jmp   n457_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n453_op11_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        mov              rsi, qword ptr [rip + .Lx736_2]
                                                                                        jmp   .Lx736_3
.Lx736_2:
                        .quad            .Lx736_2_s
.Lx736_2_s:
                        .string          "recorded"
.Lx736_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n459_op11_α
                                                                                        jmp   n458_var_ref_α
n453_op11_β:
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                                                                                        jmp   n460_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:
                        mov              qword ptr [rbp + 5312], 1
                        mov              rax, qword ptr [rip + .Lx741_0]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n462_lit_string_α
.Lx741_0:
                        .quad            .Lx741_0_s
.Lx741_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:
                        mov              qword ptr [rbp + 4832], 1
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 4840], rax
                                                                                        jmp   n463_op11_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n464_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n459_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n465_var_ref_α
n459_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n460_op11_α:
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7488], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7496], rax
                        mov              rax, qword ptr [rbp + 7456]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7464]
                        mov              qword ptr [rbp + 7512], rax
                        lea              rdi, [rbp + 7488]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7472], rax
                        mov              qword ptr [rbp + 7480], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n466_lit_string_α
n460_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n461_op11_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 6352], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 6360], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6376], rax
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6392], rax
                        lea              rdi, [rbp + 6352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n467_lit_string_α
n461_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:
                        mov              qword ptr [rbp + 5200], 1
                        mov              rax, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rbp + 5208], rax
                                                                                        jmp   n468_lit_string_α
.Lx748_0:
                        .quad            .Lx748_0_s
.Lx748_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n463_op11_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4792], rax
                        lea              rdi, [rbp + 4784]
                        mov              rsi, qword ptr [rip + .Lx749_2]
                                                                                        jmp   .Lx749_3
.Lx749_2:
                        .quad            .Lx749_2_s
.Lx749_2_s:
                        .string          "true"
.Lx749_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                        cmp              eax, 99
                                                                                        je    n438_op11_α
                                                                                        jmp   n469_var_ref_α
n463_op11_β:
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:
                        mov              qword ptr [rbp + 3680], 1
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n470_op11_α
.Lx750_0:
                        .quad            .Lx750_0_s
.Lx750_0_s:
                        .string          "double_erase"
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n471_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:
                        mov              qword ptr [rbp + 7712], 1
                        mov              rax, qword ptr [rip + .Lx753_0]
                        mov              qword ptr [rbp + 7720], rax
                                                                                        jmp   n472_lit_string_α
.Lx753_0:
                        .quad            .Lx753_0_s
.Lx753_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:
                        mov              qword ptr [rbp + 6784], 1
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 6792], rax
                                                                                        jmp   n473_lit_string_α
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:
                        mov              qword ptr [rbp + 5120], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n474_op11_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n475_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3632]
                        mov              rsi, qword ptr [rip + .Lx758_2]
                                                                                        jmp   .Lx758_3
.Lx758_2:
                        .quad            .Lx758_2_s
.Lx758_2_s:
                        .string          "double_erase"
.Lx758_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n459_op11_α
                                                                                        jmp   n476_var_ref_α
n470_op11_β:
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n477_op11_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:
                        mov              qword ptr [rbp + 7632], 1
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 7640], rax
                                                                                        jmp   n478_lit_string_α
.Lx760_0:
                        .quad            .Lx760_0_s
.Lx760_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_string_α:
                        mov              qword ptr [rbp + 6512], 1
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 6520], rax
                                                                                        jmp   n479_var_ref_α
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n474_op11_α:
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5176], rax
                        lea              rdi, [rbp + 5152]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n480_var_ref_α
n474_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:
                        mov              qword ptr [rbp + 4752], 1
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n481_lit_string_α
.Lx763_0:
                        .quad            .Lx763_0_s
.Lx763_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n482_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              rsi, qword ptr [rip + .Lx766_2]
                                                                                        jmp   .Lx766_3
.Lx766_2:
                        .quad            .Lx766_2_s
.Lx766_2_s:
                        .string          "recorded"
.Lx766_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n483_var_ref_α
n477_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 7552], 1
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 7560], rax
                                                                                        jmp   n485_op11_α
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                                                                                        jmp   n487_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n488_lit_string_α
.Lx772_0:
                        .quad            .Lx772_0_s
.Lx772_0_s:
                        .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n489_op11_α
.Lx773_0:
                        .quad            .Lx773_0_s
.Lx773_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n490_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n484_op11_α:
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n484_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_op11_α:
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7592], rax
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 7600], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 7608], rax
                        lea              rdi, [rbp + 7584]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7568], rax
                        mov              qword ptr [rbp + 7576], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n491_op11_α
n485_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n486_op11_α:
                        mov              rax, qword ptr [rbp + 6512]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 6520]
                        mov              qword ptr [rbp + 6472], rax
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 6488], rax
                        lea              rdi, [rbp + 6464]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n492_lit_string_α
n486_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n487_op11_α:
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5272], rax
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5288], rax
                        lea              rdi, [rbp + 5248]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n493_lit_string_α
n487_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:
                        mov              qword ptr [rbp + 3888], 1
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n494_lit_string_α
.Lx780_0:
                        .quad            .Lx780_0_s
.Lx780_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n489_op11_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3552]
                        mov              rsi, qword ptr [rip + .Lx781_2]
                                                                                        jmp   .Lx781_3
.Lx781_2:
                        .quad            .Lx781_2_s
.Lx781_2_s:
                        .string          "true"
.Lx781_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n459_op11_α
                                                                                        jmp   n495_var_ref_α
n489_op11_β:
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n496_op11_α
.Lx782_0:
                        .quad            .Lx782_0_s
.Lx782_0_s:
                        .string          "recorded_vt"
#-----------------------------------------------------------------------------------------------------------------------
n491_op11_α:
                        mov              rax, qword ptr [rbp + 7712]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7720]
                        mov              qword ptr [rbp + 7672], rax
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 7688], rax
                        lea              rdi, [rbp + 7664]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n497_op11_α
n491_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 6688], 1
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 6696], rax
                                                                                        jmp   n498_lit_string_α
.Lx784_0:
                        .quad            .Lx784_0_s
.Lx784_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 5760], 1
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rbp + 5768], rax
                                                                                        jmp   n499_lit_string_α
.Lx785_0:
                        .quad            .Lx785_0_s
.Lx785_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:
                        mov              qword ptr [rbp + 3904], 1
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n500_var_ref_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n501_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n496_op11_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2432]
                        mov              rsi, qword ptr [rip + .Lx789_2]
                                                                                        jmp   .Lx789_3
.Lx789_2:
                        .quad            .Lx789_2_s
.Lx789_2_s:
                        .string          "recorded_vt"
.Lx789_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n502_var_ref_α
n496_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_op11_α:
                        mov              rax, qword ptr [rbp + 7808]
                        mov              qword ptr [rbp + 7744], rax
                        mov              rax, qword ptr [rbp + 7816]
                        mov              qword ptr [rbp + 7752], rax
                        mov              rax, qword ptr [rbp + 7472]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7480]
                        mov              qword ptr [rbp + 7768], rax
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7776], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7784], rax
                        lea              rdi, [rbp + 7744]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n503_op11_α
n497_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 6608], 1
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n504_var_ref_α
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:
                        mov              qword ptr [rbp + 5488], 1
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 5496], rax
                                                                                        jmp   n505_lit_string_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n507_lit_string_α
.Lx795_0:
                        .quad            .Lx795_0_s
.Lx795_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n508_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n503_op11_α:
                        mov              rax, qword ptr [rbp + 7904]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 7912]
                        mov              qword ptr [rbp + 7848], rax
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 7856], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 7864], rax
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7872], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7880], rax
                        lea              rdi, [rbp + 7840]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              eax, 99
                                                                                        je    n387_op11_α
                                                                                        jmp   n509_op11_α
n503_op11_β:
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                                                                                        jmp   n510_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:
                        mov              qword ptr [rbp + 5408], 1
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rbp + 5416], rax
                                                                                        jmp   n511_var_ref_α
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n506_op11_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3976], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 3952]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n512_lit_string_α
n506_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n513_lit_string_α
.Lx803_0:
                        .quad            .Lx803_0_s
.Lx803_0_s:
                        .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n514_lit_string_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n509_op11_α:
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7208], rax
                        mov              rax, qword ptr [rbp + 7824]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 7832]
                        mov              qword ptr [rbp + 7224], rax
                        lea              rdi, [rbp + 7200]
                        lea              r8, [rbp + 7200]
.Lx805_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx805_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_41
                        cmp              esi, 1
                                                                                        jne   .Lx805_55
                        mov              r8, rax
                                                                                        jmp   .Lx805_40
.Lx805_55:
                        cmp              esi, 2
                                                                                        jne   .Lx805_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx805_41
                        mov              r8, rax
                                                                                        jmp   .Lx805_40
.Lx805_56:
                        cmp              eax, 13
                                                                                        jne   .Lx805_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_41
                        cmp              rax, r8
                                                                                        je    .Lx805_41
                        mov              r8, rax
                                                                                        jmp   .Lx805_40
.Lx805_41:
                        lea              r9, [rbp + 7216]
.Lx805_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx805_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_43
                        cmp              esi, 1
                                                                                        jne   .Lx805_57
                        mov              r9, rax
                                                                                        jmp   .Lx805_42
.Lx805_57:
                        cmp              esi, 2
                                                                                        jne   .Lx805_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx805_43
                        mov              r9, rax
                                                                                        jmp   .Lx805_42
.Lx805_58:
                        cmp              eax, 13
                                                                                        jne   .Lx805_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx805_43
                        cmp              rax, r9
                                                                                        je    .Lx805_43
                        mov              r9, rax
                                                                                        jmp   .Lx805_42
.Lx805_43:
                        cmp              r8, r9
                                                                                        je    .Lx805_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx805_44
                        cmp              eax, 99
                                                                                        je    .Lx805_44
                        cmp              eax, 13
                                                                                        jne   .Lx805_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx805_44
                                                                                        jmp   .Lx805_45
.Lx805_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx805_53
                        cmp              eax, 99
                                                                                        je    .Lx805_53
                        cmp              eax, 13
                                                                                        jne   .Lx805_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx805_53
                                                                                        jmp   .Lx805_46
.Lx805_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx805_53
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
                                                                                        jmp   .Lx805_51
.Lx805_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx805_47
                        cmp              eax, 99
                                                                                        je    .Lx805_47
                        cmp              eax, 13
                                                                                        jne   .Lx805_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx805_47
                                                                                        jmp   .Lx805_48
.Lx805_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx805_53
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
                                                                                        jmp   .Lx805_51
.Lx805_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx805_49
                        cmp              edx, 14
                                                                                        je    .Lx805_53
                                                                                        jmp   .Lx805_52
.Lx805_49:
                        cmp              edx, 14
                                                                                        je    .Lx805_52
                        cmp              ecx, 7
                                                                                        je    .Lx805_53
                        cmp              edx, 7
                                                                                        je    .Lx805_53
                        cmp              ecx, 6
                                                                                        jne   .Lx805_50
                        cmp              edx, 6
                                                                                        jne   .Lx805_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx805_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx805_51
                                                                                        jmp   .Lx805_52
.Lx805_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx805_53
.Lx805_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx805_54
.Lx805_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx805_54
.Lx805_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx805_54:
                        mov              qword ptr [rbp + 7184], rax
                        mov              qword ptr [rbp + 7192], rdx
                        cmp              eax, 99
                                                                                        je    n387_op11_α
                                                                                        jmp   n515_suspend_α
n509_op11_β:
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6568], rax
                        mov              rax, qword ptr [rbp + 6528]
                        mov              qword ptr [rbp + 6576], rax
                        mov              rax, qword ptr [rbp + 6536]
                        mov              qword ptr [rbp + 6584], rax
                        lea              rdi, [rbp + 6560]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n516_op11_α
n510_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8848]
                        mov              qword ptr [rbp + 5328], rax
                        mov              qword ptr [rbp + 5336], rdx
                                                                                        jmp   n517_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:
                        mov              qword ptr [rbp + 4656], 1
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n518_lit_string_α
.Lx809_0:
                        .quad            .Lx809_0_s
.Lx809_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n519_lit_string_α
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n520_lit_string_α
.Lx811_0:
                        .quad            .Lx811_0_s
.Lx811_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n515_suspend_α:
                        lea              rax, [rip + n515_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n515_suspend_β:
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n516_op11_α:
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6648], rax
                        mov              rax, qword ptr [rbp + 6544]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6552]
                        mov              qword ptr [rbp + 6664], rax
                        lea              rdi, [rbp + 6640]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6624], rax
                        mov              qword ptr [rbp + 6632], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n521_op11_α
n516_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n517_op11_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5384], rax
                        lea              rdi, [rbp + 5360]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n522_op11_α
n517_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:
                        mov              qword ptr [rbp + 4160], 1
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n523_lit_string_α
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n524_var_ref_α
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n525_lit_string_α
.Lx818_0:
                        .quad            .Lx818_0_s
.Lx818_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n521_op11_α:
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6728], rax
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 6744], rax
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6752], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6760], rax
                        lea              rdi, [rbp + 6720]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n526_op11_α
n521_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n522_op11_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5448], rax
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5464], rax
                        lea              rdi, [rbp + 5440]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n527_lit_string_α
n522_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:
                        mov              qword ptr [rbp + 4048], 1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n528_lit_string_α
.Lx821_0:
                        .quad            .Lx821_0_s
.Lx821_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n529_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n530_var_ref_α
.Lx824_0:
                        .quad            .Lx824_0_s
.Lx824_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n526_op11_α:
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6848], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6856], rax
                        lea              rdi, [rbp + 6816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        cmp              eax, 99
                                                                                        je    n400_op11_α
                                                                                        jmp   n531_op11_α
n526_op11_β:
                                                                                        jmp   n400_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:
                        mov              qword ptr [rbp + 5664], 1
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n532_lit_string_α
.Lx826_0:
                        .quad            .Lx826_0_s
.Lx826_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:
                        mov              qword ptr [rbp + 4064], 1
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n533_op11_α
.Lx827_0:
                        .quad            .Lx827_0_s
.Lx827_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n529_op11_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2752]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n534_lit_string_α
n529_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n535_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n531_op11_α:
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 6176], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 6184], rax
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 6200], rax
                        lea              rdi, [rbp + 6176]
                        lea              r8, [rbp + 6176]
.Lx831_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx831_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_41
                        cmp              esi, 1
                                                                                        jne   .Lx831_55
                        mov              r8, rax
                                                                                        jmp   .Lx831_40
.Lx831_55:
                        cmp              esi, 2
                                                                                        jne   .Lx831_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx831_41
                        mov              r8, rax
                                                                                        jmp   .Lx831_40
.Lx831_56:
                        cmp              eax, 13
                                                                                        jne   .Lx831_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_41
                        cmp              rax, r8
                                                                                        je    .Lx831_41
                        mov              r8, rax
                                                                                        jmp   .Lx831_40
.Lx831_41:
                        lea              r9, [rbp + 6192]
.Lx831_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx831_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_43
                        cmp              esi, 1
                                                                                        jne   .Lx831_57
                        mov              r9, rax
                                                                                        jmp   .Lx831_42
.Lx831_57:
                        cmp              esi, 2
                                                                                        jne   .Lx831_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx831_43
                        mov              r9, rax
                                                                                        jmp   .Lx831_42
.Lx831_58:
                        cmp              eax, 13
                                                                                        jne   .Lx831_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_43
                        cmp              rax, r9
                                                                                        je    .Lx831_43
                        mov              r9, rax
                                                                                        jmp   .Lx831_42
.Lx831_43:
                        cmp              r8, r9
                                                                                        je    .Lx831_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx831_44
                        cmp              eax, 99
                                                                                        je    .Lx831_44
                        cmp              eax, 13
                                                                                        jne   .Lx831_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx831_44
                                                                                        jmp   .Lx831_45
.Lx831_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx831_53
                        cmp              eax, 99
                                                                                        je    .Lx831_53
                        cmp              eax, 13
                                                                                        jne   .Lx831_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx831_53
                                                                                        jmp   .Lx831_46
.Lx831_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx831_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx831_53
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
                                                                                        jmp   .Lx831_51
.Lx831_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx831_47
                        cmp              eax, 99
                                                                                        je    .Lx831_47
                        cmp              eax, 13
                                                                                        jne   .Lx831_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx831_47
                                                                                        jmp   .Lx831_48
.Lx831_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx831_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx831_53
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
                                                                                        jmp   .Lx831_51
.Lx831_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx831_49
                        cmp              edx, 14
                                                                                        je    .Lx831_53
                                                                                        jmp   .Lx831_52
.Lx831_49:
                        cmp              edx, 14
                                                                                        je    .Lx831_52
                        cmp              ecx, 7
                                                                                        je    .Lx831_53
                        cmp              edx, 7
                                                                                        je    .Lx831_53
                        cmp              ecx, 6
                                                                                        jne   .Lx831_50
                        cmp              edx, 6
                                                                                        jne   .Lx831_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx831_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx831_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx831_51
                                                                                        jmp   .Lx831_52
.Lx831_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx831_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx831_53
.Lx831_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx831_54
.Lx831_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx831_54
.Lx831_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx831_54:
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        cmp              eax, 99
                                                                                        je    n400_op11_α
                                                                                        jmp   n536_suspend_α
n531_op11_β:
                                                                                        jmp   n400_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_string_α:
                        mov              qword ptr [rbp + 5584], 1
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rbp + 5592], rax
                                                                                        jmp   n537_var_ref_α
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n533_op11_α:
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4136], rax
                        lea              rdi, [rbp + 4096]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n538_lit_string_α
n533_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:
                        mov              qword ptr [rbp + 3424], 1
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n539_lit_string_α
.Lx834_0:
                        .quad            .Lx834_0_s
.Lx834_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n540_var_ref_α
.Lx835_0:
                        .quad            .Lx835_0_s
.Lx835_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n536_suspend_α:
                        lea              rax, [rip + n536_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n536_suspend_β:
                                                                                        jmp   n400_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                                                                                        jmp   n541_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_string_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n542_lit_string_α
.Lx840_0:
                        .quad            .Lx840_0_s
.Lx840_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n543_lit_string_α
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8848]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n544_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_op11_α:
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5544], rax
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5560], rax
                        lea              rdi, [rbp + 5536]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n545_op11_α
n541_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:
                        mov              qword ptr [rbp + 4256], 1
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n546_var_ref_α
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n547_lit_string_α
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n544_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n548_op11_α
.Lx847_0:
                        .quad            .Lx847_0_s
.Lx847_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n545_op11_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5624], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5640], rax
                        lea              rdi, [rbp + 5616]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n549_op11_α
n545_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                                                                                        jmp   n550_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n551_op11_α
.Lx851_0:
                        .quad            .Lx851_0_s
.Lx851_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n548_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1712]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n552_op11_α
n548_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n549_op11_α:
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5736], rax
                        lea              rdi, [rbp + 5696]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n553_op11_α
n549_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n550_op11_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4216], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4232], rax
                        lea              rdi, [rbp + 4208]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n554_lit_string_α
n550_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n551_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2904], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n555_lit_string_α
n551_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n556_lit_string_α
n552_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n553_op11_α:
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5800], rax
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5832], rax
                        lea              rdi, [rbp + 5792]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                        cmp              eax, 99
                                                                                        je    n417_op11_α
                                                                                        jmp   n557_op11_α
n553_op11_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n558_lit_string_α
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n559_lit_string_α
.Lx859_0:
                        .quad            .Lx859_0_s
.Lx859_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n560_lit_string_α
.Lx860_0:
                        .quad            .Lx860_0_s
.Lx860_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n557_op11_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5080], rax
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5096], rax
                        lea              rdi, [rbp + 5072]
                        lea              r8, [rbp + 5072]
.Lx861_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx861_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx861_41
                        cmp              esi, 1
                                                                                        jne   .Lx861_55
                        mov              r8, rax
                                                                                        jmp   .Lx861_40
.Lx861_55:
                        cmp              esi, 2
                                                                                        jne   .Lx861_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx861_41
                        mov              r8, rax
                                                                                        jmp   .Lx861_40
.Lx861_56:
                        cmp              eax, 13
                                                                                        jne   .Lx861_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx861_41
                        cmp              rax, r8
                                                                                        je    .Lx861_41
                        mov              r8, rax
                                                                                        jmp   .Lx861_40
.Lx861_41:
                        lea              r9, [rbp + 5088]
.Lx861_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx861_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx861_43
                        cmp              esi, 1
                                                                                        jne   .Lx861_57
                        mov              r9, rax
                                                                                        jmp   .Lx861_42
.Lx861_57:
                        cmp              esi, 2
                                                                                        jne   .Lx861_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx861_43
                        mov              r9, rax
                                                                                        jmp   .Lx861_42
.Lx861_58:
                        cmp              eax, 13
                                                                                        jne   .Lx861_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx861_43
                        cmp              rax, r9
                                                                                        je    .Lx861_43
                        mov              r9, rax
                                                                                        jmp   .Lx861_42
.Lx861_43:
                        cmp              r8, r9
                                                                                        je    .Lx861_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx861_44
                        cmp              eax, 99
                                                                                        je    .Lx861_44
                        cmp              eax, 13
                                                                                        jne   .Lx861_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx861_44
                                                                                        jmp   .Lx861_45
.Lx861_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx861_53
                        cmp              eax, 99
                                                                                        je    .Lx861_53
                        cmp              eax, 13
                                                                                        jne   .Lx861_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx861_53
                                                                                        jmp   .Lx861_46
.Lx861_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx861_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx861_53
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
                                                                                        jmp   .Lx861_51
.Lx861_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx861_47
                        cmp              eax, 99
                                                                                        je    .Lx861_47
                        cmp              eax, 13
                                                                                        jne   .Lx861_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx861_47
                                                                                        jmp   .Lx861_48
.Lx861_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx861_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx861_53
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
                                                                                        jmp   .Lx861_51
.Lx861_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx861_49
                        cmp              edx, 14
                                                                                        je    .Lx861_53
                                                                                        jmp   .Lx861_52
.Lx861_49:
                        cmp              edx, 14
                                                                                        je    .Lx861_52
                        cmp              ecx, 7
                                                                                        je    .Lx861_53
                        cmp              edx, 7
                                                                                        je    .Lx861_53
                        cmp              ecx, 6
                                                                                        jne   .Lx861_50
                        cmp              edx, 6
                                                                                        jne   .Lx861_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx861_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx861_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx861_51
                                                                                        jmp   .Lx861_52
.Lx861_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx861_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx861_53
.Lx861_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx861_54
.Lx861_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx861_54
.Lx861_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx861_54:
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              eax, 99
                                                                                        je    n417_op11_α
                                                                                        jmp   n561_suspend_α
n557_op11_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:
                        mov              qword ptr [rbp + 4384], 1
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n562_lit_string_α
.Lx862_0:
                        .quad            .Lx862_0_s
.Lx862_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n563_var_ref_α
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n564_lit_string_α
.Lx864_0:
                        .quad            .Lx864_0_s
.Lx864_0_s:
                        .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n561_suspend_α:
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n561_suspend_β:
                                                                                        jmp   n417_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:
                        mov              qword ptr [rbp + 4272], 1
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n565_lit_string_α
.Lx867_0:
                        .quad            .Lx867_0_s
.Lx867_0_s:
                        .string          "test"
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n566_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n567_lit_string_α
.Lx870_0:
                        .quad            .Lx870_0_s
.Lx870_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:
                        mov              qword ptr [rbp + 4288], 1
                        mov              rax, qword ptr [rip + .Lx871_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n568_op11_α
.Lx871_0:
                        .quad            .Lx871_0_s
.Lx871_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n566_op11_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n569_lit_string_α
n566_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n570_lit_string_α
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n568_op11_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4344], rax
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4360], rax
                        lea              rdi, [rbp + 4320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n571_op11_α
n568_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:
                        mov              qword ptr [rbp + 3232], 1
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n572_lit_string_α
.Lx875_0:
                        .quad            .Lx875_0_s
.Lx875_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx876_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n573_op11_α
.Lx876_0:
                        .quad            .Lx876_0_s
.Lx876_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n571_op11_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4440], rax
                        lea              rdi, [rbp + 4416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n574_op11_α
n571_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n575_var_ref_α
.Lx878_0:
                        .quad            .Lx878_0_s
.Lx878_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n573_op11_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1952]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n576_op11_α
n573_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n574_op11_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n577_op11_α
n574_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n578_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n576_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n579_op11_α
n576_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n577_op11_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4616], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n580_op11_α
n577_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n578_op11_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3128], rax
                        lea              rdi, [rbp + 3104]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n581_op11_α
n578_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n579_op11_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n582_op11_α
n579_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n580_op11_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 99
                                                                                        je    n438_op11_α
                                                                                        jmp   n583_op11_α
n580_op11_β:
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n581_op11_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3192], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3184]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n584_op11_α
n581_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n582_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n585_lit_string_α
n582_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n583_op11_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 3864], rax
                        lea              rdi, [rbp + 3840]
                        lea              r8, [rbp + 3840]
.Lx890_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx890_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx890_41
                        cmp              esi, 1
                                                                                        jne   .Lx890_55
                        mov              r8, rax
                                                                                        jmp   .Lx890_40
.Lx890_55:
                        cmp              esi, 2
                                                                                        jne   .Lx890_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx890_41
                        mov              r8, rax
                                                                                        jmp   .Lx890_40
.Lx890_56:
                        cmp              eax, 13
                                                                                        jne   .Lx890_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx890_41
                        cmp              rax, r8
                                                                                        je    .Lx890_41
                        mov              r8, rax
                                                                                        jmp   .Lx890_40
.Lx890_41:
                        lea              r9, [rbp + 3856]
.Lx890_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx890_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx890_43
                        cmp              esi, 1
                                                                                        jne   .Lx890_57
                        mov              r9, rax
                                                                                        jmp   .Lx890_42
.Lx890_57:
                        cmp              esi, 2
                                                                                        jne   .Lx890_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx890_43
                        mov              r9, rax
                                                                                        jmp   .Lx890_42
.Lx890_58:
                        cmp              eax, 13
                                                                                        jne   .Lx890_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx890_43
                        cmp              rax, r9
                                                                                        je    .Lx890_43
                        mov              r9, rax
                                                                                        jmp   .Lx890_42
.Lx890_43:
                        cmp              r8, r9
                                                                                        je    .Lx890_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx890_44
                        cmp              eax, 99
                                                                                        je    .Lx890_44
                        cmp              eax, 13
                                                                                        jne   .Lx890_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx890_44
                                                                                        jmp   .Lx890_45
.Lx890_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx890_53
                        cmp              eax, 99
                                                                                        je    .Lx890_53
                        cmp              eax, 13
                                                                                        jne   .Lx890_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx890_53
                                                                                        jmp   .Lx890_46
.Lx890_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx890_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx890_53
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
                                                                                        jmp   .Lx890_51
.Lx890_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx890_47
                        cmp              eax, 99
                                                                                        je    .Lx890_47
                        cmp              eax, 13
                                                                                        jne   .Lx890_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx890_47
                                                                                        jmp   .Lx890_48
.Lx890_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx890_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx890_53
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
                                                                                        jmp   .Lx890_51
.Lx890_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx890_49
                        cmp              edx, 14
                                                                                        je    .Lx890_53
                                                                                        jmp   .Lx890_52
.Lx890_49:
                        cmp              edx, 14
                                                                                        je    .Lx890_52
                        cmp              ecx, 7
                                                                                        je    .Lx890_53
                        cmp              edx, 7
                                                                                        je    .Lx890_53
                        cmp              ecx, 6
                                                                                        jne   .Lx890_50
                        cmp              edx, 6
                                                                                        jne   .Lx890_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx890_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx890_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx890_51
                                                                                        jmp   .Lx890_52
.Lx890_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx890_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx890_53
.Lx890_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx890_54
.Lx890_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx890_54
.Lx890_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx890_54:
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              eax, 99
                                                                                        je    n438_op11_α
                                                                                        jmp   n586_suspend_α
n583_op11_β:
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n584_op11_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3304], rax
                        lea              rdi, [rbp + 3264]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n587_op11_α
n584_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n588_lit_string_α
.Lx892_0:
                        .quad            .Lx892_0_s
.Lx892_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n586_suspend_α:
                        lea              rax, [rip + n586_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n586_suspend_β:
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n587_op11_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3400], rax
                        lea              rdi, [rbp + 3360]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n589_op11_α
n587_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n590_lit_string_α
.Lx896_0:
                        .quad            .Lx896_0_s
.Lx896_0_s:
                        .string          "nondet"
#-----------------------------------------------------------------------------------------------------------------------
n589_op11_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3496], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 99
                                                                                        je    n459_op11_α
                                                                                        jmp   n591_op11_α
n589_op11_β:
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n592_op11_α
.Lx898_0:
                        .quad            .Lx898_0_s
.Lx898_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n591_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2640]
                        lea              r8, [rbp + 2640]
.Lx899_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx899_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx899_41
                        cmp              esi, 1
                                                                                        jne   .Lx899_55
                        mov              r8, rax
                                                                                        jmp   .Lx899_40
.Lx899_55:
                        cmp              esi, 2
                                                                                        jne   .Lx899_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx899_41
                        mov              r8, rax
                                                                                        jmp   .Lx899_40
.Lx899_56:
                        cmp              eax, 13
                                                                                        jne   .Lx899_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx899_41
                        cmp              rax, r8
                                                                                        je    .Lx899_41
                        mov              r8, rax
                                                                                        jmp   .Lx899_40
.Lx899_41:
                        lea              r9, [rbp + 2656]
.Lx899_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx899_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx899_43
                        cmp              esi, 1
                                                                                        jne   .Lx899_57
                        mov              r9, rax
                                                                                        jmp   .Lx899_42
.Lx899_57:
                        cmp              esi, 2
                                                                                        jne   .Lx899_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx899_43
                        mov              r9, rax
                                                                                        jmp   .Lx899_42
.Lx899_58:
                        cmp              eax, 13
                                                                                        jne   .Lx899_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx899_43
                        cmp              rax, r9
                                                                                        je    .Lx899_43
                        mov              r9, rax
                                                                                        jmp   .Lx899_42
.Lx899_43:
                        cmp              r8, r9
                                                                                        je    .Lx899_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx899_44
                        cmp              eax, 99
                                                                                        je    .Lx899_44
                        cmp              eax, 13
                                                                                        jne   .Lx899_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx899_44
                                                                                        jmp   .Lx899_45
.Lx899_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx899_53
                        cmp              eax, 99
                                                                                        je    .Lx899_53
                        cmp              eax, 13
                                                                                        jne   .Lx899_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx899_53
                                                                                        jmp   .Lx899_46
.Lx899_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx899_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx899_53
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
                                                                                        jmp   .Lx899_51
.Lx899_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx899_47
                        cmp              eax, 99
                                                                                        je    .Lx899_47
                        cmp              eax, 13
                                                                                        jne   .Lx899_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx899_47
                                                                                        jmp   .Lx899_48
.Lx899_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx899_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx899_53
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
                                                                                        jmp   .Lx899_51
.Lx899_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx899_49
                        cmp              edx, 14
                                                                                        je    .Lx899_53
                                                                                        jmp   .Lx899_52
.Lx899_49:
                        cmp              edx, 14
                                                                                        je    .Lx899_52
                        cmp              ecx, 7
                                                                                        je    .Lx899_53
                        cmp              edx, 7
                                                                                        je    .Lx899_53
                        cmp              ecx, 6
                                                                                        jne   .Lx899_50
                        cmp              edx, 6
                                                                                        jne   .Lx899_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx899_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx899_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx899_51
                                                                                        jmp   .Lx899_52
.Lx899_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx899_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx899_53
.Lx899_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx899_54
.Lx899_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx899_54
.Lx899_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx899_54:
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n459_op11_α
                                                                                        jmp   n593_suspend_α
n591_op11_β:
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n592_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n594_op11_α
n592_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n593_suspend_α:
                        lea              rax, [rip + n593_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n593_suspend_β:
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n594_op11_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n595_op11_α
n594_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n595_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1488]
                        lea              r8, [rbp + 1488]
.Lx904_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx904_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx904_41
                        cmp              esi, 1
                                                                                        jne   .Lx904_55
                        mov              r8, rax
                                                                                        jmp   .Lx904_40
.Lx904_55:
                        cmp              esi, 2
                                                                                        jne   .Lx904_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx904_41
                        mov              r8, rax
                                                                                        jmp   .Lx904_40
.Lx904_56:
                        cmp              eax, 13
                                                                                        jne   .Lx904_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx904_41
                        cmp              rax, r8
                                                                                        je    .Lx904_41
                        mov              r8, rax
                                                                                        jmp   .Lx904_40
.Lx904_41:
                        lea              r9, [rbp + 1504]
.Lx904_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx904_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx904_43
                        cmp              esi, 1
                                                                                        jne   .Lx904_57
                        mov              r9, rax
                                                                                        jmp   .Lx904_42
.Lx904_57:
                        cmp              esi, 2
                                                                                        jne   .Lx904_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx904_43
                        mov              r9, rax
                                                                                        jmp   .Lx904_42
.Lx904_58:
                        cmp              eax, 13
                                                                                        jne   .Lx904_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx904_43
                        cmp              rax, r9
                                                                                        je    .Lx904_43
                        mov              r9, rax
                                                                                        jmp   .Lx904_42
.Lx904_43:
                        cmp              r8, r9
                                                                                        je    .Lx904_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx904_44
                        cmp              eax, 99
                                                                                        je    .Lx904_44
                        cmp              eax, 13
                                                                                        jne   .Lx904_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx904_44
                                                                                        jmp   .Lx904_45
.Lx904_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx904_53
                        cmp              eax, 99
                                                                                        je    .Lx904_53
                        cmp              eax, 13
                                                                                        jne   .Lx904_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx904_53
                                                                                        jmp   .Lx904_46
.Lx904_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx904_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx904_53
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
                                                                                        jmp   .Lx904_51
.Lx904_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx904_47
                        cmp              eax, 99
                                                                                        je    .Lx904_47
                        cmp              eax, 13
                                                                                        jne   .Lx904_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx904_47
                                                                                        jmp   .Lx904_48
.Lx904_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx904_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx904_53
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
                                                                                        jmp   .Lx904_51
.Lx904_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx904_49
                        cmp              edx, 14
                                                                                        je    .Lx904_53
                                                                                        jmp   .Lx904_52
.Lx904_49:
                        cmp              edx, 14
                                                                                        je    .Lx904_52
                        cmp              ecx, 7
                                                                                        je    .Lx904_53
                        cmp              edx, 7
                                                                                        je    .Lx904_53
                        cmp              ecx, 6
                                                                                        jne   .Lx904_50
                        cmp              edx, 6
                                                                                        jne   .Lx904_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx904_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx904_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx904_51
                                                                                        jmp   .Lx904_52
.Lx904_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx904_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx904_53
.Lx904_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx904_54
.Lx904_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx904_54
.Lx904_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx904_54:
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n596_var_ref_α
n595_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n597_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n598_lit_string_α
.Lx907_0:
                        .quad            .Lx907_0_s
.Lx907_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx908_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n599_lit_string_α
.Lx908_0:
                        .quad            .Lx908_0_s
.Lx908_0_s:
                        .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx909_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n600_lit_string_α
.Lx909_0:
                        .quad            .Lx909_0_s
.Lx909_0_s:
                        .string          "test_1"
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n601_var_ref_α
.Lx910_0:
                        .quad            .Lx910_0_s
.Lx910_0_s:
                        .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8816]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n602_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n602_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n603_lit_string_α
n602_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n604_lit_string_α
.Lx914_0:
                        .quad            .Lx914_0_s
.Lx914_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n605_lit_string_α
.Lx915_0:
                        .quad            .Lx915_0_s
.Lx915_0_s:
                        .string          "recorda"
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx916_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n606_lit_string_α
.Lx916_0:
                        .quad            .Lx916_0_s
.Lx916_0_s:
                        .string          "test_2"
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n607_var_ref_α
.Lx917_0:
                        .quad            .Lx917_0_s
.Lx917_0_s:
                        .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8832]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n608_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n608_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n609_lit_string_α
n608_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n610_lit_string_α
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n611_var_ref_α
.Lx922_0:
                        .quad            .Lx922_0_s
.Lx922_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8848]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n612_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx925_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n613_op11_α
.Lx925_0:
                        .quad            .Lx925_0_s
.Lx925_0_s:
                        .string          "a2"
#-----------------------------------------------------------------------------------------------------------------------
n613_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n614_lit_string_α
n613_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n615_lit_string_α
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n616_var_ref_α
.Lx928_0:
                        .quad            .Lx928_0_s
.Lx928_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8864]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n617_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n618_op11_α
.Lx931_0:
                        .quad            .Lx931_0_s
.Lx931_0_s:
                        .string          "a1"
#-----------------------------------------------------------------------------------------------------------------------
n618_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n619_lit_string_α
n618_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n620_lit_string_α
.Lx933_0:
                        .quad            .Lx933_0_s
.Lx933_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n621_var_ref_α
.Lx934_0:
                        .quad            .Lx934_0_s
.Lx934_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8816]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n622_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n622_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n623_lit_string_α
n622_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n624_var_ref_α
.Lx938_0:
                        .quad            .Lx938_0_s
.Lx938_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8832]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n625_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n625_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n626_op11_α
n625_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n626_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n627_op11_α
n626_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n627_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n628_op11_α
n627_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n629_op11_α
n628_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n630_op11_α
n629_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n630_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n631_op11_α
n630_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n631_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx947_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx947_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx947_41
                        cmp              esi, 1
                                                                                        jne   .Lx947_55
                        mov              r8, rax
                                                                                        jmp   .Lx947_40
.Lx947_55:
                        cmp              esi, 2
                                                                                        jne   .Lx947_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx947_41
                        mov              r8, rax
                                                                                        jmp   .Lx947_40
.Lx947_56:
                        cmp              eax, 13
                                                                                        jne   .Lx947_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx947_41
                        cmp              rax, r8
                                                                                        je    .Lx947_41
                        mov              r8, rax
                                                                                        jmp   .Lx947_40
.Lx947_41:
                        lea              r9, [rbp + 192]
.Lx947_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx947_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx947_43
                        cmp              esi, 1
                                                                                        jne   .Lx947_57
                        mov              r9, rax
                                                                                        jmp   .Lx947_42
.Lx947_57:
                        cmp              esi, 2
                                                                                        jne   .Lx947_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx947_43
                        mov              r9, rax
                                                                                        jmp   .Lx947_42
.Lx947_58:
                        cmp              eax, 13
                                                                                        jne   .Lx947_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx947_43
                        cmp              rax, r9
                                                                                        je    .Lx947_43
                        mov              r9, rax
                                                                                        jmp   .Lx947_42
.Lx947_43:
                        cmp              r8, r9
                                                                                        je    .Lx947_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx947_44
                        cmp              eax, 99
                                                                                        je    .Lx947_44
                        cmp              eax, 13
                                                                                        jne   .Lx947_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx947_44
                                                                                        jmp   .Lx947_45
.Lx947_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx947_53
                        cmp              eax, 99
                                                                                        je    .Lx947_53
                        cmp              eax, 13
                                                                                        jne   .Lx947_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx947_53
                                                                                        jmp   .Lx947_46
.Lx947_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx947_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx947_53
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
                                                                                        jmp   .Lx947_51
.Lx947_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx947_47
                        cmp              eax, 99
                                                                                        je    .Lx947_47
                        cmp              eax, 13
                                                                                        jne   .Lx947_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx947_47
                                                                                        jmp   .Lx947_48
.Lx947_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx947_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx947_53
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
                                                                                        jmp   .Lx947_51
.Lx947_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx947_49
                        cmp              edx, 14
                                                                                        je    .Lx947_53
                                                                                        jmp   .Lx947_52
.Lx947_49:
                        cmp              edx, 14
                                                                                        je    .Lx947_52
                        cmp              ecx, 7
                                                                                        je    .Lx947_53
                        cmp              edx, 7
                                                                                        je    .Lx947_53
                        cmp              ecx, 6
                                                                                        jne   .Lx947_50
                        cmp              edx, 6
                                                                                        jne   .Lx947_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx947_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx947_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx947_51
                                                                                        jmp   .Lx947_52
.Lx947_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx947_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx947_53
.Lx947_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx947_54
.Lx947_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx947_54
.Lx947_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx947_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n632_suspend_α
n631_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n632_suspend_α:
                        lea              rax, [rip + n632_suspend_β]
                        mov              qword ptr [rbp + 8800], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n632_suspend_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 8800]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 8888]
                        mov              rbp, [rbp + 8904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 8896]
                        lea              rsp, [rbp + 8912]
                        mov              rbp, [rbp + 8904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_6$2F0_α
proc_pj_dir_6$2F0_α:
                        .global          proc_pj_dir_6$2F0_α
                        .global          proc_pj_dir_6$2F0_β
                        .global          proc_pj_dir_6$2F0_γ
                        .global          proc_pj_dir_6$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n953_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n950_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx955_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx955_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx955_101
.Lx955_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx955_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   n951_lit_string_α
n950_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n951_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n952_call_proc_staged_α
.Lx956_0:
                        .quad            .Lx956_0_s
.Lx956_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n952_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx958_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx958_21
.Lx958_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx958_21:
                        mov              rdi, qword ptr [rip + .Lx958_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx958_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx958_3]
                        lea              rdx, [rip + .Lx958_4]
                                                                                        jmp   rax
.Lx958_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx958_2
.Lx958_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx958_2
.Lx958_1:
                        call             rt_faildescr@PLT
.Lx958_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n954_op11_α
                                                                                        jmp   n953_suspend_α
n952_call_proc_staged_β:
                                                                                        jmp   n954_op11_α
.Lx958_0:
                        .quad            .Lx958_0_s
.Lx958_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n953_suspend_α:
                        lea              rax, [rip + n953_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_6$2F0_γ
n953_suspend_β:
                                                                                        jmp   n952_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n954_op11_α:
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
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   proc_pj_dir_6$2F0_ω
n954_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_6$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n965_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n962_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx967_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx967_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx967_101
.Lx967_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx967_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n963_lit_string_α
n962_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n963_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n964_call_proc_staged_α
.Lx968_0:
                        .quad            .Lx968_0_s
.Lx968_0_s:
                        .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n964_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx970_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx970_21
.Lx970_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx970_21:
                        mov              rdi, qword ptr [rip + .Lx970_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx970_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx970_3]
                        lea              rdx, [rip + .Lx970_4]
                                                                                        jmp   rax
.Lx970_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx970_2
.Lx970_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx970_2
.Lx970_1:
                        call             rt_faildescr@PLT
.Lx970_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n966_op11_α
                                                                                        jmp   n965_suspend_α
n964_call_proc_staged_β:
                                                                                        jmp   n966_op11_α
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n965_suspend_α:
                        lea              rax, [rip + n965_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n965_suspend_β:
                                                                                        jmp   n964_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n966_op11_α:
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
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n966_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n977_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n974_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx979_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx979_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx979_101
.Lx979_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx979_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n975_lit_string_α
n974_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n975_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n976_call_proc_staged_α
.Lx980_0:
                        .quad            .Lx980_0_s
.Lx980_0_s:
                        .string          "assert2"
#-----------------------------------------------------------------------------------------------------------------------
n976_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx982_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx982_21
.Lx982_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx982_21:
                        mov              rdi, qword ptr [rip + .Lx982_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx982_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx982_3]
                        lea              rdx, [rip + .Lx982_4]
                                                                                        jmp   rax
.Lx982_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx982_2
.Lx982_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx982_2
.Lx982_1:
                        call             rt_faildescr@PLT
.Lx982_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n978_op11_α
                                                                                        jmp   n977_suspend_α
n976_call_proc_staged_β:
                                                                                        jmp   n978_op11_α
.Lx982_0:
                        .quad            .Lx982_0_s
.Lx982_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n977_suspend_α:
                        lea              rax, [rip + n977_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n977_suspend_β:
                                                                                        jmp   n976_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n978_op11_α:
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
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n978_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n997_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n986_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx998_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx998_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx998_101
.Lx998_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx998_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n987_lit_string_α
n986_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n987_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n988_lit_string_α
.Lx999_0:
                        .quad            .Lx999_0_s
.Lx999_0_s:
                        .string          "test_dbref"
#-----------------------------------------------------------------------------------------------------------------------
n988_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1000_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n989_lit_string_α
.Lx1000_0:
                        .quad            .Lx1000_0_s
.Lx1000_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n989_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n990_lit_string_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n990_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n991_lit_integer_α
.Lx1002_0:
                        .quad            .Lx1002_0_s
.Lx1002_0_s:
                        .string          "test_dbref"
#-----------------------------------------------------------------------------------------------------------------------
n991_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1003_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n992_op11_α
.Lx1003_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n992_op11_α:
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
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n993_lit_string_α
n992_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n993_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n994_op11_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n994_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n996_op11_α
                                                                                        jmp   n995_call_proc_staged_α
n994_op11_β:
                                                                                        jmp   n996_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n995_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1008_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1008_21
.Lx1008_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1008_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1008_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1008_23
.Lx1008_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx1008_23:
                        mov              rdi, qword ptr [rip + .Lx1008_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1008_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1008_3]
                        lea              rdx, [rip + .Lx1008_4]
                                                                                        jmp   rax
.Lx1008_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1008_2
.Lx1008_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1008_2
.Lx1008_1:
                        call             rt_faildescr@PLT
.Lx1008_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n996_op11_α
                                                                                        jmp   n997_suspend_α
n995_call_proc_staged_β:
                                                                                        jmp   n996_op11_α
.Lx1008_0:
                        .quad            .Lx1008_0_s
.Lx1008_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n996_op11_α:
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
n996_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n997_suspend_α:
                        lea              rax, [rip + n997_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n997_suspend_β:
                                                                                        jmp   n995_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n1015_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1012_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1017_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1017_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1017_101
.Lx1017_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1017_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n1013_lit_string_α
n1012_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1013_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1014_call_proc_staged_α
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n1014_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1020_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1020_21
.Lx1020_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1020_21:
                        mov              rdi, qword ptr [rip + .Lx1020_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1020_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1020_3]
                        lea              rdx, [rip + .Lx1020_4]
                                                                                        jmp   rax
.Lx1020_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1020_2
.Lx1020_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1020_2
.Lx1020_1:
                        call             rt_faildescr@PLT
.Lx1020_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1016_op11_α
                                                                                        jmp   n1015_suspend_α
n1014_call_proc_staged_β:
                                                                                        jmp   n1016_op11_α
.Lx1020_0:
                        .quad            .Lx1020_0_s
.Lx1020_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1015_suspend_α:
                        lea              rax, [rip + n1015_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n1015_suspend_β:
                                                                                        jmp   n1014_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1016_op11_α:
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
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   proc_pj_dir_5$2F0_ω
n1016_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1031_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n1024_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1032_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1032_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1032_101
.Lx1032_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1032_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n1025_lit_string_α
n1024_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1025_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1026_lit_string_α
.Lx1033_0:
                        .quad            .Lx1033_0_s
.Lx1033_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1026_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1027_lit_integer_α
.Lx1034_0:
                        .quad            .Lx1034_0_s
.Lx1034_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n1027_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx1035_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1028_op11_α
.Lx1035_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1028_op11_α:
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
                                                                                        je    n1030_op11_α
                                                                                        jmp   n1029_call_proc_staged_α
n1028_op11_β:
                                                                                        jmp   n1030_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1038_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1038_21
.Lx1038_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx1038_21:
                        mov              rdi, qword ptr [rip + .Lx1038_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1038_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1038_3]
                        lea              rdx, [rip + .Lx1038_4]
                                                                                        jmp   rax
.Lx1038_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1038_2
.Lx1038_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1038_2
.Lx1038_1:
                        call             rt_faildescr@PLT
.Lx1038_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1030_op11_α
                                                                                        jmp   n1031_suspend_α
n1029_call_proc_staged_β:
                                                                                        jmp   n1030_op11_α
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n1030_op11_α:
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
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n1030_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1031_suspend_α:
                        lea              rax, [rip + n1031_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n1031_suspend_β:
                                                                                        jmp   n1029_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n1048_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1042_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1049_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1049_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1049_101
.Lx1049_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1049_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n1043_lit_string_α
n1042_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1043_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1050_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1044_lit_string_α
.Lx1050_0:
                        .quad            .Lx1050_0_s
.Lx1050_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1051_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1045_op11_α
.Lx1051_0:
                        .quad            .Lx1051_0_s
.Lx1051_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1045_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1046_call_proc_staged_α
n1045_op11_β:
                                                                                        jmp   n1047_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1054_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1054_21
.Lx1054_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1054_21:
                        mov              rdi, qword ptr [rip + .Lx1054_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1054_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1054_3]
                        lea              rdx, [rip + .Lx1054_4]
                                                                                        jmp   rax
.Lx1054_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1054_2
.Lx1054_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1054_2
.Lx1054_1:
                        call             rt_faildescr@PLT
.Lx1054_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1047_op11_α
                                                                                        jmp   n1048_suspend_α
n1046_call_proc_staged_β:
                                                                                        jmp   n1047_op11_α
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1047_op11_α:
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
n1047_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1048_suspend_α:
                        lea              rax, [rip + n1048_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n1048_suspend_β:
                                                                                        jmp   n1046_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_term$2F1_α
proc_term$2F1_α:
                        .global          proc_term$2F1_α
                        .global          proc_term$2F1_β
                        .global          proc_term$2F1_γ
                        .global          proc_term$2F1_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_term$2F1_α_body:
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n1058_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx1062_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1059_var_ref_α
.Lx1062_0:
                        .quad            .Lx1062_0_s
.Lx1062_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n1060_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              qword ptr [rbp + 80], 0
.Lx1065_60:
                        .section         .rodata
.Lbynamegenfn464:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn464]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        lea              rcx, [rbp + 80]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F1_ω
                                                                                        jmp   n1061_suspend_α
n1060_call_builtin_gen_β:
                                                                                        jmp   .Lx1065_60
#-----------------------------------------------------------------------------------------------------------------------
n1061_suspend_α:
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F1_γ
n1061_suspend_β:
                                                                                        jmp   n1060_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_term$2F1_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4368
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test_dbref/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test_dbref$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 8880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_6/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_dir_6$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "term/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_term$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
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
                        sub              rsp, 72
                        mov              rdi, rsp
                        mov              ecx, 72
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1068_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n1069_call_proc_staged_α
.Lx1070_0:
                        .quad            .Lx1070_0_s
.Lx1070_0_s:
                        .string          "recorded"
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1072_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1072_21
.Lx1072_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx1072_21:
                        mov              rdi, qword ptr [rip + .Lx1072_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1072_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1072_3]
                        lea              rdx, [rip + .Lx1072_4]
                                                                                        jmp   rax
.Lx1072_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1072_2
.Lx1072_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1072_2
.Lx1072_1:
                        call             rt_faildescr@PLT
.Lx1072_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n1069_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1072_0:
                        .quad            .Lx1072_0_s
.Lx1072_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 72
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 72
                        ret
                        .section         .note.GNU-stack,"",@progbits
