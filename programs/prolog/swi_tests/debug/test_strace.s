                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F0_α
proc_$disj1$2F0_α:
proc_$disj1$2F0_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx10_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx10_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx10_101
.Lx10_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx10_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n1_call_proc_staged_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx12_2
.Lx12_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n3_call_builtin_prolog_α
                                                                                        jmp   n2_suspend_α
n1_call_proc_staged_β:
                                                                                        jmp   n3_call_builtin_prolog_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F0_γ
n2_suspend_β:
                                                                                        jmp   n1_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n4_call_proc_staged_α
n3_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx17_2
.Lx17_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n6_call_builtin_prolog_α
                                                                                        jmp   n5_suspend_α
n4_call_proc_staged_β:
                                                                                        jmp   n6_call_builtin_prolog_α
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n5_suspend_α:
                        lea              rax, [rip + n5_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F0_γ
n5_suspend_β:
                                                                                        jmp   n4_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n7_call_proc_staged_α
n6_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx22_2
.Lx22_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n9_call_builtin_prolog_α
                                                                                        jmp   n8_suspend_α
n7_call_proc_staged_β:
                                                                                        jmp   n9_call_builtin_prolog_α
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n8_suspend_α:
                        lea              rax, [rip + n8_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F0_γ
n8_suspend_β:
                                                                                        jmp   n7_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
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
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   proc_$disj1$2F0_ω
n9_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ok_literal$2F2_α
proc_ok_literal$2F2_α:
proc_ok_literal$2F2_α_body:
                        lea              rax, [rip + n33_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx69_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx69_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx69_101
.Lx69_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx69_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx69_240
                        add              rsp, 112
                                                                                        jmp   proc_ok_literal$2F2_ω
.Lx69_240:
                                                                                        jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 1296], 2                      # result
                        mov              dword ptr [rbp + 1300], 7
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n29_call_builtin_prolog_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "i_enter"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              rsi, qword ptr [rip + .Lx73_2]
                                                                                        jmp   .Lx73_3
.Lx73_2:
                        .quad            .Lx73_2_s
.Lx73_2_s:
                        .string          "i_enter"
.Lx73_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n34_call_builtin_prolog_α
                                                                                        jmp   n30_var_ref_α
n29_call_builtin_prolog_β:
                                                                                        jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
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
.Lx78_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx78_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_41
                        cmp              esi, 1
                                                                                        jne   .Lx78_55
                        mov              r8, rax
                                                                                        jmp   .Lx78_40
.Lx78_55:
                        cmp              esi, 2
                                                                                        jne   .Lx78_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx78_41
                        mov              r8, rax
                                                                                        jmp   .Lx78_40
.Lx78_56:
                        cmp              eax, 72
                                                                                        jne   .Lx78_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_41
                        cmp              rax, r8
                                                                                        je    .Lx78_41
                        mov              r8, rax
                                                                                        jmp   .Lx78_40
.Lx78_41:
                        lea              r9, [rbp + 1184]
.Lx78_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx78_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_43
                        cmp              esi, 1
                                                                                        jne   .Lx78_57
                        mov              r9, rax
                                                                                        jmp   .Lx78_42
.Lx78_57:
                        cmp              esi, 2
                                                                                        jne   .Lx78_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx78_43
                        mov              r9, rax
                                                                                        jmp   .Lx78_42
.Lx78_58:
                        cmp              eax, 72
                                                                                        jne   .Lx78_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_43
                        cmp              rax, r9
                                                                                        je    .Lx78_43
                        mov              r9, rax
                                                                                        jmp   .Lx78_42
.Lx78_43:
                        cmp              r8, r9
                                                                                        je    .Lx78_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_44
                        cmp              eax, 104
                                                                                        je    .Lx78_44
                        cmp              eax, 72
                                                                                        jne   .Lx78_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx78_44
                                                                                        jmp   .Lx78_45
.Lx78_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_53
                        cmp              eax, 104
                                                                                        je    .Lx78_53
                        cmp              eax, 72
                                                                                        jne   .Lx78_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx78_53
                                                                                        jmp   .Lx78_46
.Lx78_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx78_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx78_53
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
                                                                                        jmp   .Lx78_51
.Lx78_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_47
                        cmp              eax, 104
                                                                                        je    .Lx78_47
                        cmp              eax, 72
                                                                                        jne   .Lx78_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx78_47
                                                                                        jmp   .Lx78_48
.Lx78_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx78_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx78_53
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
                                                                                        jmp   .Lx78_51
.Lx78_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx78_49
                        cmp              edx, 80
                                                                                        je    .Lx78_53
                                                                                        jmp   .Lx78_52
.Lx78_49:
                        cmp              edx, 80
                                                                                        je    .Lx78_52
                        cmp              ecx, 5
                                                                                        je    .Lx78_53
                        cmp              edx, 5
                                                                                        je    .Lx78_53
                        cmp              ecx, 3
                                                                                        jne   .Lx78_50
                        cmp              edx, 3
                                                                                        jne   .Lx78_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx78_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx78_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx78_51
                                                                                        jmp   .Lx78_52
.Lx78_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx78_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx78_53
.Lx78_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx78_54
.Lx78_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx78_54
.Lx78_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx78_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n34_call_builtin_prolog_α
                                                                                        jmp   n33_suspend_α
n32_call_builtin_prolog_β:
                                                                                        jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_suspend_α:
                        lea              rax, [rip + n33_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_ok_literal$2F2_γ
n33_suspend_β:
                                                                                        jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n37_lit_string_α
.Lx84_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1088], 2                      # result
                        mov              dword ptr [rbp + 1092], 6
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n38_call_builtin_prolog_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "i_call"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n39_var_ref_α
n38_call_builtin_prolog_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 6
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n41_lit_string_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "i_call"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n42_var_ref_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n44_call_builtin_prolog_α
.Lx93_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_builtin_prolog_α
                                                                                        jmp   n46_call_builtin_prolog_α
n45_call_builtin_prolog_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx96_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx96_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx96_41
                        cmp              esi, 1
                                                                                        jne   .Lx96_55
                        mov              r8, rax
                                                                                        jmp   .Lx96_40
.Lx96_55:
                        cmp              esi, 2
                                                                                        jne   .Lx96_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx96_41
                        mov              r8, rax
                                                                                        jmp   .Lx96_40
.Lx96_56:
                        cmp              eax, 72
                                                                                        jne   .Lx96_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx96_41
                        cmp              rax, r8
                                                                                        je    .Lx96_41
                        mov              r8, rax
                                                                                        jmp   .Lx96_40
.Lx96_41:
                        lea              r9, [rbp + 752]
.Lx96_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx96_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx96_43
                        cmp              esi, 1
                                                                                        jne   .Lx96_57
                        mov              r9, rax
                                                                                        jmp   .Lx96_42
.Lx96_57:
                        cmp              esi, 2
                                                                                        jne   .Lx96_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx96_43
                        mov              r9, rax
                                                                                        jmp   .Lx96_42
.Lx96_58:
                        cmp              eax, 72
                                                                                        jne   .Lx96_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx96_43
                        cmp              rax, r9
                                                                                        je    .Lx96_43
                        mov              r9, rax
                                                                                        jmp   .Lx96_42
.Lx96_43:
                        cmp              r8, r9
                                                                                        je    .Lx96_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx96_44
                        cmp              eax, 104
                                                                                        je    .Lx96_44
                        cmp              eax, 72
                                                                                        jne   .Lx96_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx96_44
                                                                                        jmp   .Lx96_45
.Lx96_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx96_53
                        cmp              eax, 104
                                                                                        je    .Lx96_53
                        cmp              eax, 72
                                                                                        jne   .Lx96_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx96_53
                                                                                        jmp   .Lx96_46
.Lx96_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx96_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx96_53
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
                                                                                        jmp   .Lx96_51
.Lx96_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx96_47
                        cmp              eax, 104
                                                                                        je    .Lx96_47
                        cmp              eax, 72
                                                                                        jne   .Lx96_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx96_47
                                                                                        jmp   .Lx96_48
.Lx96_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx96_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx96_53
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
                                                                                        jmp   .Lx96_51
.Lx96_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx96_49
                        cmp              edx, 80
                                                                                        je    .Lx96_53
                                                                                        jmp   .Lx96_52
.Lx96_49:
                        cmp              edx, 80
                                                                                        je    .Lx96_52
                        cmp              ecx, 5
                                                                                        je    .Lx96_53
                        cmp              edx, 5
                                                                                        je    .Lx96_53
                        cmp              ecx, 3
                                                                                        jne   .Lx96_50
                        cmp              edx, 3
                                                                                        jne   .Lx96_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx96_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx96_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx96_51
                                                                                        jmp   .Lx96_52
.Lx96_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx96_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx96_53
.Lx96_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx96_54
.Lx96_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx96_54
.Lx96_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx96_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_builtin_prolog_α
                                                                                        jmp   n47_var_ref_α
n46_call_builtin_prolog_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        lea              r8, [rbp + 656]
.Lx101_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx101_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx101_41
                        cmp              esi, 1
                                                                                        jne   .Lx101_55
                        mov              r8, rax
                                                                                        jmp   .Lx101_40
.Lx101_55:
                        cmp              esi, 2
                                                                                        jne   .Lx101_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx101_41
                        mov              r8, rax
                                                                                        jmp   .Lx101_40
.Lx101_56:
                        cmp              eax, 72
                                                                                        jne   .Lx101_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx101_41
                        cmp              rax, r8
                                                                                        je    .Lx101_41
                        mov              r8, rax
                                                                                        jmp   .Lx101_40
.Lx101_41:
                        lea              r9, [rbp + 672]
.Lx101_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx101_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx101_43
                        cmp              esi, 1
                                                                                        jne   .Lx101_57
                        mov              r9, rax
                                                                                        jmp   .Lx101_42
.Lx101_57:
                        cmp              esi, 2
                                                                                        jne   .Lx101_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx101_43
                        mov              r9, rax
                                                                                        jmp   .Lx101_42
.Lx101_58:
                        cmp              eax, 72
                                                                                        jne   .Lx101_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx101_43
                        cmp              rax, r9
                                                                                        je    .Lx101_43
                        mov              r9, rax
                                                                                        jmp   .Lx101_42
.Lx101_43:
                        cmp              r8, r9
                                                                                        je    .Lx101_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx101_44
                        cmp              eax, 104
                                                                                        je    .Lx101_44
                        cmp              eax, 72
                                                                                        jne   .Lx101_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx101_44
                                                                                        jmp   .Lx101_45
.Lx101_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx101_53
                        cmp              eax, 104
                                                                                        je    .Lx101_53
                        cmp              eax, 72
                                                                                        jne   .Lx101_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx101_53
                                                                                        jmp   .Lx101_46
.Lx101_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx101_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx101_53
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
                                                                                        jmp   .Lx101_51
.Lx101_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx101_47
                        cmp              eax, 104
                                                                                        je    .Lx101_47
                        cmp              eax, 72
                                                                                        jne   .Lx101_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx101_47
                                                                                        jmp   .Lx101_48
.Lx101_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx101_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx101_53
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
                                                                                        jmp   .Lx101_51
.Lx101_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx101_49
                        cmp              edx, 80
                                                                                        je    .Lx101_53
                                                                                        jmp   .Lx101_52
.Lx101_49:
                        cmp              edx, 80
                                                                                        je    .Lx101_52
                        cmp              ecx, 5
                                                                                        je    .Lx101_53
                        cmp              edx, 5
                                                                                        je    .Lx101_53
                        cmp              ecx, 3
                                                                                        jne   .Lx101_50
                        cmp              edx, 3
                                                                                        jne   .Lx101_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx101_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx101_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx101_51
                                                                                        jmp   .Lx101_52
.Lx101_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx101_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx101_53
.Lx101_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx101_54
.Lx101_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx101_54
.Lx101_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx101_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_builtin_prolog_α
                                                                                        jmp   n50_suspend_α
n49_call_builtin_prolog_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_suspend_α:
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_ok_literal$2F2_γ
n50_suspend_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n52_var_ref_α
n51_call_builtin_prolog_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n54_lit_string_α
.Lx107_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 8
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n55_call_builtin_prolog_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "i_depart"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n68_call_builtin_prolog_α
                                                                                        jmp   n56_var_ref_α
n55_call_builtin_prolog_β:
                                                                                        jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 8
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n58_lit_string_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "i_depart"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n59_var_ref_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n61_call_builtin_prolog_α
.Lx116_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n62_call_builtin_prolog_α
n61_call_builtin_prolog_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n68_call_builtin_prolog_α
                                                                                        jmp   n63_call_builtin_prolog_α
n62_call_builtin_prolog_β:
                                                                                        jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        lea              r8, [rbp + 224]
.Lx119_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx119_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx119_41
                        cmp              rax, r8
                                                                                        je    .Lx119_41
                        mov              r8, rax
                                                                                        jmp   .Lx119_40
.Lx119_41:
                        lea              r9, [rbp + 240]
.Lx119_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx119_44
                        cmp              eax, 72
                                                                                        jne   .Lx119_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx119_44
                                                                                        jmp   .Lx119_45
.Lx119_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx119_53
                        cmp              eax, 104
                                                                                        je    .Lx119_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx119_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx119_49
                        cmp              edx, 80
                                                                                        je    .Lx119_53
                                                                                        jmp   .Lx119_52
.Lx119_49:
                        cmp              edx, 80
                                                                                        je    .Lx119_52
                        cmp              ecx, 5
                                                                                        je    .Lx119_53
                        cmp              edx, 5
                                                                                        je    .Lx119_53
                        cmp              ecx, 3
                                                                                        jne   .Lx119_50
                        cmp              edx, 3
                                                                                        jne   .Lx119_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx119_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx119_54
.Lx119_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx119_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n68_call_builtin_prolog_α
                                                                                        jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                                                                                        jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
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
.Lx124_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx124_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        cmp              esi, 1
                                                                                        jne   .Lx124_55
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_55:
                        cmp              esi, 2
                                                                                        jne   .Lx124_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_56:
                        cmp              eax, 72
                                                                                        jne   .Lx124_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        cmp              rax, r8
                                                                                        je    .Lx124_41
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_41:
                        lea              r9, [rbp + 160]
.Lx124_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx124_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        cmp              esi, 1
                                                                                        jne   .Lx124_57
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_57:
                        cmp              esi, 2
                                                                                        jne   .Lx124_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_58:
                        cmp              eax, 72
                                                                                        jne   .Lx124_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        cmp              rax, r9
                                                                                        je    .Lx124_43
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_43:
                        cmp              r8, r9
                                                                                        je    .Lx124_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_44
                        cmp              eax, 104
                                                                                        je    .Lx124_44
                        cmp              eax, 72
                                                                                        jne   .Lx124_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx124_44
                                                                                        jmp   .Lx124_45
.Lx124_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_53
                        cmp              eax, 104
                                                                                        je    .Lx124_53
                        cmp              eax, 72
                                                                                        jne   .Lx124_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx124_53
                                                                                        jmp   .Lx124_46
.Lx124_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx124_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx124_53
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
                                                                                        jmp   .Lx124_51
.Lx124_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_47
                        cmp              eax, 104
                                                                                        je    .Lx124_47
                        cmp              eax, 72
                                                                                        jne   .Lx124_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx124_47
                                                                                        jmp   .Lx124_48
.Lx124_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx124_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx124_53
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
                                                                                        jmp   .Lx124_51
.Lx124_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx124_49
                        cmp              edx, 80
                                                                                        je    .Lx124_53
                                                                                        jmp   .Lx124_52
.Lx124_49:
                        cmp              edx, 80
                                                                                        je    .Lx124_52
                        cmp              ecx, 5
                                                                                        je    .Lx124_53
                        cmp              edx, 5
                                                                                        je    .Lx124_53
                        cmp              ecx, 3
                                                                                        jne   .Lx124_50
                        cmp              edx, 3
                                                                                        jne   .Lx124_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx124_51
                                                                                        jmp   .Lx124_52
.Lx124_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx124_53
.Lx124_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx124_54
.Lx124_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx124_54
.Lx124_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx124_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n68_call_builtin_prolog_α
                                                                                        jmp   n67_suspend_α
n66_call_builtin_prolog_β:
                                                                                        jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_suspend_α:
                        lea              rax, [rip + n67_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_ok_literal$2F2_γ
n67_suspend_β:
                                                                                        jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   proc_ok_literal$2F2_ω
n68_call_builtin_prolog_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1312]
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_cont$2F3_α
proc_check_cont$2F3_α:
proc_check_cont$2F3_α_body:
                        lea              rax, [rip + n186_suspend_β]
                        mov              qword ptr [rbp + 2000], rax
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        sub              rsp, 1328
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx188_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx188_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx188_101
.Lx188_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx188_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx188_240
                        add              rsp, 1328
                                                                                        jmp   proc_check_cont$2F3_ω
.Lx188_240:
                                                                                        jmp   n129_var_ref_α
n128_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   proc_check_cont$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n131_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1936]
                        lea              r8, [rbp + 1936]
.Lx193_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx193_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_41
                        cmp              esi, 1
                                                                                        jne   .Lx193_55
                        mov              r8, rax
                                                                                        jmp   .Lx193_40
.Lx193_55:
                        cmp              esi, 2
                                                                                        jne   .Lx193_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx193_41
                        mov              r8, rax
                                                                                        jmp   .Lx193_40
.Lx193_56:
                        cmp              eax, 72
                                                                                        jne   .Lx193_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_41
                        cmp              rax, r8
                                                                                        je    .Lx193_41
                        mov              r8, rax
                                                                                        jmp   .Lx193_40
.Lx193_41:
                        lea              r9, [rbp + 1952]
.Lx193_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx193_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_43
                        cmp              esi, 1
                                                                                        jne   .Lx193_57
                        mov              r9, rax
                                                                                        jmp   .Lx193_42
.Lx193_57:
                        cmp              esi, 2
                                                                                        jne   .Lx193_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx193_43
                        mov              r9, rax
                                                                                        jmp   .Lx193_42
.Lx193_58:
                        cmp              eax, 72
                                                                                        jne   .Lx193_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_43
                        cmp              rax, r9
                                                                                        je    .Lx193_43
                        mov              r9, rax
                                                                                        jmp   .Lx193_42
.Lx193_43:
                        cmp              r8, r9
                                                                                        je    .Lx193_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx193_44
                        cmp              eax, 104
                                                                                        je    .Lx193_44
                        cmp              eax, 72
                                                                                        jne   .Lx193_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx193_44
                                                                                        jmp   .Lx193_45
.Lx193_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx193_53
                        cmp              eax, 104
                                                                                        je    .Lx193_53
                        cmp              eax, 72
                                                                                        jne   .Lx193_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx193_53
                                                                                        jmp   .Lx193_46
.Lx193_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx193_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx193_53
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
                                                                                        jmp   .Lx193_51
.Lx193_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx193_47
                        cmp              eax, 104
                                                                                        je    .Lx193_47
                        cmp              eax, 72
                                                                                        jne   .Lx193_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx193_47
                                                                                        jmp   .Lx193_48
.Lx193_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx193_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx193_53
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
                                                                                        jmp   .Lx193_51
.Lx193_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx193_49
                        cmp              edx, 80
                                                                                        je    .Lx193_53
                                                                                        jmp   .Lx193_52
.Lx193_49:
                        cmp              edx, 80
                                                                                        je    .Lx193_52
                        cmp              ecx, 5
                                                                                        je    .Lx193_53
                        cmp              edx, 5
                                                                                        je    .Lx193_53
                        cmp              ecx, 3
                                                                                        jne   .Lx193_50
                        cmp              edx, 3
                                                                                        jne   .Lx193_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx193_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx193_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx193_51
                                                                                        jmp   .Lx193_52
.Lx193_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx193_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx193_53
.Lx193_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx193_54
.Lx193_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx193_54
.Lx193_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx193_54:
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx193_240
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx193_240:
                                                                                        jmp   n132_var_ref_α
n131_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                        lea              rdi, [rbp + 1856]
                        lea              r8, [rbp + 1856]
.Lx198_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx198_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_41
                        cmp              esi, 1
                                                                                        jne   .Lx198_55
                        mov              r8, rax
                                                                                        jmp   .Lx198_40
.Lx198_55:
                        cmp              esi, 2
                                                                                        jne   .Lx198_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx198_41
                        mov              r8, rax
                                                                                        jmp   .Lx198_40
.Lx198_56:
                        cmp              eax, 72
                                                                                        jne   .Lx198_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_41
                        cmp              rax, r8
                                                                                        je    .Lx198_41
                        mov              r8, rax
                                                                                        jmp   .Lx198_40
.Lx198_41:
                        lea              r9, [rbp + 1872]
.Lx198_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx198_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_43
                        cmp              esi, 1
                                                                                        jne   .Lx198_57
                        mov              r9, rax
                                                                                        jmp   .Lx198_42
.Lx198_57:
                        cmp              esi, 2
                                                                                        jne   .Lx198_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx198_43
                        mov              r9, rax
                                                                                        jmp   .Lx198_42
.Lx198_58:
                        cmp              eax, 72
                                                                                        jne   .Lx198_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_43
                        cmp              rax, r9
                                                                                        je    .Lx198_43
                        mov              r9, rax
                                                                                        jmp   .Lx198_42
.Lx198_43:
                        cmp              r8, r9
                                                                                        je    .Lx198_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx198_44
                        cmp              eax, 104
                                                                                        je    .Lx198_44
                        cmp              eax, 72
                                                                                        jne   .Lx198_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx198_44
                                                                                        jmp   .Lx198_45
.Lx198_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx198_53
                        cmp              eax, 104
                                                                                        je    .Lx198_53
                        cmp              eax, 72
                                                                                        jne   .Lx198_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx198_53
                                                                                        jmp   .Lx198_46
.Lx198_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx198_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx198_53
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
                                                                                        jmp   .Lx198_51
.Lx198_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx198_47
                        cmp              eax, 104
                                                                                        je    .Lx198_47
                        cmp              eax, 72
                                                                                        jne   .Lx198_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx198_47
                                                                                        jmp   .Lx198_48
.Lx198_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx198_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx198_53
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
                                                                                        jmp   .Lx198_51
.Lx198_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx198_49
                        cmp              edx, 80
                                                                                        je    .Lx198_53
                                                                                        jmp   .Lx198_52
.Lx198_49:
                        cmp              edx, 80
                                                                                        je    .Lx198_52
                        cmp              ecx, 5
                                                                                        je    .Lx198_53
                        cmp              edx, 5
                                                                                        je    .Lx198_53
                        cmp              ecx, 3
                                                                                        jne   .Lx198_50
                        cmp              edx, 3
                                                                                        jne   .Lx198_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx198_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx198_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx198_51
                                                                                        jmp   .Lx198_52
.Lx198_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx198_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx198_53
.Lx198_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx198_54
.Lx198_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx198_54
.Lx198_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx198_54:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx198_240
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx198_240:
                                                                                        jmp   n135_var_ref_α
n134_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n137_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1776]
                        lea              r8, [rbp + 1776]
.Lx203_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx203_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        cmp              esi, 1
                                                                                        jne   .Lx203_55
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_55:
                        cmp              esi, 2
                                                                                        jne   .Lx203_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_56:
                        cmp              eax, 72
                                                                                        jne   .Lx203_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        cmp              rax, r8
                                                                                        je    .Lx203_41
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_41:
                        lea              r9, [rbp + 1792]
.Lx203_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx203_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        cmp              esi, 1
                                                                                        jne   .Lx203_57
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_57:
                        cmp              esi, 2
                                                                                        jne   .Lx203_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_58:
                        cmp              eax, 72
                                                                                        jne   .Lx203_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        cmp              rax, r9
                                                                                        je    .Lx203_43
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_43:
                        cmp              r8, r9
                                                                                        je    .Lx203_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_44
                        cmp              eax, 104
                                                                                        je    .Lx203_44
                        cmp              eax, 72
                                                                                        jne   .Lx203_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx203_44
                                                                                        jmp   .Lx203_45
.Lx203_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_53
                        cmp              eax, 104
                                                                                        je    .Lx203_53
                        cmp              eax, 72
                                                                                        jne   .Lx203_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx203_53
                                                                                        jmp   .Lx203_46
.Lx203_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx203_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx203_53
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
                                                                                        jmp   .Lx203_51
.Lx203_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_47
                        cmp              eax, 104
                                                                                        je    .Lx203_47
                        cmp              eax, 72
                                                                                        jne   .Lx203_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx203_47
                                                                                        jmp   .Lx203_48
.Lx203_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx203_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx203_53
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
                                                                                        jmp   .Lx203_51
.Lx203_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx203_49
                        cmp              edx, 80
                                                                                        je    .Lx203_53
                                                                                        jmp   .Lx203_52
.Lx203_49:
                        cmp              edx, 80
                                                                                        je    .Lx203_52
                        cmp              ecx, 5
                                                                                        je    .Lx203_53
                        cmp              edx, 5
                                                                                        je    .Lx203_53
                        cmp              ecx, 3
                                                                                        jne   .Lx203_50
                        cmp              edx, 3
                                                                                        jne   .Lx203_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx203_51
                                                                                        jmp   .Lx203_52
.Lx203_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx203_53
.Lx203_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx203_54
.Lx203_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx203_54
.Lx203_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx203_54:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx203_240
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx203_240:
                                                                                        jmp   n138_var_ref_α
n137_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n141_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n142_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_20
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx213_21
.Lx213_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1696]                    # v
                        mov              rdx, qword ptr [rbp + 1704]                    # v
                        call             rt_arg_stage@PLT
.Lx213_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_22
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx213_23
.Lx213_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1712]                    # v
                        mov              rdx, qword ptr [rbp + 1720]                    # v
                        call             rt_arg_stage@PLT
.Lx213_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_24
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx213_25
.Lx213_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1728]                    # v
                        mov              rdx, qword ptr [rbp + 1736]                    # v
                        call             rt_arg_stage@PLT
.Lx213_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_26
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx213_27
.Lx213_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1744]                    # v
                        mov              rdx, qword ptr [rbp + 1752]                    # v
                        call             rt_arg_stage@PLT
.Lx213_27:
                        mov              rdi, qword ptr [rip + .Lx213_0]                # name
                        mov              esi, 4                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx213_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx213_3]
                        lea              rdx, [rip + .Lx213_4]
                                                                                        jmp   rax
.Lx213_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx213_2
.Lx213_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx213_2
.Lx213_1:
                        call             rt_faildescr@PLT
.Lx213_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx213_240
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx213_240:
                                                                                        jmp   n143_lit_string_α
n142_call_proc_staged_β:
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "$fetch_vm/4"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 2
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n144_var_ref_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n146_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx219_240
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx219_240:
                                                                                        jmp   n147_call_proc_staged_α
n146_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_20
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx221_21
.Lx221_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1504]                    # v
                        mov              rdx, qword ptr [rbp + 1512]                    # v
                        call             rt_arg_stage@PLT
.Lx221_21:
                        mov              rdi, qword ptr [rip + .Lx221_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx221_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx221_3]
                        lea              rdx, [rip + .Lx221_4]
                                                                                        jmp   rax
.Lx221_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_1:
                        call             rt_faildescr@PLT
.Lx221_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n142_call_proc_staged_β
                                                                                        jmp   n148_lit_string_α
n147_call_proc_staged_β:
                                                                                        jmp   n142_call_proc_staged_β
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], 4
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n149_lit_string_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 6
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n150_lit_string_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "~w: ~w"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n151_var_ref_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n152_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 1296], 2                      # result
                        mov              dword ptr [rbp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n153_var_ref_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n154_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 2
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n155_call_builtin_prolog_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx231_240
                        add              rsp, 1328
                                                                                        jmp   proc_check_cont$2F3_ω
.Lx231_240:
                                                                                        jmp   n156_call_builtin_prolog_α
n155_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   proc_check_cont$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx232_240
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx232_240:
                                                                                        jmp   n157_call_proc_staged_α
n156_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx234_20
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx234_21
.Lx234_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1152]                    # v
                        mov              rdx, qword ptr [rbp + 1160]                    # v
                        call             rt_arg_stage@PLT
.Lx234_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx234_22
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx234_23
.Lx234_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1168]                    # v
                        mov              rdx, qword ptr [rbp + 1176]                    # v
                        call             rt_arg_stage@PLT
.Lx234_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx234_24
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx234_25
.Lx234_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1328]                    # v
                        mov              rdx, qword ptr [rbp + 1336]                    # v
                        call             rt_arg_stage@PLT
.Lx234_25:
                        mov              rdi, qword ptr [rip + .Lx234_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx234_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx234_3]
                        lea              rdx, [rip + .Lx234_4]
                                                                                        jmp   rax
.Lx234_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx234_2
.Lx234_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx234_2
.Lx234_1:
                        call             rt_faildescr@PLT
.Lx234_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n147_call_proc_staged_β
                                                                                        jmp   n158_var_ref_α
n157_call_proc_staged_β:
                                                                                        jmp   n147_call_proc_staged_β
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n161_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_20
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx242_21
.Lx242_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1024]                    # v
                        mov              rdx, qword ptr [rbp + 1032]                    # v
                        call             rt_arg_stage@PLT
.Lx242_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_22
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx242_23
.Lx242_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1040]                    # v
                        mov              rdx, qword ptr [rbp + 1048]                    # v
                        call             rt_arg_stage@PLT
.Lx242_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_24
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx242_25
.Lx242_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1056]                    # v
                        mov              rdx, qword ptr [rbp + 1064]                    # v
                        call             rt_arg_stage@PLT
.Lx242_25:
                        mov              rdi, qword ptr [rip + .Lx242_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx242_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_3]
                        lea              rdx, [rip + .Lx242_4]
                                                                                        jmp   rax
.Lx242_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx242_2
.Lx242_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx242_2
.Lx242_1:
                        call             rt_faildescr@PLT
.Lx242_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n157_call_proc_staged_β
                                                                                        jmp   n162_lit_string_α
n161_call_proc_staged_β:
                                                                                        jmp   n157_call_proc_staged_β
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "$clause_term_position/3"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 4
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n163_lit_string_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 4
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n164_lit_string_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "\t ~w"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n165_var_ref_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 2
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n167_call_builtin_prolog_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx249_240
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
.Lx249_240:
                                                                                        jmp   n168_call_proc_staged_α
n167_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx251_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx251_21
.Lx251_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 784]                     # v
                        mov              rdx, qword ptr [rbp + 792]                     # v
                        call             rt_arg_stage@PLT
.Lx251_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx251_22
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx251_23
.Lx251_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 800]                     # v
                        mov              rdx, qword ptr [rbp + 808]                     # v
                        call             rt_arg_stage@PLT
.Lx251_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx251_24
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx251_25
.Lx251_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 848]                     # v
                        mov              rdx, qword ptr [rbp + 856]                     # v
                        call             rt_arg_stage@PLT
.Lx251_25:
                        mov              rdi, qword ptr [rip + .Lx251_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx251_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx251_3]
                        lea              rdx, [rip + .Lx251_4]
                                                                                        jmp   rax
.Lx251_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx251_2
.Lx251_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx251_2
.Lx251_1:
                        call             rt_faildescr@PLT
.Lx251_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n161_call_proc_staged_β
                                                                                        jmp   n169_var_ref_α
n168_call_proc_staged_β:
                                                                                        jmp   n161_call_proc_staged_β
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 4
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n171_call_builtin_prolog_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "exit"
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn256:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]                         # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx255_240
                        add              rsp, 1328
                                                                                        jmp   n172_var_ref_α
.Lx255_240:
                                                                                        jmp   n186_suspend_α
n171_call_builtin_prolog_β:
                        add              rsp, 1328
                                                                                        jmp   n172_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n173_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n174_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n175_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              qword ptr [rbp + 544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx264_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx264_21
.Lx264_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 576]                     # v
                        mov              rdx, qword ptr [rbp + 584]                     # v
                        call             rt_arg_stage@PLT
.Lx264_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx264_22
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx264_23
.Lx264_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 592]                     # v
                        mov              rdx, qword ptr [rbp + 600]                     # v
                        call             rt_arg_stage@PLT
.Lx264_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx264_24
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx264_25
.Lx264_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 608]                     # v
                        mov              rdx, qword ptr [rbp + 616]                     # v
                        call             rt_arg_stage@PLT
.Lx264_25:
                        mov              edi, 6                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx264_1
                        lea              rcx, [rip + .Lx264_3]
                        lea              rdx, [rip + .Lx264_4]
                                                                                        jmp   rax
.Lx264_3:
                        mov              qword ptr [rbp + 552], rsp
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx264_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx264_2
.Lx264_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx264_2
.Lx264_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx264_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx264_2
.Lx264_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx264_2
.Lx264_1:
                        call             rt_faildescr@PLT
.Lx264_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n168_call_proc_staged_β
                                                                                        jmp   n176_lit_string_α
n175_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   qword ptr [rsp]
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "term_in_clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 4
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n177_lit_string_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 7
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n178_lit_string_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "\t--> ~w"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n179_var_ref_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 2
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n181_call_builtin_prolog_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n168_call_proc_staged_β
                                                                                        jmp   n182_call_proc_staged_α
n181_call_builtin_prolog_β:
                                                                                        jmp   n168_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx273_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx273_21
.Lx273_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
.Lx273_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx273_22
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx273_23
.Lx273_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
.Lx273_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx273_24
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx273_25
.Lx273_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 384]                     # v
                        mov              rdx, qword ptr [rbp + 392]                     # v
                        call             rt_arg_stage@PLT
.Lx273_25:
                        mov              rdi, qword ptr [rip + .Lx273_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx273_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx273_3]
                        lea              rdx, [rip + .Lx273_4]
                                                                                        jmp   rax
.Lx273_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx273_2
.Lx273_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx273_2
.Lx273_1:
                        call             rt_faildescr@PLT
.Lx273_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n168_call_proc_staged_β
                                                                                        jmp   n183_var_ref_α
n182_call_proc_staged_β:
                                                                                        jmp   n168_call_proc_staged_β
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n184_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n185_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx279_21
.Lx279_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx279_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx279_23
.Lx279_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx279_23:
                        mov              edi, 1                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx279_1
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4]
                                                                                        jmp   rax
.Lx279_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx279_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx279_2
.Lx279_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx279_2
.Lx279_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx279_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx279_2
.Lx279_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx279_2
.Lx279_1:
                        call             rt_faildescr@PLT
.Lx279_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n182_call_proc_staged_β
                                                                                        jmp   n186_suspend_α
n185_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "ok_literal/2"
#-----------------------------------------------------------------------------------------------------------------------
n186_suspend_α:
                        lea              rax, [rip + n186_suspend_β]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 1328
                                                                                        jmp   proc_check_cont$2F3_γ
n186_suspend_β:
                                                                                        jmp   n168_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_check_cont$2F3_ω
                                                                                        jmp   proc_check_cont$2F3_ω
n187_call_builtin_prolog_β:
                                                                                        jmp   proc_check_cont$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_β:
                                                                                        jmp   qword ptr [rbp + 2000]
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj2$2F0_α
proc_$disj2$2F0_α:
proc_$disj2$2F0_α_body:
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx290_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx290_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx290_101
.Lx290_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx290_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   n284_call_proc_staged_α
n283_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n284_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx292_2
.Lx292_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n286_call_builtin_prolog_α
                                                                                        jmp   n285_suspend_α
n284_call_proc_staged_β:
                                                                                        jmp   n286_call_builtin_prolog_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n285_suspend_α:
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F0_γ
n285_suspend_β:
                                                                                        jmp   n284_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   n287_call_proc_staged_α
n286_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx297_2
.Lx297_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n289_call_builtin_prolog_α
                                                                                        jmp   n288_suspend_α
n287_call_proc_staged_β:
                                                                                        jmp   n289_call_builtin_prolog_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n288_suspend_α:
                        lea              rax, [rip + n288_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj2$2F0_γ
n288_suspend_β:
                                                                                        jmp   n287_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
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
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   proc_$disj2$2F0_ω
n289_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj2$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n301_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx308_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx308_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx308_101
.Lx308_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx308_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n302_call_proc_staged_α
n301_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n302_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx310_2
.Lx310_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n304_call_builtin_prolog_α
                                                                                        jmp   n303_suspend_α
n302_call_proc_staged_β:
                                                                                        jmp   n304_call_builtin_prolog_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n303_suspend_α:
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n303_suspend_β:
                                                                                        jmp   n302_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n305_call_proc_staged_α
n304_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx315_2
.Lx315_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n307_call_builtin_prolog_α
                                                                                        jmp   n306_suspend_α
n305_call_proc_staged_β:
                                                                                        jmp   n307_call_builtin_prolog_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n306_suspend_α:
                        lea              rax, [rip + n306_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n306_suspend_β:
                                                                                        jmp   n305_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
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
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   proc_$disj0$2F0_ω
n307_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_strace$2F0_α
proc_test_strace$2F0_α:
proc_test_strace$2F0_α_body:
                        lea              rax, [rip + n324_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx326_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx326_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx326_101
.Lx326_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx326_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx326_240
                        add              rsp, 96
                                                                                        jmp   proc_test_strace$2F0_ω
.Lx326_240:
                                                                                        jmp   n320_lit_string_α
n319_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_test_strace$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n321_var_ref_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n322_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx330_240
                        add              rsp, 96
                                                                                        jmp   n325_call_builtin_prolog_α
.Lx330_240:
                                                                                        jmp   n323_call_proc_staged_α
n322_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n325_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx332_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx332_21
.Lx332_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx332_21:
                        mov              edi, 9                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx332_1
                        lea              rcx, [rip + .Lx332_3]
                        lea              rdx, [rip + .Lx332_4]
                                                                                        jmp   rax
.Lx332_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx332_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx332_2
.Lx332_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx332_2
.Lx332_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx332_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx332_2
.Lx332_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx332_2
.Lx332_1:
                        call             rt_faildescr@PLT
.Lx332_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx332_240
                        add              rsp, 96
                                                                                        jmp   n325_call_builtin_prolog_α
.Lx332_240:
                                                                                        jmp   n324_suspend_α
n323_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "chk/1"
#-----------------------------------------------------------------------------------------------------------------------
n324_suspend_α:
                        lea              rax, [rip + n324_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_test_strace$2F0_γ
n324_suspend_β:
                                                                                        jmp   n323_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
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
                                                                                        je    proc_test_strace$2F0_ω
                                                                                        jmp   proc_test_strace$2F0_ω
n325_call_builtin_prolog_β:
                                                                                        jmp   proc_test_strace$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_term_in_clause$2F3_α
proc_term_in_clause$2F3_α:
proc_term_in_clause$2F3_α_body:
                        lea              rax, [rip + n357_suspend_β]
                        mov              qword ptr [rbp + 752], rax
#-----------------------------------------------------------------------------------------------------------------------
n336_call_builtin_prolog_α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx359_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx359_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx359_101
.Lx359_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx359_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx359_240
                        add              rsp, 528
                                                                                        jmp   proc_term_in_clause$2F3_ω
.Lx359_240:
                                                                                        jmp   n337_var_ref_α
n336_call_builtin_prolog_β:
                        add              rsp, 528
                                                                                        jmp   proc_term_in_clause$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n339_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n339_call_builtin_prolog_α:
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
.Lx364_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx364_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_41
                        cmp              esi, 1
                                                                                        jne   .Lx364_55
                        mov              r8, rax
                                                                                        jmp   .Lx364_40
.Lx364_55:
                        cmp              esi, 2
                                                                                        jne   .Lx364_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx364_41
                        mov              r8, rax
                                                                                        jmp   .Lx364_40
.Lx364_56:
                        cmp              eax, 72
                                                                                        jne   .Lx364_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_41
                        cmp              rax, r8
                                                                                        je    .Lx364_41
                        mov              r8, rax
                                                                                        jmp   .Lx364_40
.Lx364_41:
                        lea              r9, [rbp + 704]
.Lx364_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx364_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_43
                        cmp              esi, 1
                                                                                        jne   .Lx364_57
                        mov              r9, rax
                                                                                        jmp   .Lx364_42
.Lx364_57:
                        cmp              esi, 2
                                                                                        jne   .Lx364_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx364_43
                        mov              r9, rax
                                                                                        jmp   .Lx364_42
.Lx364_58:
                        cmp              eax, 72
                                                                                        jne   .Lx364_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_43
                        cmp              rax, r9
                                                                                        je    .Lx364_43
                        mov              r9, rax
                                                                                        jmp   .Lx364_42
.Lx364_43:
                        cmp              r8, r9
                                                                                        je    .Lx364_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx364_44
                        cmp              eax, 104
                                                                                        je    .Lx364_44
                        cmp              eax, 72
                                                                                        jne   .Lx364_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx364_44
                                                                                        jmp   .Lx364_45
.Lx364_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx364_53
                        cmp              eax, 104
                                                                                        je    .Lx364_53
                        cmp              eax, 72
                                                                                        jne   .Lx364_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx364_53
                                                                                        jmp   .Lx364_46
.Lx364_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx364_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx364_53
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
                                                                                        jmp   .Lx364_51
.Lx364_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx364_47
                        cmp              eax, 104
                                                                                        je    .Lx364_47
                        cmp              eax, 72
                                                                                        jne   .Lx364_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx364_47
                                                                                        jmp   .Lx364_48
.Lx364_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx364_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx364_53
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
                                                                                        jmp   .Lx364_51
.Lx364_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx364_49
                        cmp              edx, 80
                                                                                        je    .Lx364_53
                                                                                        jmp   .Lx364_52
.Lx364_49:
                        cmp              edx, 80
                                                                                        je    .Lx364_52
                        cmp              ecx, 5
                                                                                        je    .Lx364_53
                        cmp              edx, 5
                                                                                        je    .Lx364_53
                        cmp              ecx, 3
                                                                                        jne   .Lx364_50
                        cmp              edx, 3
                                                                                        jne   .Lx364_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx364_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx364_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx364_51
                                                                                        jmp   .Lx364_52
.Lx364_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx364_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx364_53
.Lx364_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx364_54
.Lx364_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx364_54
.Lx364_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx364_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx364_240
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
.Lx364_240:
                                                                                        jmp   n340_var_ref_α
n339_call_builtin_prolog_β:
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n341_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n342_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_prolog_α:
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
.Lx369_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx369_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        cmp              esi, 1
                                                                                        jne   .Lx369_55
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_55:
                        cmp              esi, 2
                                                                                        jne   .Lx369_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_56:
                        cmp              eax, 72
                                                                                        jne   .Lx369_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        cmp              rax, r8
                                                                                        je    .Lx369_41
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_41:
                        lea              r9, [rbp + 624]
.Lx369_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx369_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        cmp              esi, 1
                                                                                        jne   .Lx369_57
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_57:
                        cmp              esi, 2
                                                                                        jne   .Lx369_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_58:
                        cmp              eax, 72
                                                                                        jne   .Lx369_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        cmp              rax, r9
                                                                                        je    .Lx369_43
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_43:
                        cmp              r8, r9
                                                                                        je    .Lx369_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_44
                        cmp              eax, 104
                                                                                        je    .Lx369_44
                        cmp              eax, 72
                                                                                        jne   .Lx369_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx369_44
                                                                                        jmp   .Lx369_45
.Lx369_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_53
                        cmp              eax, 104
                                                                                        je    .Lx369_53
                        cmp              eax, 72
                                                                                        jne   .Lx369_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx369_53
                                                                                        jmp   .Lx369_46
.Lx369_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx369_53
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
                                                                                        jmp   .Lx369_51
.Lx369_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_47
                        cmp              eax, 104
                                                                                        je    .Lx369_47
                        cmp              eax, 72
                                                                                        jne   .Lx369_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx369_47
                                                                                        jmp   .Lx369_48
.Lx369_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx369_53
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
                                                                                        jmp   .Lx369_51
.Lx369_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx369_49
                        cmp              edx, 80
                                                                                        je    .Lx369_53
                                                                                        jmp   .Lx369_52
.Lx369_49:
                        cmp              edx, 80
                                                                                        je    .Lx369_52
                        cmp              ecx, 5
                                                                                        je    .Lx369_53
                        cmp              edx, 5
                                                                                        je    .Lx369_53
                        cmp              ecx, 3
                                                                                        jne   .Lx369_50
                        cmp              edx, 3
                                                                                        jne   .Lx369_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx369_51
                                                                                        jmp   .Lx369_52
.Lx369_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx369_53
.Lx369_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx369_54
.Lx369_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx369_54
.Lx369_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx369_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx369_240
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
.Lx369_240:
                                                                                        jmp   n343_var_ref_α
n342_call_builtin_prolog_β:
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n345_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n345_call_builtin_prolog_α:
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
.Lx374_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx374_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_41
                        cmp              esi, 1
                                                                                        jne   .Lx374_55
                        mov              r8, rax
                                                                                        jmp   .Lx374_40
.Lx374_55:
                        cmp              esi, 2
                                                                                        jne   .Lx374_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx374_41
                        mov              r8, rax
                                                                                        jmp   .Lx374_40
.Lx374_56:
                        cmp              eax, 72
                                                                                        jne   .Lx374_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_41
                        cmp              rax, r8
                                                                                        je    .Lx374_41
                        mov              r8, rax
                                                                                        jmp   .Lx374_40
.Lx374_41:
                        lea              r9, [rbp + 544]
.Lx374_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx374_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_43
                        cmp              esi, 1
                                                                                        jne   .Lx374_57
                        mov              r9, rax
                                                                                        jmp   .Lx374_42
.Lx374_57:
                        cmp              esi, 2
                                                                                        jne   .Lx374_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx374_43
                        mov              r9, rax
                                                                                        jmp   .Lx374_42
.Lx374_58:
                        cmp              eax, 72
                                                                                        jne   .Lx374_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_43
                        cmp              rax, r9
                                                                                        je    .Lx374_43
                        mov              r9, rax
                                                                                        jmp   .Lx374_42
.Lx374_43:
                        cmp              r8, r9
                                                                                        je    .Lx374_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx374_44
                        cmp              eax, 104
                                                                                        je    .Lx374_44
                        cmp              eax, 72
                                                                                        jne   .Lx374_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx374_44
                                                                                        jmp   .Lx374_45
.Lx374_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx374_53
                        cmp              eax, 104
                                                                                        je    .Lx374_53
                        cmp              eax, 72
                                                                                        jne   .Lx374_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx374_53
                                                                                        jmp   .Lx374_46
.Lx374_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx374_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx374_53
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
                                                                                        jmp   .Lx374_51
.Lx374_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx374_47
                        cmp              eax, 104
                                                                                        je    .Lx374_47
                        cmp              eax, 72
                                                                                        jne   .Lx374_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx374_47
                                                                                        jmp   .Lx374_48
.Lx374_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx374_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx374_53
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
                                                                                        jmp   .Lx374_51
.Lx374_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx374_49
                        cmp              edx, 80
                                                                                        je    .Lx374_53
                                                                                        jmp   .Lx374_52
.Lx374_49:
                        cmp              edx, 80
                                                                                        je    .Lx374_52
                        cmp              ecx, 5
                                                                                        je    .Lx374_53
                        cmp              edx, 5
                                                                                        je    .Lx374_53
                        cmp              ecx, 3
                                                                                        jne   .Lx374_50
                        cmp              edx, 3
                                                                                        jne   .Lx374_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx374_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx374_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx374_51
                                                                                        jmp   .Lx374_52
.Lx374_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx374_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx374_53
.Lx374_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx374_54
.Lx374_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx374_54
.Lx374_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx374_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx374_240
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
.Lx374_240:
                                                                                        jmp   n346_var_ref_α
n345_call_builtin_prolog_β:
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n347_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n349_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx382_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx382_21
.Lx382_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx382_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx382_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx382_23
.Lx382_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx382_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx382_24
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx382_25
.Lx382_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 496]                     # v
                        mov              rdx, qword ptr [rbp + 504]                     # v
                        call             rt_arg_stage@PLT
.Lx382_25:
                        mov              rdi, qword ptr [rip + .Lx382_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx382_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx382_3]
                        lea              rdx, [rip + .Lx382_4]
                                                                                        jmp   rax
.Lx382_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx382_2
.Lx382_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx382_2
.Lx382_1:
                        call             rt_faildescr@PLT
.Lx382_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx382_240
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
.Lx382_240:
                                                                                        jmp   n350_var_ref_α
n349_call_proc_staged_β:
                                                                                        jmp   n358_call_builtin_prolog_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n351_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 2
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n352_var_ref_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx390_240
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
.Lx390_240:
                                                                                        jmp   n355_var_ref_α
n354_call_builtin_prolog_β:
                        add              rsp, 528
                                                                                        jmp   n358_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n356_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx394_21
.Lx394_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx394_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx394_23
.Lx394_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 272]                     # v
                        mov              rdx, qword ptr [rbp + 280]                     # v
                        call             rt_arg_stage@PLT
.Lx394_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx394_25
.Lx394_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 368]                     # v
                        mov              rdx, qword ptr [rbp + 376]                     # v
                        call             rt_arg_stage@PLT
.Lx394_25:
                        mov              edi, 13                                        # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx394_1
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4]
                                                                                        jmp   rax
.Lx394_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx394_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx394_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_1:
                        call             rt_faildescr@PLT
.Lx394_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n349_call_proc_staged_β
                                                                                        jmp   n357_suspend_α
n356_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "find_term/3"
#-----------------------------------------------------------------------------------------------------------------------
n357_suspend_α:
                        lea              rax, [rip + n357_suspend_β]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 528
                                                                                        jmp   proc_term_in_clause$2F3_γ
n357_suspend_β:
                                                                                        jmp   n356_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n358_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_term_in_clause$2F3_ω
                                                                                        jmp   proc_term_in_clause$2F3_ω
n358_call_builtin_prolog_β:
                                                                                        jmp   proc_term_in_clause$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_β:
                                                                                        jmp   qword ptr [rbp + 752]
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n408_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n398_call_builtin_prolog_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx410_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx410_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx410_101
.Lx410_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx410_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx410_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx410_240:
                                                                                        jmp   n399_lit_string_α
n398_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 11
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n400_lit_string_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "test_strace"
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n401_lit_string_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n402_lit_string_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 11
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n403_lit_integer_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "test_strace"
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n404_call_builtin_prolog_α
.Lx415_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx416_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx416_240:
                                                                                        jmp   n405_lit_string_α
n404_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n406_call_builtin_prolog_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx418_240
                        add              rsp, 256
                                                                                        jmp   n409_call_builtin_prolog_α
.Lx418_240:
                                                                                        jmp   n407_call_proc_staged_α
n406_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   n409_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n407_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx420_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx420_21
.Lx420_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx420_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx420_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx420_23
.Lx420_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx420_23:
                        mov              rdi, qword ptr [rip + .Lx420_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx420_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4]
                                                                                        jmp   rax
.Lx420_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_1:
                        call             rt_faildescr@PLT
.Lx420_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx420_240
                        add              rsp, 256
                                                                                        jmp   n409_call_builtin_prolog_α
.Lx420_240:
                                                                                        jmp   n408_suspend_α
n407_call_proc_staged_β:
                                                                                        jmp   n409_call_builtin_prolog_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n408_suspend_α:
                        lea              rax, [rip + n408_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n408_suspend_β:
                                                                                        jmp   n407_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n409_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_b$2F0_α
proc_b$2F0_α:
proc_b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n424_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx428_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx428_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx428_101
.Lx428_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx428_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx428_240
                        add              rsp, 32
                                                                                        jmp   proc_b$2F0_ω
.Lx428_240:
                                                                                        jmp   n425_move_label_α
n424_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_move_label_α:
                        lea              rax, [rip + n427_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n426_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n426_disjunction_β:
                                                                                        jmp   proc_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_call_builtin_prolog_α:
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
                                                                                        je    proc_b$2F0_ω
                                                                                        jmp   proc_b$2F0_ω
n427_call_builtin_prolog_β:
                                                                                        jmp   proc_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_β:
                                                                                        jmp   n426_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx434_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx434_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_b$2F0_α_body
.Lx434_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx434_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_chk$2F1_α
proc_chk$2F1_α:
proc_chk$2F1_α_body:
                        lea              rax, [rip + n450_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx452_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx452_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx452_101
.Lx452_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx452_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx452_240
                        add              rsp, 368
                                                                                        jmp   proc_chk$2F1_ω
.Lx452_240:
                                                                                        jmp   n436_var_ref_α
n435_call_builtin_prolog_β:
                        add              rsp, 368
                                                                                        jmp   proc_chk$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n437_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n438_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx457_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx457_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_41
                        cmp              rax, r8
                                                                                        je    .Lx457_41
                        mov              r8, rax
                                                                                        jmp   .Lx457_40
.Lx457_41:
                        lea              r9, [rbp + 512]
.Lx457_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx457_44
                        cmp              eax, 72
                                                                                        jne   .Lx457_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx457_44
                                                                                        jmp   .Lx457_45
.Lx457_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx457_53
                        cmp              eax, 104
                                                                                        je    .Lx457_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx457_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx457_49
                        cmp              edx, 80
                                                                                        je    .Lx457_53
                                                                                        jmp   .Lx457_52
.Lx457_49:
                        cmp              edx, 80
                                                                                        je    .Lx457_52
                        cmp              ecx, 5
                                                                                        je    .Lx457_53
                        cmp              edx, 5
                                                                                        je    .Lx457_53
                        cmp              ecx, 3
                                                                                        jne   .Lx457_50
                        cmp              edx, 3
                                                                                        jne   .Lx457_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx457_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx457_54
.Lx457_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx457_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx457_240
                        add              rsp, 368
                                                                                        jmp   n451_call_builtin_prolog_α
.Lx457_240:
                                                                                        jmp   n439_var_ref_α
n438_call_builtin_prolog_β:
                        add              rsp, 368
                                                                                        jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n440_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n441_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n442_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n442_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx465_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx465_21
.Lx465_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 432]                     # v
                        mov              rdx, qword ptr [rbp + 440]                     # v
                        call             rt_arg_stage@PLT
.Lx465_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx465_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx465_23
.Lx465_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 448]                     # v
                        mov              rdx, qword ptr [rbp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx465_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx465_24
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx465_25
.Lx465_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx465_25:
                        mov              rdi, qword ptr [rip + .Lx465_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx465_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx465_3]
                        lea              rdx, [rip + .Lx465_4]
                                                                                        jmp   rax
.Lx465_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx465_2
.Lx465_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx465_2
.Lx465_1:
                        call             rt_faildescr@PLT
.Lx465_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx465_240
                        add              rsp, 368
                                                                                        jmp   n450_suspend_α
.Lx465_240:
                                                                                        jmp   n443_var_ref_α
n442_call_proc_staged_β:
                                                                                        jmp   n450_suspend_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "nth_clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n444_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n445_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n446_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n446_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx473_21
.Lx473_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx473_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx473_23
.Lx473_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
.Lx473_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_24
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx473_25
.Lx473_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
.Lx473_25:
                        mov              rdi, qword ptr [rip + .Lx473_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx473_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx473_3]
                        lea              rdx, [rip + .Lx473_4]
                                                                                        jmp   rax
.Lx473_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_1:
                        call             rt_faildescr@PLT
.Lx473_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n442_call_proc_staged_β
                                                                                        jmp   n447_var_ref_α
n446_call_proc_staged_β:
                                                                                        jmp   n442_call_proc_staged_β
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n448_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n449_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n449_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx479_21
.Lx479_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx479_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx479_23
.Lx479_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx479_23:
                        mov              edi, 11                                        # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx479_1
                        lea              rcx, [rip + .Lx479_3]
                        lea              rdx, [rip + .Lx479_4]
                                                                                        jmp   rax
.Lx479_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx479_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx479_2
.Lx479_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx479_2
.Lx479_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx479_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx479_2
.Lx479_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx479_2
.Lx479_1:
                        call             rt_faildescr@PLT
.Lx479_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx479_240
                        add              rsp, 368
                                                                                        jmp   n451_call_builtin_prolog_α
.Lx479_240:
                                                                                        jmp   n446_call_proc_staged_β
n449_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "check_clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n450_suspend_α:
                        lea              rax, [rip + n450_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_chk$2F1_γ
n450_suspend_β:
                                                                                        jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_builtin_prolog_α:
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
                                                                                        je    proc_chk$2F1_ω
                                                                                        jmp   proc_chk$2F1_ω
n451_call_builtin_prolog_β:
                                                                                        jmp   proc_chk$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_d$2F0_α
proc_d$2F0_α:
proc_d$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n483_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx487_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx487_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx487_101
.Lx487_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx487_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx487_240
                        add              rsp, 32
                                                                                        jmp   proc_d$2F0_ω
.Lx487_240:
                                                                                        jmp   n484_move_label_α
n483_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_d$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n484_move_label_α:
                        lea              rax, [rip + n486_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_d$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n485_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n485_disjunction_β:
                                                                                        jmp   proc_d$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_prolog_α:
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
                                                                                        je    proc_d$2F0_ω
                                                                                        jmp   proc_d$2F0_ω
n486_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_β:
                                                                                        jmp   n485_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx493_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx493_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_d$2F0_α_body
.Lx493_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx493_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_clause$2F2_α
proc_check_clause$2F2_α:
proc_check_clause$2F2_α_body:
                        lea              rax, [rip + n519_suspend_β]
                        mov              qword ptr [rbp + 896], rax
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_prolog_α:
                        sub              rsp, 688
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx521_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx521_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx521_101
.Lx521_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx521_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx521_240
                        add              rsp, 688
                                                                                        jmp   proc_check_clause$2F2_ω
.Lx521_240:
                                                                                        jmp   n495_var_ref_α
n494_call_builtin_prolog_β:
                        add              rsp, 688
                                                                                        jmp   proc_check_clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n496_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n497_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n497_call_builtin_prolog_α:
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
.Lx526_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx526_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx526_41
                        cmp              esi, 1
                                                                                        jne   .Lx526_55
                        mov              r8, rax
                                                                                        jmp   .Lx526_40
.Lx526_55:
                        cmp              esi, 2
                                                                                        jne   .Lx526_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx526_41
                        mov              r8, rax
                                                                                        jmp   .Lx526_40
.Lx526_56:
                        cmp              eax, 72
                                                                                        jne   .Lx526_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx526_41
                        cmp              rax, r8
                                                                                        je    .Lx526_41
                        mov              r8, rax
                                                                                        jmp   .Lx526_40
.Lx526_41:
                        lea              r9, [rbp + 848]
.Lx526_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx526_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx526_43
                        cmp              esi, 1
                                                                                        jne   .Lx526_57
                        mov              r9, rax
                                                                                        jmp   .Lx526_42
.Lx526_57:
                        cmp              esi, 2
                                                                                        jne   .Lx526_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx526_43
                        mov              r9, rax
                                                                                        jmp   .Lx526_42
.Lx526_58:
                        cmp              eax, 72
                                                                                        jne   .Lx526_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx526_43
                        cmp              rax, r9
                                                                                        je    .Lx526_43
                        mov              r9, rax
                                                                                        jmp   .Lx526_42
.Lx526_43:
                        cmp              r8, r9
                                                                                        je    .Lx526_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx526_44
                        cmp              eax, 104
                                                                                        je    .Lx526_44
                        cmp              eax, 72
                                                                                        jne   .Lx526_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx526_44
                                                                                        jmp   .Lx526_45
.Lx526_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx526_53
                        cmp              eax, 104
                                                                                        je    .Lx526_53
                        cmp              eax, 72
                                                                                        jne   .Lx526_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx526_53
                                                                                        jmp   .Lx526_46
.Lx526_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx526_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx526_53
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
                                                                                        jmp   .Lx526_51
.Lx526_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx526_47
                        cmp              eax, 104
                                                                                        je    .Lx526_47
                        cmp              eax, 72
                                                                                        jne   .Lx526_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx526_47
                                                                                        jmp   .Lx526_48
.Lx526_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx526_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx526_53
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
                                                                                        jmp   .Lx526_51
.Lx526_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx526_49
                        cmp              edx, 80
                                                                                        je    .Lx526_53
                                                                                        jmp   .Lx526_52
.Lx526_49:
                        cmp              edx, 80
                                                                                        je    .Lx526_52
                        cmp              ecx, 5
                                                                                        je    .Lx526_53
                        cmp              edx, 5
                                                                                        je    .Lx526_53
                        cmp              ecx, 3
                                                                                        jne   .Lx526_50
                        cmp              edx, 3
                                                                                        jne   .Lx526_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx526_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx526_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx526_51
                                                                                        jmp   .Lx526_52
.Lx526_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx526_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx526_53
.Lx526_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx526_54
.Lx526_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx526_54
.Lx526_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx526_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx526_240
                        add              rsp, 688
                                                                                        jmp   n520_call_builtin_prolog_α
.Lx526_240:
                                                                                        jmp   n498_var_ref_α
n497_call_builtin_prolog_β:
                        add              rsp, 688
                                                                                        jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n500_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n500_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx531_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx531_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_41
                        cmp              esi, 1
                                                                                        jne   .Lx531_55
                        mov              r8, rax
                                                                                        jmp   .Lx531_40
.Lx531_55:
                        cmp              esi, 2
                                                                                        jne   .Lx531_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx531_41
                        mov              r8, rax
                                                                                        jmp   .Lx531_40
.Lx531_56:
                        cmp              eax, 72
                                                                                        jne   .Lx531_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_41
                        cmp              rax, r8
                                                                                        je    .Lx531_41
                        mov              r8, rax
                                                                                        jmp   .Lx531_40
.Lx531_41:
                        lea              r9, [rbp + 768]
.Lx531_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx531_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_43
                        cmp              esi, 1
                                                                                        jne   .Lx531_57
                        mov              r9, rax
                                                                                        jmp   .Lx531_42
.Lx531_57:
                        cmp              esi, 2
                                                                                        jne   .Lx531_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx531_43
                        mov              r9, rax
                                                                                        jmp   .Lx531_42
.Lx531_58:
                        cmp              eax, 72
                                                                                        jne   .Lx531_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_43
                        cmp              rax, r9
                                                                                        je    .Lx531_43
                        mov              r9, rax
                                                                                        jmp   .Lx531_42
.Lx531_43:
                        cmp              r8, r9
                                                                                        je    .Lx531_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx531_44
                        cmp              eax, 104
                                                                                        je    .Lx531_44
                        cmp              eax, 72
                                                                                        jne   .Lx531_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx531_44
                                                                                        jmp   .Lx531_45
.Lx531_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx531_53
                        cmp              eax, 104
                                                                                        je    .Lx531_53
                        cmp              eax, 72
                                                                                        jne   .Lx531_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx531_53
                                                                                        jmp   .Lx531_46
.Lx531_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx531_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx531_53
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
                                                                                        jmp   .Lx531_51
.Lx531_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx531_47
                        cmp              eax, 104
                                                                                        je    .Lx531_47
                        cmp              eax, 72
                                                                                        jne   .Lx531_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx531_47
                                                                                        jmp   .Lx531_48
.Lx531_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx531_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx531_53
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
                                                                                        jmp   .Lx531_51
.Lx531_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx531_49
                        cmp              edx, 80
                                                                                        je    .Lx531_53
                                                                                        jmp   .Lx531_52
.Lx531_49:
                        cmp              edx, 80
                                                                                        je    .Lx531_52
                        cmp              ecx, 5
                                                                                        je    .Lx531_53
                        cmp              edx, 5
                                                                                        je    .Lx531_53
                        cmp              ecx, 3
                                                                                        jne   .Lx531_50
                        cmp              edx, 3
                                                                                        jne   .Lx531_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx531_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx531_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx531_51
                                                                                        jmp   .Lx531_52
.Lx531_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx531_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx531_53
.Lx531_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx531_54
.Lx531_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx531_54
.Lx531_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx531_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx531_240
                        add              rsp, 688
                                                                                        jmp   n520_call_builtin_prolog_α
.Lx531_240:
                                                                                        jmp   n501_lit_string_α
n500_call_builtin_prolog_β:
                        add              rsp, 688
                                                                                        jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 4
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n502_lit_string_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 16
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n503_lit_string_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "Checking ~w (~w)"
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n504_var_ref_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n505_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n506_var_ref_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n507_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 2
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n508_call_builtin_prolog_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n508_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx541_240
                        add              rsp, 688
                                                                                        jmp   proc_check_clause$2F2_ω
.Lx541_240:
                                                                                        jmp   n509_call_builtin_prolog_α
n508_call_builtin_prolog_β:
                        add              rsp, 688
                                                                                        jmp   proc_check_clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx542_240
                        add              rsp, 688
                                                                                        jmp   n520_call_builtin_prolog_α
.Lx542_240:
                                                                                        jmp   n510_call_proc_staged_α
n509_call_builtin_prolog_β:
                        add              rsp, 688
                                                                                        jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx544_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx544_21
.Lx544_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx544_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx544_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx544_23
.Lx544_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx544_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx544_24
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx544_25
.Lx544_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 640]                     # v
                        mov              rdx, qword ptr [rbp + 648]                     # v
                        call             rt_arg_stage@PLT
.Lx544_25:
                        mov              rdi, qword ptr [rip + .Lx544_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx544_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx544_3]
                        lea              rdx, [rip + .Lx544_4]
                                                                                        jmp   rax
.Lx544_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx544_2
.Lx544_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx544_2
.Lx544_1:
                        call             rt_faildescr@PLT
.Lx544_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx544_240
                        add              rsp, 688
                                                                                        jmp   n520_call_builtin_prolog_α
.Lx544_240:
                                                                                        jmp   n511_var_ref_α
n510_call_proc_staged_β:
                                                                                        jmp   n520_call_builtin_prolog_α
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n512_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n513_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n514_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n514_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx552_21
.Lx552_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
.Lx552_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx552_23
.Lx552_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx552_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx552_25
.Lx552_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 368]                     # v
                        mov              rdx, qword ptr [rbp + 376]                     # v
                        call             rt_arg_stage@PLT
.Lx552_25:
                        mov              rdi, qword ptr [rip + .Lx552_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx552_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx552_3]
                        lea              rdx, [rip + .Lx552_4]
                                                                                        jmp   rax
.Lx552_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx552_2
.Lx552_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx552_2
.Lx552_1:
                        call             rt_faildescr@PLT
.Lx552_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx552_240
                        add              rsp, 688
                                                                                        jmp   n519_suspend_α
.Lx552_240:
                                                                                        jmp   n515_var_ref_α
n514_call_proc_staged_β:
                                                                                        jmp   n519_suspend_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "$break_pc/3"
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n516_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n518_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx560_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx560_21
.Lx560_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx560_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx560_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx560_23
.Lx560_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx560_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx560_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx560_25
.Lx560_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx560_25:
                        mov              edi, 2                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx560_1
                        lea              rcx, [rip + .Lx560_3]
                        lea              rdx, [rip + .Lx560_4]
                                                                                        jmp   rax
.Lx560_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx560_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx560_2
.Lx560_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx560_2
.Lx560_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx560_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx560_2
.Lx560_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx560_2
.Lx560_1:
                        call             rt_faildescr@PLT
.Lx560_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n510_call_proc_staged_β
                                                                                        jmp   n514_call_proc_staged_β
n518_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "check_cont/3"
#-----------------------------------------------------------------------------------------------------------------------
n519_suspend_α:
                        lea              rax, [rip + n519_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_check_clause$2F2_γ
n519_suspend_β:
                                                                                        jmp   n510_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_check_clause$2F2_ω
                                                                                        jmp   proc_check_clause$2F2_ω
n520_call_builtin_prolog_β:
                                                                                        jmp   proc_check_clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_β:
                                                                                        jmp   qword ptr [rbp + 896]
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n569_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n564_call_builtin_prolog_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx571_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx571_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx571_101
.Lx571_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx571_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx571_240
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
.Lx571_240:
                                                                                        jmp   n565_lit_string_α
n564_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 7
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n566_lit_string_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 5
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n567_call_builtin_prolog_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n567_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx574_240
                        add              rsp, 96
                                                                                        jmp   n570_call_builtin_prolog_α
.Lx574_240:
                                                                                        jmp   n568_call_proc_staged_α
n567_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n570_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n568_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx576_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx576_21
.Lx576_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx576_21:
                        mov              rdi, qword ptr [rip + .Lx576_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx576_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx576_3]
                        lea              rdx, [rip + .Lx576_4]
                                                                                        jmp   rax
.Lx576_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx576_2
.Lx576_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx576_2
.Lx576_1:
                        call             rt_faildescr@PLT
.Lx576_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx576_240
                        add              rsp, 96
                                                                                        jmp   n570_call_builtin_prolog_α
.Lx576_240:
                                                                                        jmp   n569_suspend_α
n568_call_proc_staged_β:
                                                                                        jmp   n570_call_builtin_prolog_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n569_suspend_α:
                        lea              rax, [rip + n569_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n569_suspend_β:
                                                                                        jmp   n568_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n570_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n570_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_find_term$2F3_α
proc_find_term$2F3_α:
proc_find_term$2F3_α_body:
                        lea              rax, [rip + n594_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n580_call_builtin_prolog_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx620_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx620_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx620_101
.Lx620_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx620_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx620_240
                        add              rsp, 304
                                                                                        jmp   proc_find_term$2F3_ω
.Lx620_240:
                                                                                        jmp   n581_var_ref_α
n580_call_builtin_prolog_β:
                        add              rsp, 304
                                                                                        jmp   proc_find_term$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n582_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n583_lit_string_α
.Lx623_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n584_call_builtin_prolog_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n584_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx625_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx625_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx625_111
                        cmp              esi, 1
                                                                                        jne   .Lx625_112
                        mov              r8, rax
                                                                                        jmp   .Lx625_110
.Lx625_112:
                        cmp              esi, 2
                                                                                        jne   .Lx625_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx625_111
                        mov              r8, rax
                                                                                        jmp   .Lx625_110
.Lx625_113:
                        cmp              eax, 72
                                                                                        jne   .Lx625_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx625_111
                        cmp              rax, r8
                                                                                        je    .Lx625_111
                        mov              r8, rax
                                                                                        jmp   .Lx625_110
.Lx625_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx625_114
                        cmp              eax, 104
                                                                                        je    .Lx625_114
                        cmp              eax, 72
                                                                                        jne   .Lx625_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx625_114
                                                                                        jmp   .Lx625_118
.Lx625_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx625_115
                        cmp              eax, 3
                                                                                        je    .Lx625_114
                        cmp              eax, 2
                                                                                        jne   .Lx625_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx625_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx625_114
                                                                                        jmp   .Lx625_116
.Lx625_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx625_117
.Lx625_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx625_117
.Lx625_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx625_117:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx625_240
                        add              rsp, 304
                                                                                        jmp   n596_var_ref_α
.Lx625_240:
                                                                                        jmp   n585_var_ref_α
n584_call_builtin_prolog_β:
                        add              rsp, 304
                                                                                        jmp   n596_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n586_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n587_call_builtin_prolog_α
.Lx628_0:
                        .quad            .Lx628_0_s
.Lx628_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n587_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx629_2]
                                                                                        jmp   .Lx629_3
.Lx629_2:
                        .quad            .Lx629_2_s
.Lx629_2_s:
                        .string          "[]"
.Lx629_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n595_call_builtin_prolog_α
                                                                                        jmp   n588_var_ref_α
n587_call_builtin_prolog_β:
                                                                                        jmp   n595_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n589_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n590_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_prolog_α:
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
.Lx634_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx634_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_41
                        cmp              esi, 1
                                                                                        jne   .Lx634_55
                        mov              r8, rax
                                                                                        jmp   .Lx634_40
.Lx634_55:
                        cmp              esi, 2
                                                                                        jne   .Lx634_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx634_41
                        mov              r8, rax
                                                                                        jmp   .Lx634_40
.Lx634_56:
                        cmp              eax, 72
                                                                                        jne   .Lx634_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_41
                        cmp              rax, r8
                                                                                        je    .Lx634_41
                        mov              r8, rax
                                                                                        jmp   .Lx634_40
.Lx634_41:
                        lea              r9, [rbp + 928]
.Lx634_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx634_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_43
                        cmp              esi, 1
                                                                                        jne   .Lx634_57
                        mov              r9, rax
                                                                                        jmp   .Lx634_42
.Lx634_57:
                        cmp              esi, 2
                                                                                        jne   .Lx634_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx634_43
                        mov              r9, rax
                                                                                        jmp   .Lx634_42
.Lx634_58:
                        cmp              eax, 72
                                                                                        jne   .Lx634_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_43
                        cmp              rax, r9
                                                                                        je    .Lx634_43
                        mov              r9, rax
                                                                                        jmp   .Lx634_42
.Lx634_43:
                        cmp              r8, r9
                                                                                        je    .Lx634_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx634_44
                        cmp              eax, 104
                                                                                        je    .Lx634_44
                        cmp              eax, 72
                                                                                        jne   .Lx634_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx634_44
                                                                                        jmp   .Lx634_45
.Lx634_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx634_53
                        cmp              eax, 104
                                                                                        je    .Lx634_53
                        cmp              eax, 72
                                                                                        jne   .Lx634_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx634_53
                                                                                        jmp   .Lx634_46
.Lx634_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx634_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx634_53
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
                                                                                        jmp   .Lx634_51
.Lx634_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx634_47
                        cmp              eax, 104
                                                                                        je    .Lx634_47
                        cmp              eax, 72
                                                                                        jne   .Lx634_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx634_47
                                                                                        jmp   .Lx634_48
.Lx634_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx634_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx634_53
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
                                                                                        jmp   .Lx634_51
.Lx634_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx634_49
                        cmp              edx, 80
                                                                                        je    .Lx634_53
                                                                                        jmp   .Lx634_52
.Lx634_49:
                        cmp              edx, 80
                                                                                        je    .Lx634_52
                        cmp              ecx, 5
                                                                                        je    .Lx634_53
                        cmp              edx, 5
                                                                                        je    .Lx634_53
                        cmp              ecx, 3
                                                                                        jne   .Lx634_50
                        cmp              edx, 3
                                                                                        jne   .Lx634_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx634_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx634_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx634_51
                                                                                        jmp   .Lx634_52
.Lx634_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx634_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx634_53
.Lx634_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx634_54
.Lx634_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx634_54
.Lx634_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx634_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n595_call_builtin_prolog_α
                                                                                        jmp   n591_var_ref_α
n590_call_builtin_prolog_β:
                                                                                        jmp   n595_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n592_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n593_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_prolog_α:
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
.Lx639_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx639_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        cmp              esi, 1
                                                                                        jne   .Lx639_55
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_55:
                        cmp              esi, 2
                                                                                        jne   .Lx639_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_56:
                        cmp              eax, 72
                                                                                        jne   .Lx639_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        cmp              rax, r8
                                                                                        je    .Lx639_41
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_41:
                        lea              r9, [rbp + 848]
.Lx639_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx639_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        cmp              esi, 1
                                                                                        jne   .Lx639_57
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_57:
                        cmp              esi, 2
                                                                                        jne   .Lx639_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_58:
                        cmp              eax, 72
                                                                                        jne   .Lx639_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        cmp              rax, r9
                                                                                        je    .Lx639_43
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_43:
                        cmp              r8, r9
                                                                                        je    .Lx639_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_44
                        cmp              eax, 104
                                                                                        je    .Lx639_44
                        cmp              eax, 72
                                                                                        jne   .Lx639_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx639_44
                                                                                        jmp   .Lx639_45
.Lx639_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_53
                        cmp              eax, 104
                                                                                        je    .Lx639_53
                        cmp              eax, 72
                                                                                        jne   .Lx639_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx639_53
                                                                                        jmp   .Lx639_46
.Lx639_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx639_53
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
                                                                                        jmp   .Lx639_51
.Lx639_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_47
                        cmp              eax, 104
                                                                                        je    .Lx639_47
                        cmp              eax, 72
                                                                                        jne   .Lx639_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx639_47
                                                                                        jmp   .Lx639_48
.Lx639_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx639_53
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
                                                                                        jmp   .Lx639_51
.Lx639_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx639_49
                        cmp              edx, 80
                                                                                        je    .Lx639_53
                                                                                        jmp   .Lx639_52
.Lx639_49:
                        cmp              edx, 80
                                                                                        je    .Lx639_52
                        cmp              ecx, 5
                                                                                        je    .Lx639_53
                        cmp              edx, 5
                                                                                        je    .Lx639_53
                        cmp              ecx, 3
                                                                                        jne   .Lx639_50
                        cmp              edx, 3
                                                                                        jne   .Lx639_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx639_51
                                                                                        jmp   .Lx639_52
.Lx639_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx639_53
.Lx639_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx639_54
.Lx639_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx639_54
.Lx639_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx639_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n595_call_builtin_prolog_α
                                                                                        jmp   n594_suspend_α
n593_call_builtin_prolog_β:
                                                                                        jmp   n595_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n594_suspend_α:
                        lea              rax, [rip + n594_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 304
                                                                                        jmp   proc_find_term$2F3_γ
n594_suspend_β:
                                                                                        jmp   n595_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n595_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    proc_find_term$2F3_ω
                                                                                        jmp   n596_var_ref_α
n595_call_builtin_prolog_β:
                                                                                        jmp   proc_find_term$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n597_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_integer_α:
                        mov              qword ptr [rbp + 736], 3                       # result
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n598_lit_integer_α
.Lx645_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_integer_α:
                        mov              qword ptr [rbp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n599_call_builtin_prolog_α
.Lx646_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n599_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx647_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx647_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_111
                        cmp              esi, 1
                                                                                        jne   .Lx647_112
                        mov              r8, rax
                                                                                        jmp   .Lx647_110
.Lx647_112:
                        cmp              esi, 2
                                                                                        jne   .Lx647_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_111
                        mov              r8, rax
                                                                                        jmp   .Lx647_110
.Lx647_113:
                        cmp              eax, 72
                                                                                        jne   .Lx647_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_111
                        cmp              rax, r8
                                                                                        je    .Lx647_111
                        mov              r8, rax
                                                                                        jmp   .Lx647_110
.Lx647_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_114
                        cmp              eax, 104
                                                                                        je    .Lx647_114
                        cmp              eax, 72
                                                                                        jne   .Lx647_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx647_114
                                                                                        jmp   .Lx647_118
.Lx647_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        jne   .Lx647_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx647_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx647_115
                                                                                        jmp   .Lx647_114
.Lx647_119:
                        cmp              eax, 3
                                                                                        jne   .Lx647_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx647_114
                                                                                        jmp   .Lx647_115
.Lx647_120:
                        cmp              eax, 2
                                                                                        jne   .Lx647_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx647_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx647_114
                                                                                        jmp   .Lx647_115
.Lx647_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx647_117
.Lx647_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx647_117
.Lx647_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx647_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n619_call_builtin_prolog_α
                                                                                        jmp   n600_var_ref_α
n599_call_builtin_prolog_β:
                                                                                        jmp   n619_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n601_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n602_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n603_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx654_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx654_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_61
                        cmp              esi, 1
                                                                                        jne   .Lx654_62
                        mov              r8, rax
                                                                                        jmp   .Lx654_60
.Lx654_62:
                        cmp              esi, 2
                                                                                        jne   .Lx654_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_61
                        mov              r8, rax
                                                                                        jmp   .Lx654_60
.Lx654_63:
                        cmp              eax, 72
                                                                                        jne   .Lx654_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_61
                        cmp              rax, r8
                                                                                        je    .Lx654_61
                        mov              r8, rax
                                                                                        jmp   .Lx654_60
.Lx654_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_80
                        cmp              eax, 104
                                                                                        je    .Lx654_80
                        cmp              eax, 72
                                                                                        jne   .Lx654_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx654_80
                                                                                        jmp   .Lx654_74
.Lx654_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx654_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx654_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx654_73
                        lea              r9, [rbp + 592]
.Lx654_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx654_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_65
                        cmp              esi, 1
                                                                                        jne   .Lx654_66
                        mov              r9, rax
                                                                                        jmp   .Lx654_64
.Lx654_66:
                        cmp              esi, 2
                                                                                        jne   .Lx654_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_65
                        mov              r9, rax
                                                                                        jmp   .Lx654_64
.Lx654_67:
                        cmp              eax, 72
                                                                                        jne   .Lx654_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_65
                        cmp              rax, r9
                                                                                        je    .Lx654_65
                        mov              r9, rax
                                                                                        jmp   .Lx654_64
.Lx654_65:
                        lea              rcx, [rbp + 608]
.Lx654_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx654_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx654_69
                        cmp              esi, 1
                                                                                        jne   .Lx654_70
                        mov              rcx, rax
                                                                                        jmp   .Lx654_68
.Lx654_70:
                        cmp              esi, 2
                                                                                        jne   .Lx654_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_69
                        mov              rcx, rax
                                                                                        jmp   .Lx654_68
.Lx654_71:
                        cmp              eax, 72
                                                                                        jne   .Lx654_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx654_69
                        cmp              rax, rcx
                                                                                        je    .Lx654_69
                        mov              rcx, rax
                                                                                        jmp   .Lx654_68
.Lx654_69:
                        cmp              r9, rcx
                                                                                        je    .Lx654_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_75
                        cmp              eax, 104
                                                                                        je    .Lx654_75
                        cmp              eax, 72
                                                                                        jne   .Lx654_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx654_75
                                                                                        jmp   .Lx654_72
.Lx654_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_76
                        cmp              eax, 104
                                                                                        je    .Lx654_76
                        cmp              eax, 72
                                                                                        jne   .Lx654_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx654_76
                                                                                        jmp   .Lx654_72
.Lx654_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx654_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx654_72
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
                                                                                        jmp   .Lx654_77
.Lx654_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx654_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx654_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx654_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx654_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx654_72
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
                        lea              r9, [rbp + 592]
.Lx654_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx654_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_82
                        cmp              esi, 1
                                                                                        jne   .Lx654_83
                        mov              r9, rax
                                                                                        jmp   .Lx654_81
.Lx654_83:
                        cmp              esi, 2
                                                                                        jne   .Lx654_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_82
                        mov              r9, rax
                                                                                        jmp   .Lx654_81
.Lx654_84:
                        cmp              eax, 72
                                                                                        jne   .Lx654_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_82
                        cmp              rax, r9
                                                                                        je    .Lx654_82
                        mov              r9, rax
                                                                                        jmp   .Lx654_81
.Lx654_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_85
                        cmp              eax, 104
                                                                                        je    .Lx654_85
                        cmp              eax, 72
                                                                                        jne   .Lx654_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx654_85
                                                                                        jmp   .Lx654_86
.Lx654_85:
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
                                                                                        jmp   .Lx654_87
.Lx654_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx654_87:
                        lea              rcx, [rbp + 608]
.Lx654_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx654_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx654_89
                        cmp              esi, 1
                                                                                        jne   .Lx654_90
                        mov              rcx, rax
                                                                                        jmp   .Lx654_88
.Lx654_90:
                        cmp              esi, 2
                                                                                        jne   .Lx654_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_89
                        mov              rcx, rax
                                                                                        jmp   .Lx654_88
.Lx654_91:
                        cmp              eax, 72
                                                                                        jne   .Lx654_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx654_89
                        cmp              rax, rcx
                                                                                        je    .Lx654_89
                        mov              rcx, rax
                                                                                        jmp   .Lx654_88
.Lx654_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_92
                        cmp              eax, 104
                                                                                        je    .Lx654_92
                        cmp              eax, 72
                                                                                        jne   .Lx654_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx654_92
                                                                                        jmp   .Lx654_93
.Lx654_92:
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
                                                                                        jmp   .Lx654_94
.Lx654_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx654_94:
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
                                                                                        jmp   .Lx654_77
.Lx654_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx654_77
.Lx654_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx654_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n619_call_builtin_prolog_α
                                                                                        jmp   n604_var_ref_α
n603_call_builtin_prolog_β:
                                                                                        jmp   n619_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n605_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n606_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n606_call_builtin_prolog_α:
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
.Lx659_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx659_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx659_41
                        cmp              esi, 1
                                                                                        jne   .Lx659_55
                        mov              r8, rax
                                                                                        jmp   .Lx659_40
.Lx659_55:
                        cmp              esi, 2
                                                                                        jne   .Lx659_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx659_41
                        mov              r8, rax
                                                                                        jmp   .Lx659_40
.Lx659_56:
                        cmp              eax, 72
                                                                                        jne   .Lx659_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx659_41
                        cmp              rax, r8
                                                                                        je    .Lx659_41
                        mov              r8, rax
                                                                                        jmp   .Lx659_40
.Lx659_41:
                        lea              r9, [rbp + 496]
.Lx659_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx659_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx659_43
                        cmp              esi, 1
                                                                                        jne   .Lx659_57
                        mov              r9, rax
                                                                                        jmp   .Lx659_42
.Lx659_57:
                        cmp              esi, 2
                                                                                        jne   .Lx659_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx659_43
                        mov              r9, rax
                                                                                        jmp   .Lx659_42
.Lx659_58:
                        cmp              eax, 72
                                                                                        jne   .Lx659_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx659_43
                        cmp              rax, r9
                                                                                        je    .Lx659_43
                        mov              r9, rax
                                                                                        jmp   .Lx659_42
.Lx659_43:
                        cmp              r8, r9
                                                                                        je    .Lx659_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx659_44
                        cmp              eax, 104
                                                                                        je    .Lx659_44
                        cmp              eax, 72
                                                                                        jne   .Lx659_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx659_44
                                                                                        jmp   .Lx659_45
.Lx659_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx659_53
                        cmp              eax, 104
                                                                                        je    .Lx659_53
                        cmp              eax, 72
                                                                                        jne   .Lx659_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx659_53
                                                                                        jmp   .Lx659_46
.Lx659_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx659_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx659_53
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
                                                                                        jmp   .Lx659_51
.Lx659_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx659_47
                        cmp              eax, 104
                                                                                        je    .Lx659_47
                        cmp              eax, 72
                                                                                        jne   .Lx659_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx659_47
                                                                                        jmp   .Lx659_48
.Lx659_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx659_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx659_53
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
                                                                                        jmp   .Lx659_51
.Lx659_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx659_49
                        cmp              edx, 80
                                                                                        je    .Lx659_53
                                                                                        jmp   .Lx659_52
.Lx659_49:
                        cmp              edx, 80
                                                                                        je    .Lx659_52
                        cmp              ecx, 5
                                                                                        je    .Lx659_53
                        cmp              edx, 5
                                                                                        je    .Lx659_53
                        cmp              ecx, 3
                                                                                        jne   .Lx659_50
                        cmp              edx, 3
                                                                                        jne   .Lx659_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx659_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx659_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx659_51
                                                                                        jmp   .Lx659_52
.Lx659_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx659_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx659_53
.Lx659_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx659_54
.Lx659_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx659_54
.Lx659_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx659_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n619_call_builtin_prolog_α
                                                                                        jmp   n607_var_ref_α
n606_call_builtin_prolog_β:
                                                                                        jmp   n619_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n608_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n609_call_builtin_prolog_α:
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
.Lx664_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx664_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx664_41
                        cmp              esi, 1
                                                                                        jne   .Lx664_55
                        mov              r8, rax
                                                                                        jmp   .Lx664_40
.Lx664_55:
                        cmp              esi, 2
                                                                                        jne   .Lx664_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx664_41
                        mov              r8, rax
                                                                                        jmp   .Lx664_40
.Lx664_56:
                        cmp              eax, 72
                                                                                        jne   .Lx664_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx664_41
                        cmp              rax, r8
                                                                                        je    .Lx664_41
                        mov              r8, rax
                                                                                        jmp   .Lx664_40
.Lx664_41:
                        lea              r9, [rbp + 416]
.Lx664_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx664_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx664_43
                        cmp              esi, 1
                                                                                        jne   .Lx664_57
                        mov              r9, rax
                                                                                        jmp   .Lx664_42
.Lx664_57:
                        cmp              esi, 2
                                                                                        jne   .Lx664_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx664_43
                        mov              r9, rax
                                                                                        jmp   .Lx664_42
.Lx664_58:
                        cmp              eax, 72
                                                                                        jne   .Lx664_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx664_43
                        cmp              rax, r9
                                                                                        je    .Lx664_43
                        mov              r9, rax
                                                                                        jmp   .Lx664_42
.Lx664_43:
                        cmp              r8, r9
                                                                                        je    .Lx664_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx664_44
                        cmp              eax, 104
                                                                                        je    .Lx664_44
                        cmp              eax, 72
                                                                                        jne   .Lx664_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx664_44
                                                                                        jmp   .Lx664_45
.Lx664_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx664_53
                        cmp              eax, 104
                                                                                        je    .Lx664_53
                        cmp              eax, 72
                                                                                        jne   .Lx664_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx664_53
                                                                                        jmp   .Lx664_46
.Lx664_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx664_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx664_53
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
                                                                                        jmp   .Lx664_51
.Lx664_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx664_47
                        cmp              eax, 104
                                                                                        je    .Lx664_47
                        cmp              eax, 72
                                                                                        jne   .Lx664_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx664_47
                                                                                        jmp   .Lx664_48
.Lx664_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx664_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx664_53
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
                                                                                        jmp   .Lx664_51
.Lx664_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx664_49
                        cmp              edx, 80
                                                                                        je    .Lx664_53
                                                                                        jmp   .Lx664_52
.Lx664_49:
                        cmp              edx, 80
                                                                                        je    .Lx664_52
                        cmp              ecx, 5
                                                                                        je    .Lx664_53
                        cmp              edx, 5
                                                                                        je    .Lx664_53
                        cmp              ecx, 3
                                                                                        jne   .Lx664_50
                        cmp              edx, 3
                                                                                        jne   .Lx664_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx664_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx664_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx664_51
                                                                                        jmp   .Lx664_52
.Lx664_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx664_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx664_53
.Lx664_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx664_54
.Lx664_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx664_54
.Lx664_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx664_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n619_call_builtin_prolog_α
                                                                                        jmp   n610_var_ref_α
n609_call_builtin_prolog_β:
                                                                                        jmp   n619_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n611_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n612_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n613_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n613_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn672:              .string          "$arg"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn672]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n619_call_builtin_prolog_α
                                                                                        jmp   n614_var_ref_α
n613_call_builtin_prolog_β:
                                                                                        jmp   n619_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n615_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n616_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n617_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n617_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx680_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx680_21
.Lx680_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx680_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx680_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx680_23
.Lx680_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx680_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx680_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx680_25
.Lx680_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx680_25:
                        mov              edi, 13                                        # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx680_1
                        lea              rcx, [rip + .Lx680_3]
                        lea              rdx, [rip + .Lx680_4]
                                                                                        jmp   rax
.Lx680_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx680_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx680_2
.Lx680_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx680_2
.Lx680_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx680_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx680_2
.Lx680_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx680_2
.Lx680_1:
                        call             rt_faildescr@PLT
.Lx680_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n619_call_builtin_prolog_α
                                                                                        jmp   n618_suspend_α
n617_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx680_0:
                        .quad            .Lx680_0_s
.Lx680_0_s:
                        .string          "find_term/3"
#-----------------------------------------------------------------------------------------------------------------------
n618_suspend_α:
                        lea              rax, [rip + n618_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_find_term$2F3_γ
n618_suspend_β:
                                                                                        jmp   n617_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n619_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_find_term$2F3_ω
                                                                                        jmp   proc_find_term$2F3_ω
n619_call_builtin_prolog_β:
                                                                                        jmp   proc_find_term$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1168]
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_c$2F1_α
proc_c$2F1_α:
proc_c$2F1_α_body:
                        lea              rax, [rip + n689_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
#-----------------------------------------------------------------------------------------------------------------------
n684_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx771_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx771_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx771_101
.Lx771_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx771_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx771_240
                        add              rsp, 32
                                                                                        jmp   proc_c$2F1_ω
.Lx771_240:
                                                                                        jmp   n685_var_ref_α
n684_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n686_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_string_α:
                        mov              qword ptr [rbp + 2400], 2                      # result
                        mov              dword ptr [rbp + 2404], 5
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n687_call_builtin_prolog_α
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          "conj1"
#-----------------------------------------------------------------------------------------------------------------------
n687_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2352]
                        mov              rsi, qword ptr [rip + .Lx775_2]
                                                                                        jmp   .Lx775_3
.Lx775_2:
                        .quad            .Lx775_2_s
.Lx775_2_s:
                        .string          "conj1"
.Lx775_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx775_240
                        add              rsp, 32
                                                                                        jmp   n690_call_builtin_prolog_α
.Lx775_240:
                                                                                        jmp   n688_call_proc_staged_α
n687_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   n690_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n688_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx777_2
.Lx777_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx777_240
                        add              rsp, 32
                                                                                        jmp   n690_call_builtin_prolog_α
.Lx777_240:
                                                                                        jmp   n689_suspend_α
n688_call_proc_staged_β:
                                                                                        jmp   n690_call_builtin_prolog_α
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n689_suspend_α:
                        lea              rax, [rip + n689_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 32
                                                                                        jmp   proc_c$2F1_γ
n689_suspend_β:
                                                                                        jmp   n688_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n690_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n691_var_ref_α
n690_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n692_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:
                        mov              qword ptr [rbp + 2256], 2                      # result
                        mov              dword ptr [rbp + 2260], 5
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n693_call_builtin_prolog_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "conj2"
#-----------------------------------------------------------------------------------------------------------------------
n693_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              rsi, qword ptr [rip + .Lx784_2]
                                                                                        jmp   .Lx784_3
.Lx784_2:
                        .quad            .Lx784_2_s
.Lx784_2_s:
                        .string          "conj2"
.Lx784_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        je    n698_call_builtin_prolog_α
                                                                                        jmp   n694_call_proc_staged_α
n693_call_builtin_prolog_β:
                                                                                        jmp   n698_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n694_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx786_2
.Lx786_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 104
                                                                                        je    n698_call_builtin_prolog_α
                                                                                        jmp   n695_call_proc_staged_α
n694_call_proc_staged_β:
                                                                                        jmp   n698_call_builtin_prolog_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n695_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx788_2
.Lx788_2:
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n694_call_proc_staged_β
                                                                                        jmp   n696_call_proc_staged_α
n695_call_proc_staged_β:
                                                                                        jmp   n694_call_proc_staged_β
.Lx788_0:
                        .quad            .Lx788_0_s
.Lx788_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n696_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx790_2
.Lx790_2:
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 104
                                                                                        je    n695_call_proc_staged_β
                                                                                        jmp   n697_suspend_α
n696_call_proc_staged_β:
                                                                                        jmp   n695_call_proc_staged_β
.Lx790_0:
                        .quad            .Lx790_0_s
.Lx790_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n697_suspend_α:
                        lea              rax, [rip + n697_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n697_suspend_β:
                                                                                        jmp   n696_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n698_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n699_var_ref_α
n698_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n699_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n700_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_string_α:
                        mov              qword ptr [rbp + 2048], 2                      # result
                        mov              dword ptr [rbp + 2052], 5
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n701_call_builtin_prolog_α
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          "disj1"
#-----------------------------------------------------------------------------------------------------------------------
n701_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              rsi, qword ptr [rip + .Lx797_2]
                                                                                        jmp   .Lx797_3
.Lx797_2:
                        .quad            .Lx797_2_s
.Lx797_2_s:
                        .string          "disj1"
.Lx797_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 104
                                                                                        je    n704_call_builtin_prolog_α
                                                                                        jmp   n702_call_proc_staged_α
n701_call_builtin_prolog_β:
                                                                                        jmp   n704_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n702_call_proc_staged_α:
                        mov              qword ptr [rbp + 1952], 0
                        mov              edi, 4                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx799_1
                        lea              rcx, [rip + .Lx799_3]
                        lea              rdx, [rip + .Lx799_4]
                                                                                        jmp   rax
.Lx799_3:
                        mov              qword ptr [rbp + 1960], rsp
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx799_5
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx799_2
.Lx799_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx799_2
.Lx799_4:
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx799_6
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx799_2
.Lx799_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx799_2
.Lx799_1:
                        call             rt_faildescr@PLT
.Lx799_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n704_call_builtin_prolog_α
                                                                                        jmp   n703_suspend_α
n702_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1960]
                                                                                        jmp   qword ptr [rsp]
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n703_suspend_α:
                        lea              rax, [rip + n703_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n703_suspend_β:
                                                                                        jmp   n702_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n704_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n705_var_ref_α
n704_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n706_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 5
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n707_call_builtin_prolog_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "disj2"
#-----------------------------------------------------------------------------------------------------------------------
n707_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              rsi, qword ptr [rip + .Lx806_2]
                                                                                        jmp   .Lx806_3
.Lx806_2:
                        .quad            .Lx806_2_s
.Lx806_2_s:
                        .string          "disj2"
.Lx806_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n710_call_builtin_prolog_α
                                                                                        jmp   n708_call_proc_staged_α
n707_call_builtin_prolog_β:
                                                                                        jmp   n710_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n708_call_proc_staged_α:
                        mov              qword ptr [rbp + 1792], 0
                        mov              edi, 0                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx808_1
                        lea              rcx, [rip + .Lx808_3]
                        lea              rdx, [rip + .Lx808_4]
                                                                                        jmp   rax
.Lx808_3:
                        mov              qword ptr [rbp + 1800], rsp
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx808_5
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx808_2
.Lx808_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx808_2
.Lx808_4:
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx808_6
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx808_2
.Lx808_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx808_2
.Lx808_1:
                        call             rt_faildescr@PLT
.Lx808_2:
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 104
                                                                                        je    n710_call_builtin_prolog_α
                                                                                        jmp   n709_suspend_α
n708_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1800]
                                                                                        jmp   qword ptr [rsp]
.Lx808_0:
                        .quad            .Lx808_0_s
.Lx808_0_s:
                        .string          "$disj1/0"
#-----------------------------------------------------------------------------------------------------------------------
n709_suspend_α:
                        lea              rax, [rip + n709_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n709_suspend_β:
                                                                                        jmp   n708_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n710_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n711_var_ref_α
n710_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n712_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 4
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n713_call_builtin_prolog_α
.Lx814_0:
                        .quad            .Lx814_0_s
.Lx814_0_s:
                        .string          "ite1"
#-----------------------------------------------------------------------------------------------------------------------
n713_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx815_2]
                                                                                        jmp   .Lx815_3
.Lx815_2:
                        .quad            .Lx815_2_s
.Lx815_2_s:
                        .string          "ite1"
.Lx815_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n718_call_builtin_prolog_α
                                                                                        jmp   n714_call_proc_staged_α
n713_call_builtin_prolog_β:
                                                                                        jmp   n718_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n714_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx817_2
.Lx817_2:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n716_call_proc_staged_α
                                                                                        jmp   n715_call_proc_staged_α
n714_call_proc_staged_β:
                                                                                        jmp   n716_call_proc_staged_α
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n715_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx819_2
.Lx819_2:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n718_call_builtin_prolog_α
                                                                                        jmp   n717_suspend_α
n715_call_proc_staged_β:
                                                                                        jmp   n718_call_builtin_prolog_α
.Lx819_0:
                        .quad            .Lx819_0_s
.Lx819_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n716_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx821_2
.Lx821_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n718_call_builtin_prolog_α
                                                                                        jmp   n717_suspend_α
n716_call_proc_staged_β:
                                                                                        jmp   n718_call_builtin_prolog_α
.Lx821_0:
                        .quad            .Lx821_0_s
.Lx821_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n717_suspend_α:
                        lea              rax, [rip + n717_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n717_suspend_β:
                                                                                        jmp   n718_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n718_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1536]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n719_var_ref_α
n718_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n719_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n720_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        mov              qword ptr [rbp + 1504], 2                      # result
                        mov              dword ptr [rbp + 1508], 3
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n721_call_builtin_prolog_α
.Lx827_0:
                        .quad            .Lx827_0_s
.Lx827_0_s:
                        .string          "it1"
#-----------------------------------------------------------------------------------------------------------------------
n721_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1456]
                        mov              rsi, qword ptr [rip + .Lx828_2]
                                                                                        jmp   .Lx828_3
.Lx828_2:
                        .quad            .Lx828_2_s
.Lx828_2_s:
                        .string          "it1"
.Lx828_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n725_call_builtin_prolog_α
                                                                                        jmp   n722_call_proc_staged_α
n721_call_builtin_prolog_β:
                                                                                        jmp   n725_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n722_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx830_2
.Lx830_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        je    n725_call_builtin_prolog_α
                                                                                        jmp   n723_call_proc_staged_α
n722_call_proc_staged_β:
                                                                                        jmp   n725_call_builtin_prolog_α
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n723_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx832_2
.Lx832_2:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n725_call_builtin_prolog_α
                                                                                        jmp   n724_suspend_α
n723_call_proc_staged_β:
                                                                                        jmp   n725_call_builtin_prolog_α
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n724_suspend_α:
                        lea              rax, [rip + n724_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n724_suspend_β:
                                                                                        jmp   n725_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n725_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n726_var_ref_α
n725_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n727_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 3
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n728_call_builtin_prolog_α
.Lx838_0:
                        .quad            .Lx838_0_s
.Lx838_0_s:
                        .string          "it2"
#-----------------------------------------------------------------------------------------------------------------------
n728_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              rsi, qword ptr [rip + .Lx839_2]
                                                                                        jmp   .Lx839_3
.Lx839_2:
                        .quad            .Lx839_2_s
.Lx839_2_s:
                        .string          "it2"
.Lx839_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n733_call_builtin_prolog_α
                                                                                        jmp   n729_call_proc_staged_α
n728_call_builtin_prolog_β:
                                                                                        jmp   n733_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n729_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx841_2
.Lx841_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    n733_call_builtin_prolog_α
                                                                                        jmp   n730_call_proc_staged_α
n729_call_proc_staged_β:
                                                                                        jmp   n733_call_builtin_prolog_α
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n730_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx843_2
.Lx843_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n733_call_builtin_prolog_α
                                                                                        jmp   n731_call_proc_staged_α
n730_call_proc_staged_β:
                                                                                        jmp   n733_call_builtin_prolog_α
.Lx843_0:
                        .quad            .Lx843_0_s
.Lx843_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n731_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx845_2
.Lx845_2:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n730_call_proc_staged_β
                                                                                        jmp   n732_suspend_α
n731_call_proc_staged_β:
                                                                                        jmp   n730_call_proc_staged_β
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n732_suspend_α:
                        lea              rax, [rip + n732_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n732_suspend_β:
                                                                                        jmp   n733_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n733_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n734_var_ref_α
n733_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n734_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n735_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:
                        mov              qword ptr [rbp + 1088], 2                      # result
                        mov              dword ptr [rbp + 1092], 3
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n736_call_builtin_prolog_α
.Lx851_0:
                        .quad            .Lx851_0_s
.Lx851_0_s:
                        .string          "it3"
#-----------------------------------------------------------------------------------------------------------------------
n736_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx852_2]
                                                                                        jmp   .Lx852_3
.Lx852_2:
                        .quad            .Lx852_2_s
.Lx852_2_s:
                        .string          "it3"
.Lx852_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n740_call_builtin_prolog_α
                                                                                        jmp   n737_call_proc_staged_α
n736_call_builtin_prolog_β:
                                                                                        jmp   n740_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n737_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx854_2
.Lx854_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n740_call_builtin_prolog_α
                                                                                        jmp   n738_call_proc_staged_α
n737_call_proc_staged_β:
                                                                                        jmp   n740_call_builtin_prolog_α
.Lx854_0:
                        .quad            .Lx854_0_s
.Lx854_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n738_call_proc_staged_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              edi, 3                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx856_1
                        lea              rcx, [rip + .Lx856_3]
                        lea              rdx, [rip + .Lx856_4]
                                                                                        jmp   rax
.Lx856_3:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx856_5
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx856_2
.Lx856_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx856_2
.Lx856_4:
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx856_6
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx856_2
.Lx856_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx856_2
.Lx856_1:
                        call             rt_faildescr@PLT
.Lx856_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n740_call_builtin_prolog_α
                                                                                        jmp   n739_suspend_α
n738_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 968]
                                                                                        jmp   qword ptr [rsp]
.Lx856_0:
                        .quad            .Lx856_0_s
.Lx856_0_s:
                        .string          "$disj2/0"
#-----------------------------------------------------------------------------------------------------------------------
n739_suspend_α:
                        lea              rax, [rip + n739_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n739_suspend_β:
                                                                                        jmp   n740_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n740_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n741_var_ref_α
n740_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n741_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        mov              qword ptr [rbp + 880], 2                       # result
                        mov              dword ptr [rbp + 884], 3
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n743_call_builtin_prolog_α
.Lx862_0:
                        .quad            .Lx862_0_s
.Lx862_0_s:
                        .string          "it4"
#-----------------------------------------------------------------------------------------------------------------------
n743_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              rsi, qword ptr [rip + .Lx863_2]
                                                                                        jmp   .Lx863_3
.Lx863_2:
                        .quad            .Lx863_2_s
.Lx863_2_s:
                        .string          "it4"
.Lx863_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n749_call_builtin_prolog_α
                                                                                        jmp   n744_call_proc_staged_α
n743_call_builtin_prolog_β:
                                                                                        jmp   n749_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n744_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx865_2
.Lx865_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n749_call_builtin_prolog_α
                                                                                        jmp   n745_call_proc_staged_α
n744_call_proc_staged_β:
                                                                                        jmp   n749_call_builtin_prolog_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n745_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx867_2
.Lx867_2:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n747_call_proc_staged_α
                                                                                        jmp   n746_call_proc_staged_α
n745_call_proc_staged_β:
                                                                                        jmp   n747_call_proc_staged_α
.Lx867_0:
                        .quad            .Lx867_0_s
.Lx867_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n746_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx869_2
.Lx869_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n749_call_builtin_prolog_α
                                                                                        jmp   n748_suspend_α
n746_call_proc_staged_β:
                                                                                        jmp   n749_call_builtin_prolog_α
.Lx869_0:
                        .quad            .Lx869_0_s
.Lx869_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n747_call_proc_staged_α:
                        call             proc_d$2F0_dcα
                                                                                        jmp   .Lx871_2
.Lx871_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n749_call_builtin_prolog_α
                                                                                        jmp   n748_suspend_α
n747_call_proc_staged_β:
                                                                                        jmp   n749_call_builtin_prolog_α
.Lx871_0:
                        .quad            .Lx871_0_s
.Lx871_0_s:
                        .string          "d/0"
#-----------------------------------------------------------------------------------------------------------------------
n748_suspend_α:
                        lea              rax, [rip + n748_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n748_suspend_β:
                                                                                        jmp   n749_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n749_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n750_var_ref_α
n749_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n750_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n751_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 3
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n752_call_builtin_prolog_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "it5"
#-----------------------------------------------------------------------------------------------------------------------
n752_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              rsi, qword ptr [rip + .Lx878_2]
                                                                                        jmp   .Lx878_3
.Lx878_2:
                        .quad            .Lx878_2_s
.Lx878_2_s:
                        .string          "it5"
.Lx878_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n757_call_builtin_prolog_α
                                                                                        jmp   n753_call_proc_staged_α
n752_call_builtin_prolog_β:
                                                                                        jmp   n757_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n753_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx880_2
.Lx880_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n757_call_builtin_prolog_α
                                                                                        jmp   n754_call_proc_staged_α
n753_call_proc_staged_β:
                                                                                        jmp   n757_call_builtin_prolog_α
.Lx880_0:
                        .quad            .Lx880_0_s
.Lx880_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx882_2
.Lx882_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n757_call_builtin_prolog_α
                                                                                        jmp   n755_call_proc_staged_α
n754_call_proc_staged_β:
                                                                                        jmp   n757_call_builtin_prolog_α
.Lx882_0:
                        .quad            .Lx882_0_s
.Lx882_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n755_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx884_2
.Lx884_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n757_call_builtin_prolog_α
                                                                                        jmp   n756_suspend_α
n755_call_proc_staged_β:
                                                                                        jmp   n757_call_builtin_prolog_α
.Lx884_0:
                        .quad            .Lx884_0_s
.Lx884_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n756_suspend_α:
                        lea              rax, [rip + n756_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n756_suspend_β:
                                                                                        jmp   n757_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n757_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n758_var_ref_α
n757_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n758_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 3
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n760_call_builtin_prolog_α
.Lx890_0:
                        .quad            .Lx890_0_s
.Lx890_0_s:
                        .string          "it6"
#-----------------------------------------------------------------------------------------------------------------------
n760_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx891_2]
                                                                                        jmp   .Lx891_3
.Lx891_2:
                        .quad            .Lx891_2_s
.Lx891_2_s:
                        .string          "it6"
.Lx891_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n764_call_builtin_prolog_α
                                                                                        jmp   n761_call_proc_staged_α
n760_call_builtin_prolog_β:
                                                                                        jmp   n764_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n761_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx893_2
.Lx893_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n764_call_builtin_prolog_α
                                                                                        jmp   n762_call_proc_staged_α
n761_call_proc_staged_β:
                                                                                        jmp   n764_call_builtin_prolog_α
.Lx893_0:
                        .quad            .Lx893_0_s
.Lx893_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n762_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx895_2
.Lx895_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n763_suspend_α
                                                                                        jmp   n764_call_builtin_prolog_α
n762_call_proc_staged_β:
                                                                                        jmp   n763_suspend_α
.Lx895_0:
                        .quad            .Lx895_0_s
.Lx895_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n763_suspend_α:
                        lea              rax, [rip + n763_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n763_suspend_β:
                                                                                        jmp   n764_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n764_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n765_var_ref_α
n764_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n765_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n766_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 4
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n767_call_builtin_prolog_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "not1"
#-----------------------------------------------------------------------------------------------------------------------
n767_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx902_2]
                                                                                        jmp   .Lx902_3
.Lx902_2:
                        .quad            .Lx902_2_s
.Lx902_2_s:
                        .string          "not1"
.Lx902_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n770_call_builtin_prolog_α
                                                                                        jmp   n768_call_proc_staged_α
n767_call_builtin_prolog_β:
                                                                                        jmp   n770_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n768_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx904_2
.Lx904_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n769_suspend_α
                                                                                        jmp   n770_call_builtin_prolog_α
n768_call_proc_staged_β:
                                                                                        jmp   n769_suspend_α
.Lx904_0:
                        .quad            .Lx904_0_s
.Lx904_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n769_suspend_α:
                        lea              rax, [rip + n769_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n769_suspend_β:
                                                                                        jmp   n770_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n770_call_builtin_prolog_α:
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
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   proc_c$2F1_ω
n770_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_β:
                                                                                        jmp   qword ptr [rbp + 2416]
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_c$2F0_α
proc_c$2F0_α:
proc_c$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n908_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx912_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx912_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx912_101
.Lx912_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx912_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx912_240
                        add              rsp, 32
                                                                                        jmp   proc_c$2F0_ω
.Lx912_240:
                                                                                        jmp   n909_move_label_α
n908_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n909_move_label_α:
                        lea              rax, [rip + n911_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_c$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n910_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n910_disjunction_β:
                                                                                        jmp   proc_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n911_call_builtin_prolog_α:
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
                                                                                        je    proc_c$2F0_ω
                                                                                        jmp   proc_c$2F0_ω
n911_call_builtin_prolog_β:
                                                                                        jmp   proc_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_β:
                                                                                        jmp   n910_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx918_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx918_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_c$2F0_α_body
.Lx918_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx918_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a$2F0_α
proc_a$2F0_α:
proc_a$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n919_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx923_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx923_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx923_101
.Lx923_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx923_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx923_240
                        add              rsp, 32
                                                                                        jmp   proc_a$2F0_ω
.Lx923_240:
                                                                                        jmp   n920_move_label_α
n919_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n920_move_label_α:
                        lea              rax, [rip + n922_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_a$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n921_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n921_disjunction_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n922_call_builtin_prolog_α:
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
                                                                                        je    proc_a$2F0_ω
                                                                                        jmp   proc_a$2F0_ω
n922_call_builtin_prolog_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_β:
                                                                                        jmp   n921_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx929_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx929_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_a$2F0_α_body
.Lx929_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx929_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$disj1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$disj1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "ok_literal/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_ok_literal$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1360
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "check_cont/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_check_cont$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2128
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
.Lstartup_pname5:       .string          "test_strace/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_test_strace$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "term_in_clause/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_term_in_clause$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 848
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "b/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_b$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_b$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "chk/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_chk$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "d/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_d$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_d$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "check_clause/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_check_clause$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 976
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "find_term/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_find_term$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1264
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "c/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_c$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 2432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "c/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_c$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_c$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "a/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_a$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_a$2F0_dcα]
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n930_lit_string_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 80], 2                        # result
                        mov              dword ptr [rsp + 84], 7
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n931_lit_string_α
.Lx934_0:
                        .quad            .Lx934_0_s
.Lx934_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n931_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n932_call_builtin_prolog_α
.Lx935_0:
                        .quad            .Lx935_0_s
.Lx935_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n932_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 32]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx936_240
                        add              rsp, 96
                                                                                        jmp   main_ω
.Lx936_240:
                                                                                        jmp   n933_call_proc_staged_α
n932_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n933_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx938_20
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx938_21
.Lx938_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
.Lx938_21:
                        mov              rdi, qword ptr [rip + .Lx938_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx938_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx938_3]
                        lea              rdx, [rip + .Lx938_4]
                                                                                        jmp   rax
.Lx938_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx938_2
.Lx938_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx938_2
.Lx938_1:
                        call             rt_faildescr@PLT
.Lx938_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx938_240
                        add              rsp, 96
                                                                                        jmp   main_ω
.Lx938_240:
                        add              rsp, 96
                                                                                        jmp   main_γ
n933_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx938_0:
                        .quad            .Lx938_0_s
.Lx938_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
