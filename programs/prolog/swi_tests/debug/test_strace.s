                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F0_α
proc_$disj1$2F0_α:
                        .global          proc_$disj1$2F0_α
                        .global          proc_$disj1$2F0_β
                        .global          proc_$disj1$2F0_γ
                        .global          proc_$disj1$2F0_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj1$2F0_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx10_101
.Lx10_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx10_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n1_call_proc_staged_α
n0_op11_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx12_2
.Lx12_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n3_op11_α
                                                                                        jmp   n2_suspend_α
n1_call_proc_staged_β:
                                                                                        jmp   n3_op11_α
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
n3_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n4_call_proc_staged_α
n3_op11_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx17_2
.Lx17_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n5_suspend_α
n4_call_proc_staged_β:
                                                                                        jmp   n6_op11_α
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
n6_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n7_call_proc_staged_α
n6_op11_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx22_2
.Lx22_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n9_op11_α
                                                                                        jmp   n8_suspend_α
n7_call_proc_staged_β:
                                                                                        jmp   n9_op11_α
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
n9_op11_α:
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
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   proc_$disj1$2F0_ω
n9_op11_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 264]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ok_literal$2F2_α
proc_ok_literal$2F2_α:
                        .global          proc_ok_literal$2F2_α
                        .global          proc_ok_literal$2F2_β
                        .global          proc_ok_literal$2F2_γ
                        .global          proc_ok_literal$2F2_ω
                        sub              rsp, 1392
                        mov              [rsp + 1368], rcx
                        mov              [rsp + 1376], rdx
                        mov              [rsp + 1384], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1312
                        mov              edx, 1360
                        call             rt_jmp_frame_lexprep2@PLT
proc_ok_literal$2F2_α_body:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx69_101
.Lx69_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx69_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n27_var_ref_α
n26_op11_β:
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
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n29_op11_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "i_enter"
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n31_op11_α
                                                                                        jmp   n30_var_ref_α
n29_op11_β:
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n33_var_ref_α
n31_op11_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
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
.Lx81_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx81_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_41
                        cmp              esi, 1
                                                                                        jne   .Lx81_55
                        mov              r8, rax
                                                                                        jmp   .Lx81_40
.Lx81_55:
                        cmp              esi, 2
                                                                                        jne   .Lx81_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx81_41
                        mov              r8, rax
                                                                                        jmp   .Lx81_40
.Lx81_56:
                        cmp              eax, 13
                                                                                        jne   .Lx81_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_41
                        cmp              rax, r8
                                                                                        je    .Lx81_41
                        mov              r8, rax
                                                                                        jmp   .Lx81_40
.Lx81_41:
                        lea              r9, [rbp + 1184]
.Lx81_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx81_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_43
                        cmp              esi, 1
                                                                                        jne   .Lx81_57
                        mov              r9, rax
                                                                                        jmp   .Lx81_42
.Lx81_57:
                        cmp              esi, 2
                                                                                        jne   .Lx81_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx81_43
                        mov              r9, rax
                                                                                        jmp   .Lx81_42
.Lx81_58:
                        cmp              eax, 13
                                                                                        jne   .Lx81_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_43
                        cmp              rax, r9
                                                                                        je    .Lx81_43
                        mov              r9, rax
                                                                                        jmp   .Lx81_42
.Lx81_43:
                        cmp              r8, r9
                                                                                        je    .Lx81_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx81_44
                        cmp              eax, 99
                                                                                        je    .Lx81_44
                        cmp              eax, 13
                                                                                        jne   .Lx81_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx81_44
                                                                                        jmp   .Lx81_45
.Lx81_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx81_53
                        cmp              eax, 99
                                                                                        je    .Lx81_53
                        cmp              eax, 13
                                                                                        jne   .Lx81_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx81_53
                                                                                        jmp   .Lx81_46
.Lx81_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx81_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx81_53
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
                                                                                        jmp   .Lx81_51
.Lx81_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx81_47
                        cmp              eax, 99
                                                                                        je    .Lx81_47
                        cmp              eax, 13
                                                                                        jne   .Lx81_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx81_47
                                                                                        jmp   .Lx81_48
.Lx81_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx81_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx81_53
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
                                                                                        jmp   .Lx81_51
.Lx81_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx81_49
                        cmp              edx, 14
                                                                                        je    .Lx81_53
                                                                                        jmp   .Lx81_52
.Lx81_49:
                        cmp              edx, 14
                                                                                        je    .Lx81_52
                        cmp              ecx, 7
                                                                                        je    .Lx81_53
                        cmp              edx, 7
                                                                                        je    .Lx81_53
                        cmp              ecx, 6
                                                                                        jne   .Lx81_50
                        cmp              edx, 6
                                                                                        jne   .Lx81_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx81_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx81_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx81_51
                                                                                        jmp   .Lx81_52
.Lx81_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx81_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx81_53
.Lx81_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx81_54
.Lx81_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx81_54
.Lx81_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx81_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n31_op11_α
                                                                                        jmp   n36_suspend_α
n34_op11_β:
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n37_lit_string_α
.Lx82_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_ok_literal$2F2_γ
n36_suspend_β:
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n38_op11_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "i_call"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n40_var_ref_α
                                                                                        jmp   n39_var_ref_α
n38_op11_β:
                                                                                        jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n43_lit_string_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "i_call"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n44_lit_string_α
.Lx92_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n45_var_ref_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n46_op11_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "i_depart"
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n49_op11_α
                                                                                        jmp   n48_var_ref_α
n46_op11_β:
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n50_op11_α
.Lx98_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
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
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   proc_ok_literal$2F2_ω
n49_op11_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n52_op11_α
n50_op11_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n53_lit_string_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "i_depart"
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n55_op11_α
                                                                                        jmp   n54_op11_α
n52_op11_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n56_var_ref_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
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
.Lx106_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx106_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx106_41
                        cmp              esi, 1
                                                                                        jne   .Lx106_55
                        mov              r8, rax
                                                                                        jmp   .Lx106_40
.Lx106_55:
                        cmp              esi, 2
                                                                                        jne   .Lx106_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx106_41
                        mov              r8, rax
                                                                                        jmp   .Lx106_40
.Lx106_56:
                        cmp              eax, 13
                                                                                        jne   .Lx106_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx106_41
                        cmp              rax, r8
                                                                                        je    .Lx106_41
                        mov              r8, rax
                                                                                        jmp   .Lx106_40
.Lx106_41:
                        lea              r9, [rbp + 752]
.Lx106_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx106_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx106_43
                        cmp              esi, 1
                                                                                        jne   .Lx106_57
                        mov              r9, rax
                                                                                        jmp   .Lx106_42
.Lx106_57:
                        cmp              esi, 2
                                                                                        jne   .Lx106_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx106_43
                        mov              r9, rax
                                                                                        jmp   .Lx106_42
.Lx106_58:
                        cmp              eax, 13
                                                                                        jne   .Lx106_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx106_43
                        cmp              rax, r9
                                                                                        je    .Lx106_43
                        mov              r9, rax
                                                                                        jmp   .Lx106_42
.Lx106_43:
                        cmp              r8, r9
                                                                                        je    .Lx106_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx106_44
                        cmp              eax, 99
                                                                                        je    .Lx106_44
                        cmp              eax, 13
                                                                                        jne   .Lx106_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx106_44
                                                                                        jmp   .Lx106_45
.Lx106_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx106_53
                        cmp              eax, 99
                                                                                        je    .Lx106_53
                        cmp              eax, 13
                                                                                        jne   .Lx106_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx106_53
                                                                                        jmp   .Lx106_46
.Lx106_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx106_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx106_53
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
                                                                                        jmp   .Lx106_51
.Lx106_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx106_47
                        cmp              eax, 99
                                                                                        je    .Lx106_47
                        cmp              eax, 13
                                                                                        jne   .Lx106_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx106_47
                                                                                        jmp   .Lx106_48
.Lx106_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx106_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx106_53
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
                                                                                        jmp   .Lx106_51
.Lx106_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx106_49
                        cmp              edx, 14
                                                                                        je    .Lx106_53
                                                                                        jmp   .Lx106_52
.Lx106_49:
                        cmp              edx, 14
                                                                                        je    .Lx106_52
                        cmp              ecx, 7
                                                                                        je    .Lx106_53
                        cmp              edx, 7
                                                                                        je    .Lx106_53
                        cmp              ecx, 6
                                                                                        jne   .Lx106_50
                        cmp              edx, 6
                                                                                        jne   .Lx106_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx106_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx106_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx106_51
                                                                                        jmp   .Lx106_52
.Lx106_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx106_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx106_53
.Lx106_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx106_54
.Lx106_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx106_54
.Lx106_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx106_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n55_op11_α
                                                                                        jmp   n57_var_ref_α
n54_op11_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n40_var_ref_α
n55_op11_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n59_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n60_op11_α
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_ok_literal$2F2_ω
                                                                                        jmp   n62_op11_α
n60_op11_β:
                                                                                        jmp   proc_ok_literal$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
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
.Lx116_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx116_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_41
                        cmp              esi, 1
                                                                                        jne   .Lx116_55
                        mov              r8, rax
                                                                                        jmp   .Lx116_40
.Lx116_55:
                        cmp              esi, 2
                                                                                        jne   .Lx116_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx116_41
                        mov              r8, rax
                                                                                        jmp   .Lx116_40
.Lx116_56:
                        cmp              eax, 13
                                                                                        jne   .Lx116_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_41
                        cmp              rax, r8
                                                                                        je    .Lx116_41
                        mov              r8, rax
                                                                                        jmp   .Lx116_40
.Lx116_41:
                        lea              r9, [rbp + 672]
.Lx116_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx116_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_43
                        cmp              esi, 1
                                                                                        jne   .Lx116_57
                        mov              r9, rax
                                                                                        jmp   .Lx116_42
.Lx116_57:
                        cmp              esi, 2
                                                                                        jne   .Lx116_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx116_43
                        mov              r9, rax
                                                                                        jmp   .Lx116_42
.Lx116_58:
                        cmp              eax, 13
                                                                                        jne   .Lx116_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx116_43
                        cmp              rax, r9
                                                                                        je    .Lx116_43
                        mov              r9, rax
                                                                                        jmp   .Lx116_42
.Lx116_43:
                        cmp              r8, r9
                                                                                        je    .Lx116_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx116_44
                        cmp              eax, 99
                                                                                        je    .Lx116_44
                        cmp              eax, 13
                                                                                        jne   .Lx116_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx116_44
                                                                                        jmp   .Lx116_45
.Lx116_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx116_53
                        cmp              eax, 99
                                                                                        je    .Lx116_53
                        cmp              eax, 13
                                                                                        jne   .Lx116_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx116_53
                                                                                        jmp   .Lx116_46
.Lx116_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx116_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx116_53
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
                                                                                        jmp   .Lx116_51
.Lx116_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx116_47
                        cmp              eax, 99
                                                                                        je    .Lx116_47
                        cmp              eax, 13
                                                                                        jne   .Lx116_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx116_47
                                                                                        jmp   .Lx116_48
.Lx116_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx116_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx116_53
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
                                                                                        jmp   .Lx116_51
.Lx116_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx116_49
                        cmp              edx, 14
                                                                                        je    .Lx116_53
                                                                                        jmp   .Lx116_52
.Lx116_49:
                        cmp              edx, 14
                                                                                        je    .Lx116_52
                        cmp              ecx, 7
                                                                                        je    .Lx116_53
                        cmp              edx, 7
                                                                                        je    .Lx116_53
                        cmp              ecx, 6
                                                                                        jne   .Lx116_50
                        cmp              edx, 6
                                                                                        jne   .Lx116_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx116_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx116_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx116_51
                                                                                        jmp   .Lx116_52
.Lx116_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx116_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx116_53
.Lx116_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx116_54
.Lx116_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx116_54
.Lx116_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx116_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n55_op11_α
                                                                                        jmp   n63_suspend_α
n61_op11_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n49_op11_α
                                                                                        jmp   n64_op11_α
n62_op11_β:
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_suspend_α:
                        lea              rax, [rip + n63_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_ok_literal$2F2_γ
n63_suspend_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
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
.Lx120_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx120_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        cmp              esi, 1
                                                                                        jne   .Lx120_55
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_55:
                        cmp              esi, 2
                                                                                        jne   .Lx120_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_56:
                        cmp              eax, 13
                                                                                        jne   .Lx120_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        cmp              rax, r8
                                                                                        je    .Lx120_41
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_41:
                        lea              r9, [rbp + 240]
.Lx120_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx120_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        cmp              esi, 1
                                                                                        jne   .Lx120_57
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_57:
                        cmp              esi, 2
                                                                                        jne   .Lx120_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_58:
                        cmp              eax, 13
                                                                                        jne   .Lx120_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        cmp              rax, r9
                                                                                        je    .Lx120_43
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_43:
                        cmp              r8, r9
                                                                                        je    .Lx120_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_44
                        cmp              eax, 99
                                                                                        je    .Lx120_44
                        cmp              eax, 13
                                                                                        jne   .Lx120_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx120_44
                                                                                        jmp   .Lx120_45
.Lx120_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_53
                        cmp              eax, 99
                                                                                        je    .Lx120_53
                        cmp              eax, 13
                                                                                        jne   .Lx120_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx120_53
                                                                                        jmp   .Lx120_46
.Lx120_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx120_53
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
                                                                                        jmp   .Lx120_51
.Lx120_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_47
                        cmp              eax, 99
                                                                                        je    .Lx120_47
                        cmp              eax, 13
                                                                                        jne   .Lx120_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx120_47
                                                                                        jmp   .Lx120_48
.Lx120_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx120_53
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
                                                                                        jmp   .Lx120_51
.Lx120_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx120_49
                        cmp              edx, 14
                                                                                        je    .Lx120_53
                                                                                        jmp   .Lx120_52
.Lx120_49:
                        cmp              edx, 14
                                                                                        je    .Lx120_52
                        cmp              ecx, 7
                                                                                        je    .Lx120_53
                        cmp              edx, 7
                                                                                        je    .Lx120_53
                        cmp              ecx, 6
                                                                                        jne   .Lx120_50
                        cmp              edx, 6
                                                                                        jne   .Lx120_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx120_51
                                                                                        jmp   .Lx120_52
.Lx120_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx120_53
.Lx120_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx120_54
.Lx120_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx120_54
.Lx120_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx120_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n49_op11_α
                                                                                        jmp   n65_var_ref_α
n64_op11_β:
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n66_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
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
                        lea              r9, [rbp + 160]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n49_op11_α
                                                                                        jmp   n68_suspend_α
n67_op11_β:
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_suspend_α:
                        lea              rax, [rip + n68_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_ok_literal$2F2_γ
n68_suspend_β:
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1312]
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_ok_literal$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1368]
                        mov              rbp, [rbp + 1384]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ok_literal$2F2_ω:
                        mov              rax, [rbp + 1376]
                        lea              rsp, [rbp + 1392]
                        mov              rbp, [rbp + 1384]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_cont$2F3_α
proc_check_cont$2F3_α:
                        .global          proc_check_cont$2F3_α
                        .global          proc_check_cont$2F3_β
                        .global          proc_check_cont$2F3_γ
                        .global          proc_check_cont$2F3_ω
                        sub              rsp, 2160
                        mov              [rsp + 2136], rcx
                        mov              [rsp + 2144], rdx
                        mov              [rsp + 2152], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2000
                        mov              edx, 2128
                        call             rt_jmp_frame_lexprep2@PLT
proc_check_cont$2F3_α_body:
                        lea              rax, [rip + n173_suspend_β]
                        mov              qword ptr [rbp + 2000], rax
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx188_101
.Lx188_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx188_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_check_cont$2F3_ω
                                                                                        jmp   n129_var_ref_α
n128_op11_β:
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
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx193_44
                        cmp              eax, 13
                                                                                        jne   .Lx193_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx193_44
                                                                                        jmp   .Lx193_45
.Lx193_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx193_53
                        cmp              eax, 99
                                                                                        je    .Lx193_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx193_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx193_49
                        cmp              edx, 14
                                                                                        je    .Lx193_53
                                                                                        jmp   .Lx193_52
.Lx193_49:
                        cmp              edx, 14
                                                                                        je    .Lx193_52
                        cmp              ecx, 7
                                                                                        je    .Lx193_53
                        cmp              edx, 7
                                                                                        je    .Lx193_53
                        cmp              ecx, 6
                                                                                        jne   .Lx193_50
                        cmp              edx, 6
                                                                                        jne   .Lx193_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx193_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx193_54
.Lx193_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx193_54:
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n132_var_ref_α
n131_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
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
                                                                                        je    proc_check_cont$2F3_ω
                                                                                        jmp   proc_check_cont$2F3_ω
n133_op11_β:
                                                                                        jmp   proc_check_cont$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
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
.Lx199_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              esi, 1
                                                                                        jne   .Lx199_55
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_55:
                        cmp              esi, 2
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_56:
                        cmp              eax, 13
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              rax, r8
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_41:
                        lea              r9, [rbp + 1872]
.Lx199_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              esi, 1
                                                                                        jne   .Lx199_57
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_57:
                        cmp              esi, 2
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_58:
                        cmp              eax, 13
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              rax, r9
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_43:
                        cmp              r8, r9
                                                                                        je    .Lx199_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_44
                        cmp              eax, 99
                                                                                        je    .Lx199_44
                        cmp              eax, 13
                                                                                        jne   .Lx199_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx199_44
                                                                                        jmp   .Lx199_45
.Lx199_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_53
                        cmp              eax, 99
                                                                                        je    .Lx199_53
                        cmp              eax, 13
                                                                                        jne   .Lx199_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_46
.Lx199_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_47
                        cmp              eax, 99
                                                                                        je    .Lx199_47
                        cmp              eax, 13
                                                                                        jne   .Lx199_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_47
                                                                                        jmp   .Lx199_48
.Lx199_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx199_49
                        cmp              edx, 14
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_52
.Lx199_49:
                        cmp              edx, 14
                                                                                        je    .Lx199_52
                        cmp              ecx, 7
                                                                                        je    .Lx199_53
                        cmp              edx, 7
                                                                                        je    .Lx199_53
                        cmp              ecx, 6
                                                                                        jne   .Lx199_50
                        cmp              edx, 6
                                                                                        jne   .Lx199_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx199_51
                                                                                        jmp   .Lx199_52
.Lx199_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
.Lx199_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx199_54
.Lx199_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx199_54
.Lx199_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx199_54:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n136_var_ref_α
n135_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n137_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n138_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
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
                        lea              r9, [rbp + 1792]
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
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n139_var_ref_α
n138_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n141_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n143_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx214_20
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx214_21
.Lx214_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx214_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx214_22
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx214_23
.Lx214_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        call             rt_arg_stage@PLT
.Lx214_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx214_24
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx214_25
.Lx214_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_arg_stage@PLT
.Lx214_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx214_26
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx214_27
.Lx214_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx214_27:
                        mov              rdi, qword ptr [rip + .Lx214_0]
                        mov              esi, 4
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx214_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx214_3]
                        lea              rdx, [rip + .Lx214_4]
                                                                                        jmp   rax
.Lx214_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx214_2
.Lx214_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx214_2
.Lx214_1:
                        call             rt_faildescr@PLT
.Lx214_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n144_lit_string_α
n143_call_proc_staged_β:
                                                                                        jmp   n133_op11_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "$fetch_vm/4"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n145_var_ref_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n147_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n148_call_proc_staged_α
n147_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx222_20
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx222_21
.Lx222_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        call             rt_arg_stage@PLT
.Lx222_21:
                        mov              rdi, qword ptr [rip + .Lx222_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx222_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx222_3]
                        lea              rdx, [rip + .Lx222_4]
                                                                                        jmp   rax
.Lx222_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx222_2
.Lx222_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx222_2
.Lx222_1:
                        call             rt_faildescr@PLT
.Lx222_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n143_call_proc_staged_β
                                                                                        jmp   n149_lit_string_α
n148_call_proc_staged_β:
                                                                                        jmp   n143_call_proc_staged_β
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n150_lit_string_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n151_lit_string_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "~w: ~w"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n152_var_ref_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n154_var_ref_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n156_op11_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n156_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_check_cont$2F3_ω
                                                                                        jmp   n157_op11_α
n156_op11_β:
                                                                                        jmp   proc_check_cont$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n157_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n158_call_proc_staged_α
n157_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx235_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_22
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx235_23
.Lx235_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx235_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_24
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx235_25
.Lx235_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        call             rt_arg_stage@PLT
.Lx235_25:
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n148_call_proc_staged_β
                                                                                        jmp   n159_var_ref_α
n158_call_proc_staged_β:
                                                                                        jmp   n148_call_proc_staged_β
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n162_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_20
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx243_21
.Lx243_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx243_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_22
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx243_23
.Lx243_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx243_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_24
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx243_25
.Lx243_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx243_25:
                        mov              rdi, qword ptr [rip + .Lx243_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx243_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx243_3]
                        lea              rdx, [rip + .Lx243_4]
                                                                                        jmp   rax
.Lx243_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx243_2
.Lx243_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx243_2
.Lx243_1:
                        call             rt_faildescr@PLT
.Lx243_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n158_call_proc_staged_β
                                                                                        jmp   n163_lit_string_α
n162_call_proc_staged_β:
                                                                                        jmp   n158_call_proc_staged_β
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "$clause_term_position/3"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n164_lit_string_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n165_lit_string_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "\t ~w"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n166_var_ref_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n167_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n168_op11_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n169_call_proc_staged_α
n168_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx252_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx252_21
.Lx252_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx252_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx252_22
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx252_23
.Lx252_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        call             rt_arg_stage@PLT
.Lx252_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx252_24
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx252_25
.Lx252_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        call             rt_arg_stage@PLT
.Lx252_25:
                        mov              rdi, qword ptr [rip + .Lx252_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx252_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx252_3]
                        lea              rdx, [rip + .Lx252_4]
                                                                                        jmp   rax
.Lx252_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx252_2
.Lx252_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx252_2
.Lx252_1:
                        call             rt_faildescr@PLT
.Lx252_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_proc_staged_β
                                                                                        jmp   n170_var_ref_α
n169_call_proc_staged_β:
                                                                                        jmp   n162_call_proc_staged_β
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n172_op11_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "exit"
#-----------------------------------------------------------------------------------------------------------------------
n172_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn257:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rbp + 640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n174_var_ref_α
                                                                                        jmp   n173_suspend_α
n172_op11_β:
                                                                                        jmp   n174_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_suspend_α:
                        lea              rax, [rip + n173_suspend_β]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_check_cont$2F3_γ
n173_suspend_β:
                                                                                        jmp   n169_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n175_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n176_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n177_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              qword ptr [rbp + 544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx267_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx267_21
.Lx267_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx267_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx267_22
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx267_23
.Lx267_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx267_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx267_24
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx267_25
.Lx267_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx267_25:
                        mov              edi, 6
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx267_1
                        lea              rcx, [rip + .Lx267_3]
                        lea              rdx, [rip + .Lx267_4]
                                                                                        jmp   rax
.Lx267_3:
                        mov              qword ptr [rbp + 552], rsp
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx267_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx267_2
.Lx267_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx267_2
.Lx267_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx267_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx267_2
.Lx267_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx267_2
.Lx267_1:
                        call             rt_faildescr@PLT
.Lx267_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_proc_staged_β
                                                                                        jmp   n178_lit_string_α
n177_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   qword ptr [rsp]
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "term_in_clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n179_lit_string_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n180_lit_string_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "\t--> ~w"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n181_var_ref_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n183_op11_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n169_call_proc_staged_β
                                                                                        jmp   n184_call_proc_staged_α
n183_op11_β:
                                                                                        jmp   n169_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n184_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx276_21
.Lx276_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx276_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_22
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx276_23
.Lx276_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx276_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_24
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx276_25
.Lx276_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx276_25:
                        mov              rdi, qword ptr [rip + .Lx276_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx276_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx276_3]
                        lea              rdx, [rip + .Lx276_4]
                                                                                        jmp   rax
.Lx276_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx276_2
.Lx276_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx276_2
.Lx276_1:
                        call             rt_faildescr@PLT
.Lx276_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n169_call_proc_staged_β
                                                                                        jmp   n185_var_ref_α
n184_call_proc_staged_β:
                                                                                        jmp   n169_call_proc_staged_β
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n187_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx282_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx282_21
.Lx282_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx282_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx282_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx282_23
.Lx282_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx282_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx282_1
                        lea              rcx, [rip + .Lx282_3]
                        lea              rdx, [rip + .Lx282_4]
                                                                                        jmp   rax
.Lx282_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx282_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx282_2
.Lx282_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx282_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx282_2
.Lx282_1:
                        call             rt_faildescr@PLT
.Lx282_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n184_call_proc_staged_β
                                                                                        jmp   n173_suspend_α
n187_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "ok_literal/2"
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_β:
                                                                                        jmp   qword ptr [rbp + 2000]
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_check_cont$2F3_res]
                        push             rax
                        mov              rax, [rbp + 2136]
                        mov              rbp, [rbp + 2152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_cont$2F3_ω:
                        mov              rax, [rbp + 2144]
                        lea              rsp, [rbp + 2160]
                        mov              rbp, [rbp + 2152]
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
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n283_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx290_101
.Lx290_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx290_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   n284_call_proc_staged_α
n283_op11_β:
                                                                                        jmp   proc_$disj2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n284_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx292_2
.Lx292_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n286_op11_α
                                                                                        jmp   n285_suspend_α
n284_call_proc_staged_β:
                                                                                        jmp   n286_op11_α
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
n286_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj2$2F0_ω
                                                                                        jmp   n287_call_proc_staged_α
n286_op11_β:
                                                                                        jmp   proc_$disj2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx297_2
.Lx297_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n288_suspend_α
n287_call_proc_staged_β:
                                                                                        jmp   n289_op11_α
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
n289_op11_α:
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
n289_op11_β:
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
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n301_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx308_101
.Lx308_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx308_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n302_call_proc_staged_α
n301_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n302_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx310_2
.Lx310_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n304_op11_α
                                                                                        jmp   n303_suspend_α
n302_call_proc_staged_β:
                                                                                        jmp   n304_op11_α
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
n304_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n305_call_proc_staged_α
n304_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx315_2
.Lx315_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n307_op11_α
                                                                                        jmp   n306_suspend_α
n305_call_proc_staged_β:
                                                                                        jmp   n307_op11_α
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
n307_op11_α:
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
n307_op11_β:
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
                        .globl           proc_test_strace$2F0_α
proc_test_strace$2F0_α:
                        .global          proc_test_strace$2F0_α
                        .global          proc_test_strace$2F0_β
                        .global          proc_test_strace$2F0_γ
                        .global          proc_test_strace$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_strace$2F0_α_body:
                        lea              rax, [rip + n325_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n319_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx326_101
.Lx326_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx326_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_strace$2F0_ω
                                                                                        jmp   n320_lit_string_α
n319_op11_β:
                                                                                        jmp   proc_test_strace$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
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
                                                                                        jmp   n322_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n324_op11_α
                                                                                        jmp   n323_call_proc_staged_α
n322_op11_β:
                                                                                        jmp   n324_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx332_21:
                        mov              edi, 9
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n324_op11_α
                                                                                        jmp   n325_suspend_α
n323_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "chk/1"
#-----------------------------------------------------------------------------------------------------------------------
n324_op11_α:
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
                                                                                        je    proc_test_strace$2F0_ω
                                                                                        jmp   proc_test_strace$2F0_ω
n324_op11_β:
                                                                                        jmp   proc_test_strace$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_suspend_α:
                        lea              rax, [rip + n325_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_strace$2F0_γ
n325_suspend_β:
                                                                                        jmp   n323_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_strace$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_strace$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_term_in_clause$2F3_α
proc_term_in_clause$2F3_α:
                        .global          proc_term_in_clause$2F3_α
                        .global          proc_term_in_clause$2F3_β
                        .global          proc_term_in_clause$2F3_γ
                        .global          proc_term_in_clause$2F3_ω
                        sub              rsp, 880
                        mov              [rsp + 856], rcx
                        mov              [rsp + 864], rdx
                        mov              [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 752
                        mov              edx, 848
                        call             rt_jmp_frame_lexprep2@PLT
proc_term_in_clause$2F3_α_body:
                        lea              rax, [rip + n358_suspend_β]
                        mov              qword ptr [rbp + 752], rax
#-----------------------------------------------------------------------------------------------------------------------
n336_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx359_101
.Lx359_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx359_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_term_in_clause$2F3_ω
                                                                                        jmp   n337_var_ref_α
n336_op11_β:
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
                                                                                        jmp   n339_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n339_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx364_44
                        cmp              eax, 13
                                                                                        jne   .Lx364_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx364_44
                                                                                        jmp   .Lx364_45
.Lx364_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx364_53
                        cmp              eax, 99
                                                                                        je    .Lx364_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx364_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx364_49
                        cmp              edx, 14
                                                                                        je    .Lx364_53
                                                                                        jmp   .Lx364_52
.Lx364_49:
                        cmp              edx, 14
                                                                                        je    .Lx364_52
                        cmp              ecx, 7
                                                                                        je    .Lx364_53
                        cmp              edx, 7
                                                                                        je    .Lx364_53
                        cmp              ecx, 6
                                                                                        jne   .Lx364_50
                        cmp              edx, 6
                                                                                        jne   .Lx364_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx364_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx364_54
.Lx364_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx364_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n341_op11_α
                                                                                        jmp   n340_var_ref_α
n339_op11_β:
                                                                                        jmp   n341_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_op11_α:
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
                                                                                        je    proc_term_in_clause$2F3_ω
                                                                                        jmp   proc_term_in_clause$2F3_ω
n341_op11_β:
                                                                                        jmp   proc_term_in_clause$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n343_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
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
.Lx370_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx370_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_41
                        cmp              esi, 1
                                                                                        jne   .Lx370_55
                        mov              r8, rax
                                                                                        jmp   .Lx370_40
.Lx370_55:
                        cmp              esi, 2
                                                                                        jne   .Lx370_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx370_41
                        mov              r8, rax
                                                                                        jmp   .Lx370_40
.Lx370_56:
                        cmp              eax, 13
                                                                                        jne   .Lx370_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_41
                        cmp              rax, r8
                                                                                        je    .Lx370_41
                        mov              r8, rax
                                                                                        jmp   .Lx370_40
.Lx370_41:
                        lea              r9, [rbp + 624]
.Lx370_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx370_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_43
                        cmp              esi, 1
                                                                                        jne   .Lx370_57
                        mov              r9, rax
                                                                                        jmp   .Lx370_42
.Lx370_57:
                        cmp              esi, 2
                                                                                        jne   .Lx370_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx370_43
                        mov              r9, rax
                                                                                        jmp   .Lx370_42
.Lx370_58:
                        cmp              eax, 13
                                                                                        jne   .Lx370_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx370_43
                        cmp              rax, r9
                                                                                        je    .Lx370_43
                        mov              r9, rax
                                                                                        jmp   .Lx370_42
.Lx370_43:
                        cmp              r8, r9
                                                                                        je    .Lx370_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx370_44
                        cmp              eax, 99
                                                                                        je    .Lx370_44
                        cmp              eax, 13
                                                                                        jne   .Lx370_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx370_44
                                                                                        jmp   .Lx370_45
.Lx370_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx370_53
                        cmp              eax, 99
                                                                                        je    .Lx370_53
                        cmp              eax, 13
                                                                                        jne   .Lx370_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx370_53
                                                                                        jmp   .Lx370_46
.Lx370_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx370_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx370_53
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
                                                                                        jmp   .Lx370_51
.Lx370_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx370_47
                        cmp              eax, 99
                                                                                        je    .Lx370_47
                        cmp              eax, 13
                                                                                        jne   .Lx370_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx370_47
                                                                                        jmp   .Lx370_48
.Lx370_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx370_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx370_53
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
                                                                                        jmp   .Lx370_51
.Lx370_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx370_49
                        cmp              edx, 14
                                                                                        je    .Lx370_53
                                                                                        jmp   .Lx370_52
.Lx370_49:
                        cmp              edx, 14
                                                                                        je    .Lx370_52
                        cmp              ecx, 7
                                                                                        je    .Lx370_53
                        cmp              edx, 7
                                                                                        je    .Lx370_53
                        cmp              ecx, 6
                                                                                        jne   .Lx370_50
                        cmp              edx, 6
                                                                                        jne   .Lx370_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx370_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx370_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx370_51
                                                                                        jmp   .Lx370_52
.Lx370_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx370_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx370_53
.Lx370_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx370_54
.Lx370_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx370_54
.Lx370_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx370_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n341_op11_α
                                                                                        jmp   n344_var_ref_α
n343_op11_β:
                                                                                        jmp   n341_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n346_op11_α:
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
.Lx375_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx375_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_41
                        cmp              esi, 1
                                                                                        jne   .Lx375_55
                        mov              r8, rax
                                                                                        jmp   .Lx375_40
.Lx375_55:
                        cmp              esi, 2
                                                                                        jne   .Lx375_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx375_41
                        mov              r8, rax
                                                                                        jmp   .Lx375_40
.Lx375_56:
                        cmp              eax, 13
                                                                                        jne   .Lx375_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_41
                        cmp              rax, r8
                                                                                        je    .Lx375_41
                        mov              r8, rax
                                                                                        jmp   .Lx375_40
.Lx375_41:
                        lea              r9, [rbp + 544]
.Lx375_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx375_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_43
                        cmp              esi, 1
                                                                                        jne   .Lx375_57
                        mov              r9, rax
                                                                                        jmp   .Lx375_42
.Lx375_57:
                        cmp              esi, 2
                                                                                        jne   .Lx375_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx375_43
                        mov              r9, rax
                                                                                        jmp   .Lx375_42
.Lx375_58:
                        cmp              eax, 13
                                                                                        jne   .Lx375_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx375_43
                        cmp              rax, r9
                                                                                        je    .Lx375_43
                        mov              r9, rax
                                                                                        jmp   .Lx375_42
.Lx375_43:
                        cmp              r8, r9
                                                                                        je    .Lx375_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx375_44
                        cmp              eax, 99
                                                                                        je    .Lx375_44
                        cmp              eax, 13
                                                                                        jne   .Lx375_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx375_44
                                                                                        jmp   .Lx375_45
.Lx375_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx375_53
                        cmp              eax, 99
                                                                                        je    .Lx375_53
                        cmp              eax, 13
                                                                                        jne   .Lx375_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx375_53
                                                                                        jmp   .Lx375_46
.Lx375_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx375_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx375_53
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
                                                                                        jmp   .Lx375_51
.Lx375_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx375_47
                        cmp              eax, 99
                                                                                        je    .Lx375_47
                        cmp              eax, 13
                                                                                        jne   .Lx375_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx375_47
                                                                                        jmp   .Lx375_48
.Lx375_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx375_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx375_53
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
                                                                                        jmp   .Lx375_51
.Lx375_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx375_49
                        cmp              edx, 14
                                                                                        je    .Lx375_53
                                                                                        jmp   .Lx375_52
.Lx375_49:
                        cmp              edx, 14
                                                                                        je    .Lx375_52
                        cmp              ecx, 7
                                                                                        je    .Lx375_53
                        cmp              edx, 7
                                                                                        je    .Lx375_53
                        cmp              ecx, 6
                                                                                        jne   .Lx375_50
                        cmp              edx, 6
                                                                                        jne   .Lx375_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx375_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx375_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx375_51
                                                                                        jmp   .Lx375_52
.Lx375_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx375_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx375_53
.Lx375_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx375_54
.Lx375_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx375_54
.Lx375_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx375_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n341_op11_α
                                                                                        jmp   n347_var_ref_α
n346_op11_β:
                                                                                        jmp   n341_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n349_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n350_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx383_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx383_21
.Lx383_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx383_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx383_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx383_23
.Lx383_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx383_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx383_24
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx383_25
.Lx383_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx383_25:
                        mov              rdi, qword ptr [rip + .Lx383_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx383_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx383_3]
                        lea              rdx, [rip + .Lx383_4]
                                                                                        jmp   rax
.Lx383_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx383_2
.Lx383_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx383_2
.Lx383_1:
                        call             rt_faildescr@PLT
.Lx383_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n341_op11_α
                                                                                        jmp   n351_var_ref_α
n350_call_proc_staged_β:
                                                                                        jmp   n341_op11_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n352_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n353_var_ref_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n354_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n355_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n341_op11_α
                                                                                        jmp   n356_var_ref_α
n355_op11_β:
                                                                                        jmp   n341_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n357_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx395_21
.Lx395_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx395_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx395_23
.Lx395_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx395_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx395_25
.Lx395_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx395_25:
                        mov              edi, 13
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx395_1
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4]
                                                                                        jmp   rax
.Lx395_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx395_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx395_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_1:
                        call             rt_faildescr@PLT
.Lx395_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n350_call_proc_staged_β
                                                                                        jmp   n358_suspend_α
n357_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "find_term/3"
#-----------------------------------------------------------------------------------------------------------------------
n358_suspend_α:
                        lea              rax, [rip + n358_suspend_β]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term_in_clause$2F3_γ
n358_suspend_β:
                                                                                        jmp   n357_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_β:
                                                                                        jmp   qword ptr [rbp + 752]
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_term_in_clause$2F3_res]
                        push             rax
                        mov              rax, [rbp + 856]
                        mov              rbp, [rbp + 872]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_term_in_clause$2F3_ω:
                        mov              rax, [rbp + 864]
                        lea              rsp, [rbp + 880]
                        mov              rbp, [rbp + 872]
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
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n398_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx410_101
.Lx410_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx410_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n399_lit_string_α
n398_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n400_lit_string_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "test_strace"
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n401_lit_string_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n402_lit_string_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n403_lit_integer_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "test_strace"
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n404_op11_α
.Lx415_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n404_op11_α:
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
                                                                                        jmp   n405_lit_string_α
n404_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n406_op11_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n406_op11_α:
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
                                                                                        je    n408_op11_α
                                                                                        jmp   n407_call_proc_staged_α
n406_op11_β:
                                                                                        jmp   n408_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx420_23:
                        mov              rdi, qword ptr [rip + .Lx420_0]
                        mov              esi, 2
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
                        cmp              eax, 99
                                                                                        je    n408_op11_α
                                                                                        jmp   n409_suspend_α
n407_call_proc_staged_β:
                                                                                        jmp   n408_op11_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n408_op11_α:
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
n408_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_suspend_α:
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n409_suspend_β:
                                                                                        jmp   n407_call_proc_staged_β
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
                        .globl           proc_b$2F0_α
proc_b$2F0_α:
                        .global          proc_b$2F0_α
                        .global          proc_b$2F0_β
                        .global          proc_b$2F0_γ
                        .global          proc_b$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n424_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx428_101
.Lx428_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx428_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_b$2F0_ω
                                                                                        jmp   n425_move_label_α
n424_op11_β:
                                                                                        jmp   proc_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_move_label_α:
                        lea              rax, [rip + n426_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n426_op11_α:
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
                                                                                        je    proc_b$2F0_ω
                                                                                        jmp   proc_b$2F0_ω
n426_op11_β:
                                                                                        jmp   proc_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n427_disjunction_β:
                                                                                        jmp   proc_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_β:
                                                                                        jmp   n427_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_b$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx434_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx434_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_b$2F0_α_body
.Lx434_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx434_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_chk$2F1_α
proc_chk$2F1_α:
                        .global          proc_chk$2F1_α
                        .global          proc_chk$2F1_β
                        .global          proc_chk$2F1_γ
                        .global          proc_chk$2F1_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_chk$2F1_α_body:
                        lea              rax, [rip + n445_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx452_101
.Lx452_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx452_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_chk$2F1_ω
                                                                                        jmp   n436_var_ref_α
n435_op11_β:
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
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n438_op11_α:
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
                        lea              r9, [rbp + 512]
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n440_op11_α
                                                                                        jmp   n439_var_ref_α
n438_op11_β:
                                                                                        jmp   n440_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n441_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n440_op11_α:
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
                                                                                        je    proc_chk$2F1_ω
                                                                                        jmp   proc_chk$2F1_ω
n440_op11_β:
                                                                                        jmp   proc_chk$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n442_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx466_21
.Lx466_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx466_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx466_23
.Lx466_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx466_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx466_24
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx466_25
.Lx466_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx466_25:
                        mov              rdi, qword ptr [rip + .Lx466_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx466_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx466_3]
                        lea              rdx, [rip + .Lx466_4]
                                                                                        jmp   rax
.Lx466_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx466_2
.Lx466_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx466_2
.Lx466_1:
                        call             rt_faildescr@PLT
.Lx466_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n445_suspend_α
                                                                                        jmp   n444_var_ref_α
n443_call_proc_staged_β:
                                                                                        jmp   n445_suspend_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "nth_clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n446_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n445_suspend_α:
                        lea              rax, [rip + n445_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_chk$2F1_γ
n445_suspend_β:
                                                                                        jmp   n440_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n447_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n448_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n448_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx476_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx476_21
.Lx476_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx476_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx476_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx476_23
.Lx476_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx476_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx476_24
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx476_25
.Lx476_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx476_25:
                        mov              rdi, qword ptr [rip + .Lx476_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx476_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx476_3]
                        lea              rdx, [rip + .Lx476_4]
                                                                                        jmp   rax
.Lx476_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx476_2
.Lx476_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx476_2
.Lx476_1:
                        call             rt_faildescr@PLT
.Lx476_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_proc_staged_β
                                                                                        jmp   n449_var_ref_α
n448_call_proc_staged_β:
                                                                                        jmp   n443_call_proc_staged_β
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n450_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n451_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx482_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx482_21
.Lx482_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx482_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx482_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx482_23
.Lx482_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx482_23:
                        mov              edi, 11
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx482_1
                        lea              rcx, [rip + .Lx482_3]
                        lea              rdx, [rip + .Lx482_4]
                                                                                        jmp   rax
.Lx482_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx482_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx482_2
.Lx482_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx482_2
.Lx482_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx482_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx482_2
.Lx482_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx482_2
.Lx482_1:
                        call             rt_faildescr@PLT
.Lx482_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n440_op11_α
                                                                                        jmp   n448_call_proc_staged_β
n451_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "check_clause/2"
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_chk$2F1_res]
                        push             rax
                        mov              rax, [rbp + 648]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_chk$2F1_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_d$2F0_α
proc_d$2F0_α:
                        .global          proc_d$2F0_α
                        .global          proc_d$2F0_β
                        .global          proc_d$2F0_γ
                        .global          proc_d$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_d$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n483_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx487_101
.Lx487_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx487_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F0_ω
                                                                                        jmp   n484_move_label_α
n483_op11_β:
                                                                                        jmp   proc_d$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n484_move_label_α:
                        lea              rax, [rip + n485_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_d$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n485_op11_α:
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
                                                                                        je    proc_d$2F0_ω
                                                                                        jmp   proc_d$2F0_ω
n485_op11_β:
                                                                                        jmp   proc_d$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n486_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n486_disjunction_β:
                                                                                        jmp   proc_d$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_β:
                                                                                        jmp   n486_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx493_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx493_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_d$2F0_α_body
.Lx493_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx493_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_clause$2F2_α
proc_check_clause$2F2_α:
                        .global          proc_check_clause$2F2_α
                        .global          proc_check_clause$2F2_β
                        .global          proc_check_clause$2F2_γ
                        .global          proc_check_clause$2F2_ω
                        sub              rsp, 1008
                        mov              [rsp + 984], rcx
                        mov              [rsp + 992], rdx
                        mov              [rsp + 1000], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 896
                        mov              edx, 976
                        call             rt_jmp_frame_lexprep2@PLT
proc_check_clause$2F2_α_body:
                        lea              rax, [rip + n517_suspend_β]
                        mov              qword ptr [rbp + 896], rax
#-----------------------------------------------------------------------------------------------------------------------
n494_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx521_101
.Lx521_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx521_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_check_clause$2F2_ω
                                                                                        jmp   n495_var_ref_α
n494_op11_β:
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
                                                                                        jmp   n497_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx526_44
                        cmp              eax, 13
                                                                                        jne   .Lx526_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx526_44
                                                                                        jmp   .Lx526_45
.Lx526_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx526_53
                        cmp              eax, 99
                                                                                        je    .Lx526_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx526_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx526_49
                        cmp              edx, 14
                                                                                        je    .Lx526_53
                                                                                        jmp   .Lx526_52
.Lx526_49:
                        cmp              edx, 14
                                                                                        je    .Lx526_52
                        cmp              ecx, 7
                                                                                        je    .Lx526_53
                        cmp              edx, 7
                                                                                        je    .Lx526_53
                        cmp              ecx, 6
                                                                                        jne   .Lx526_50
                        cmp              edx, 6
                                                                                        jne   .Lx526_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx526_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx526_54
.Lx526_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx526_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n498_var_ref_α
n497_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n500_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n499_op11_α:
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
                                                                                        je    proc_check_clause$2F2_ω
                                                                                        jmp   proc_check_clause$2F2_ω
n499_op11_β:
                                                                                        jmp   proc_check_clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n501_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_op11_α:
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
                        lea              r9, [rbp + 768]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n502_lit_string_α
n501_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n503_lit_string_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "cont"
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n504_lit_string_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "Checking ~w (~w)"
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n505_var_ref_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n506_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n507_var_ref_α
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n508_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n509_op11_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n509_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_check_clause$2F2_ω
                                                                                        jmp   n510_op11_α
n509_op11_β:
                                                                                        jmp   proc_check_clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n511_call_proc_staged_α
n510_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx545_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx545_21
.Lx545_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx545_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx545_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx545_23
.Lx545_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx545_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx545_24
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx545_25
.Lx545_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx545_25:
                        mov              rdi, qword ptr [rip + .Lx545_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx545_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx545_3]
                        lea              rdx, [rip + .Lx545_4]
                                                                                        jmp   rax
.Lx545_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx545_2
.Lx545_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx545_2
.Lx545_1:
                        call             rt_faildescr@PLT
.Lx545_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n512_var_ref_α
n511_call_proc_staged_β:
                                                                                        jmp   n499_op11_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "debug/3"
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n513_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n514_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n515_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n515_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx553_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx553_21
.Lx553_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx553_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx553_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx553_23
.Lx553_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx553_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx553_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx553_25
.Lx553_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx553_25:
                        mov              rdi, qword ptr [rip + .Lx553_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx553_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx553_3]
                        lea              rdx, [rip + .Lx553_4]
                                                                                        jmp   rax
.Lx553_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx553_2
.Lx553_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx553_2
.Lx553_1:
                        call             rt_faildescr@PLT
.Lx553_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n517_suspend_α
                                                                                        jmp   n516_var_ref_α
n515_call_proc_staged_β:
                                                                                        jmp   n517_suspend_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "$break_pc/3"
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n518_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_suspend_α:
                        lea              rax, [rip + n517_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_check_clause$2F2_γ
n517_suspend_β:
                                                                                        jmp   n511_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n519_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n520_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n520_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx563_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx563_21
.Lx563_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx563_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx563_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx563_23
.Lx563_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx563_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx563_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx563_25
.Lx563_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx563_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx563_1
                        lea              rcx, [rip + .Lx563_3]
                        lea              rdx, [rip + .Lx563_4]
                                                                                        jmp   rax
.Lx563_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx563_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx563_2
.Lx563_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx563_2
.Lx563_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx563_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx563_2
.Lx563_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx563_2
.Lx563_1:
                        call             rt_faildescr@PLT
.Lx563_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n511_call_proc_staged_β
                                                                                        jmp   n515_call_proc_staged_β
n520_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "check_cont/3"
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_β:
                                                                                        jmp   qword ptr [rbp + 896]
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_check_clause$2F2_res]
                        push             rax
                        mov              rax, [rbp + 984]
                        mov              rbp, [rbp + 1000]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_clause$2F2_ω:
                        mov              rax, [rbp + 992]
                        lea              rsp, [rbp + 1008]
                        mov              rbp, [rbp + 1000]
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
                        lea              rax, [rip + n570_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n564_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx571_101
.Lx571_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx571_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n565_lit_string_α
n564_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n566_lit_string_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n567_op11_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n567_op11_α:
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
                                                                                        je    n569_op11_α
                                                                                        jmp   n568_call_proc_staged_α
n567_op11_β:
                                                                                        jmp   n569_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx576_21:
                        mov              rdi, qword ptr [rip + .Lx576_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n569_op11_α
                                                                                        jmp   n570_suspend_α
n568_call_proc_staged_β:
                                                                                        jmp   n569_op11_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n569_op11_α:
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
n569_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n570_suspend_α:
                        lea              rax, [rip + n570_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n570_suspend_β:
                                                                                        jmp   n568_call_proc_staged_β
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
                        .globl           proc_find_term$2F3_α
proc_find_term$2F3_α:
                        .global          proc_find_term$2F3_α
                        .global          proc_find_term$2F3_β
                        .global          proc_find_term$2F3_γ
                        .global          proc_find_term$2F3_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
proc_find_term$2F3_α_body:
                        lea              rax, [rip + n605_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n580_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx620_101
.Lx620_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx620_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_find_term$2F3_ω
                                                                                        jmp   n581_var_ref_α
n580_op11_β:
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
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n583_lit_string_α
.Lx623_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n584_op11_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n584_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx625_114
                        cmp              eax, 13
                                                                                        jne   .Lx625_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx625_114
                                                                                        jmp   .Lx625_118
.Lx625_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx625_115
                        cmp              eax, 6
                                                                                        je    .Lx625_114
                        cmp              eax, 1
                                                                                        jne   .Lx625_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx625_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx625_114
                                                                                        jmp   .Lx625_116
.Lx625_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx625_117
.Lx625_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx625_117
.Lx625_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx625_117:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n586_var_ref_α
                                                                                        jmp   n585_var_ref_α
n584_op11_β:
                                                                                        jmp   n586_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n587_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n588_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n589_op11_α
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n590_lit_integer_α
.Lx631_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n589_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx632_2]
                                                                                        jmp   .Lx632_3
.Lx632_2:
                        .quad            .Lx632_2_s
.Lx632_2_s:
                        .string          "[]"
.Lx632_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n592_op11_α
                                                                                        jmp   n591_var_ref_α
n589_op11_β:
                                                                                        jmp   n592_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n593_op11_α
.Lx633_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n594_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n592_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_find_term$2F3_ω
                                                                                        jmp   n586_var_ref_α
n592_op11_β:
                                                                                        jmp   proc_find_term$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n593_op11_α:
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
.Lx637_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx637_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_111
                        cmp              esi, 1
                                                                                        jne   .Lx637_112
                        mov              r8, rax
                                                                                        jmp   .Lx637_110
.Lx637_112:
                        cmp              esi, 2
                                                                                        jne   .Lx637_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx637_111
                        mov              r8, rax
                                                                                        jmp   .Lx637_110
.Lx637_113:
                        cmp              eax, 13
                                                                                        jne   .Lx637_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_111
                        cmp              rax, r8
                                                                                        je    .Lx637_111
                        mov              r8, rax
                                                                                        jmp   .Lx637_110
.Lx637_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx637_114
                        cmp              eax, 99
                                                                                        je    .Lx637_114
                        cmp              eax, 13
                                                                                        jne   .Lx637_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx637_114
                                                                                        jmp   .Lx637_118
.Lx637_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx637_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx637_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx637_115
                                                                                        jmp   .Lx637_114
.Lx637_119:
                        cmp              eax, 6
                                                                                        jne   .Lx637_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx637_114
                                                                                        jmp   .Lx637_115
.Lx637_120:
                        cmp              eax, 1
                                                                                        jne   .Lx637_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx637_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx637_114
                                                                                        jmp   .Lx637_115
.Lx637_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx637_117
.Lx637_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx637_117
.Lx637_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx637_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n595_var_ref_α
n593_op11_β:
                                                                                        jmp   n596_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n597_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n598_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n596_op11_α:
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
                                                                                        je    proc_find_term$2F3_ω
                                                                                        jmp   proc_find_term$2F3_ω
n596_op11_β:
                                                                                        jmp   proc_find_term$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n597_op11_α:
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
.Lx643_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx643_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        cmp              esi, 1
                                                                                        jne   .Lx643_55
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_55:
                        cmp              esi, 2
                                                                                        jne   .Lx643_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_56:
                        cmp              eax, 13
                                                                                        jne   .Lx643_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        cmp              rax, r8
                                                                                        je    .Lx643_41
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_41:
                        lea              r9, [rbp + 928]
.Lx643_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx643_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        cmp              esi, 1
                                                                                        jne   .Lx643_57
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_57:
                        cmp              esi, 2
                                                                                        jne   .Lx643_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_58:
                        cmp              eax, 13
                                                                                        jne   .Lx643_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        cmp              rax, r9
                                                                                        je    .Lx643_43
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_43:
                        cmp              r8, r9
                                                                                        je    .Lx643_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_44
                        cmp              eax, 99
                                                                                        je    .Lx643_44
                        cmp              eax, 13
                                                                                        jne   .Lx643_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx643_44
                                                                                        jmp   .Lx643_45
.Lx643_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_53
                        cmp              eax, 99
                                                                                        je    .Lx643_53
                        cmp              eax, 13
                                                                                        jne   .Lx643_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx643_53
                                                                                        jmp   .Lx643_46
.Lx643_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx643_53
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
                                                                                        jmp   .Lx643_51
.Lx643_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_47
                        cmp              eax, 99
                                                                                        je    .Lx643_47
                        cmp              eax, 13
                                                                                        jne   .Lx643_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx643_47
                                                                                        jmp   .Lx643_48
.Lx643_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx643_53
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
                                                                                        jmp   .Lx643_51
.Lx643_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx643_49
                        cmp              edx, 14
                                                                                        je    .Lx643_53
                                                                                        jmp   .Lx643_52
.Lx643_49:
                        cmp              edx, 14
                                                                                        je    .Lx643_52
                        cmp              ecx, 7
                                                                                        je    .Lx643_53
                        cmp              edx, 7
                                                                                        je    .Lx643_53
                        cmp              ecx, 6
                                                                                        jne   .Lx643_50
                        cmp              edx, 6
                                                                                        jne   .Lx643_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx643_51
                                                                                        jmp   .Lx643_52
.Lx643_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx643_53
.Lx643_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx643_54
.Lx643_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx643_54
.Lx643_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx643_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n592_op11_α
                                                                                        jmp   n599_var_ref_α
n597_op11_β:
                                                                                        jmp   n592_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n600_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n601_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n602_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n603_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n602_op11_α:
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
.Lx652_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx652_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_61
                        cmp              esi, 1
                                                                                        jne   .Lx652_62
                        mov              r8, rax
                                                                                        jmp   .Lx652_60
.Lx652_62:
                        cmp              esi, 2
                                                                                        jne   .Lx652_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx652_61
                        mov              r8, rax
                                                                                        jmp   .Lx652_60
.Lx652_63:
                        cmp              eax, 13
                                                                                        jne   .Lx652_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_61
                        cmp              rax, r8
                                                                                        je    .Lx652_61
                        mov              r8, rax
                                                                                        jmp   .Lx652_60
.Lx652_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_80
                        cmp              eax, 99
                                                                                        je    .Lx652_80
                        cmp              eax, 13
                                                                                        jne   .Lx652_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx652_80
                                                                                        jmp   .Lx652_74
.Lx652_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx652_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx652_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx652_73
                        lea              r9, [rbp + 592]
.Lx652_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx652_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_65
                        cmp              esi, 1
                                                                                        jne   .Lx652_66
                        mov              r9, rax
                                                                                        jmp   .Lx652_64
.Lx652_66:
                        cmp              esi, 2
                                                                                        jne   .Lx652_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx652_65
                        mov              r9, rax
                                                                                        jmp   .Lx652_64
.Lx652_67:
                        cmp              eax, 13
                                                                                        jne   .Lx652_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_65
                        cmp              rax, r9
                                                                                        je    .Lx652_65
                        mov              r9, rax
                                                                                        jmp   .Lx652_64
.Lx652_65:
                        lea              rcx, [rbp + 608]
.Lx652_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx652_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx652_69
                        cmp              esi, 1
                                                                                        jne   .Lx652_70
                        mov              rcx, rax
                                                                                        jmp   .Lx652_68
.Lx652_70:
                        cmp              esi, 2
                                                                                        jne   .Lx652_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx652_69
                        mov              rcx, rax
                                                                                        jmp   .Lx652_68
.Lx652_71:
                        cmp              eax, 13
                                                                                        jne   .Lx652_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx652_69
                        cmp              rax, rcx
                                                                                        je    .Lx652_69
                        mov              rcx, rax
                                                                                        jmp   .Lx652_68
.Lx652_69:
                        cmp              r9, rcx
                                                                                        je    .Lx652_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_75
                        cmp              eax, 99
                                                                                        je    .Lx652_75
                        cmp              eax, 13
                                                                                        jne   .Lx652_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx652_75
                                                                                        jmp   .Lx652_72
.Lx652_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_76
                        cmp              eax, 99
                                                                                        je    .Lx652_76
                        cmp              eax, 13
                                                                                        jne   .Lx652_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx652_76
                                                                                        jmp   .Lx652_72
.Lx652_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx652_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx652_72
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
                                                                                        jmp   .Lx652_77
.Lx652_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx652_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx652_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx652_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx652_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx652_72
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
.Lx652_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx652_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_82
                        cmp              esi, 1
                                                                                        jne   .Lx652_83
                        mov              r9, rax
                                                                                        jmp   .Lx652_81
.Lx652_83:
                        cmp              esi, 2
                                                                                        jne   .Lx652_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx652_82
                        mov              r9, rax
                                                                                        jmp   .Lx652_81
.Lx652_84:
                        cmp              eax, 13
                                                                                        jne   .Lx652_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_82
                        cmp              rax, r9
                                                                                        je    .Lx652_82
                        mov              r9, rax
                                                                                        jmp   .Lx652_81
.Lx652_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_85
                        cmp              eax, 99
                                                                                        je    .Lx652_85
                        cmp              eax, 13
                                                                                        jne   .Lx652_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx652_85
                                                                                        jmp   .Lx652_86
.Lx652_85:
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
                                                                                        jmp   .Lx652_87
.Lx652_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx652_87:
                        lea              rcx, [rbp + 608]
.Lx652_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx652_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx652_89
                        cmp              esi, 1
                                                                                        jne   .Lx652_90
                        mov              rcx, rax
                                                                                        jmp   .Lx652_88
.Lx652_90:
                        cmp              esi, 2
                                                                                        jne   .Lx652_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx652_89
                        mov              rcx, rax
                                                                                        jmp   .Lx652_88
.Lx652_91:
                        cmp              eax, 13
                                                                                        jne   .Lx652_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx652_89
                        cmp              rax, rcx
                                                                                        je    .Lx652_89
                        mov              rcx, rax
                                                                                        jmp   .Lx652_88
.Lx652_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_92
                        cmp              eax, 99
                                                                                        je    .Lx652_92
                        cmp              eax, 13
                                                                                        jne   .Lx652_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx652_92
                                                                                        jmp   .Lx652_93
.Lx652_92:
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
                                                                                        jmp   .Lx652_94
.Lx652_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx652_94:
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
                                                                                        jmp   .Lx652_77
.Lx652_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx652_77
.Lx652_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx652_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n604_var_ref_α
n602_op11_β:
                                                                                        jmp   n596_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n603_op11_α:
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
.Lx653_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx653_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_41
                        cmp              esi, 1
                                                                                        jne   .Lx653_55
                        mov              r8, rax
                                                                                        jmp   .Lx653_40
.Lx653_55:
                        cmp              esi, 2
                                                                                        jne   .Lx653_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx653_41
                        mov              r8, rax
                                                                                        jmp   .Lx653_40
.Lx653_56:
                        cmp              eax, 13
                                                                                        jne   .Lx653_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_41
                        cmp              rax, r8
                                                                                        je    .Lx653_41
                        mov              r8, rax
                                                                                        jmp   .Lx653_40
.Lx653_41:
                        lea              r9, [rbp + 848]
.Lx653_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx653_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_43
                        cmp              esi, 1
                                                                                        jne   .Lx653_57
                        mov              r9, rax
                                                                                        jmp   .Lx653_42
.Lx653_57:
                        cmp              esi, 2
                                                                                        jne   .Lx653_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx653_43
                        mov              r9, rax
                                                                                        jmp   .Lx653_42
.Lx653_58:
                        cmp              eax, 13
                                                                                        jne   .Lx653_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_43
                        cmp              rax, r9
                                                                                        je    .Lx653_43
                        mov              r9, rax
                                                                                        jmp   .Lx653_42
.Lx653_43:
                        cmp              r8, r9
                                                                                        je    .Lx653_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx653_44
                        cmp              eax, 99
                                                                                        je    .Lx653_44
                        cmp              eax, 13
                                                                                        jne   .Lx653_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx653_44
                                                                                        jmp   .Lx653_45
.Lx653_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx653_53
                        cmp              eax, 99
                                                                                        je    .Lx653_53
                        cmp              eax, 13
                                                                                        jne   .Lx653_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx653_53
                                                                                        jmp   .Lx653_46
.Lx653_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx653_53
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
                                                                                        jmp   .Lx653_51
.Lx653_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx653_47
                        cmp              eax, 99
                                                                                        je    .Lx653_47
                        cmp              eax, 13
                                                                                        jne   .Lx653_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx653_47
                                                                                        jmp   .Lx653_48
.Lx653_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx653_53
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
                                                                                        jmp   .Lx653_51
.Lx653_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx653_49
                        cmp              edx, 14
                                                                                        je    .Lx653_53
                                                                                        jmp   .Lx653_52
.Lx653_49:
                        cmp              edx, 14
                                                                                        je    .Lx653_52
                        cmp              ecx, 7
                                                                                        je    .Lx653_53
                        cmp              edx, 7
                                                                                        je    .Lx653_53
                        cmp              ecx, 6
                                                                                        jne   .Lx653_50
                        cmp              edx, 6
                                                                                        jne   .Lx653_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx653_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx653_51
                                                                                        jmp   .Lx653_52
.Lx653_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx653_53
.Lx653_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx653_54
.Lx653_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx653_54
.Lx653_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx653_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n592_op11_α
                                                                                        jmp   n605_suspend_α
n603_op11_β:
                                                                                        jmp   n592_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n606_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n605_suspend_α:
                        lea              rax, [rip + n605_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_find_term$2F3_γ
n605_suspend_β:
                                                                                        jmp   n592_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n607_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n607_op11_α:
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
.Lx660_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx660_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx660_41
                        cmp              esi, 1
                                                                                        jne   .Lx660_55
                        mov              r8, rax
                                                                                        jmp   .Lx660_40
.Lx660_55:
                        cmp              esi, 2
                                                                                        jne   .Lx660_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx660_41
                        mov              r8, rax
                                                                                        jmp   .Lx660_40
.Lx660_56:
                        cmp              eax, 13
                                                                                        jne   .Lx660_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx660_41
                        cmp              rax, r8
                                                                                        je    .Lx660_41
                        mov              r8, rax
                                                                                        jmp   .Lx660_40
.Lx660_41:
                        lea              r9, [rbp + 496]
.Lx660_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx660_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx660_43
                        cmp              esi, 1
                                                                                        jne   .Lx660_57
                        mov              r9, rax
                                                                                        jmp   .Lx660_42
.Lx660_57:
                        cmp              esi, 2
                                                                                        jne   .Lx660_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx660_43
                        mov              r9, rax
                                                                                        jmp   .Lx660_42
.Lx660_58:
                        cmp              eax, 13
                                                                                        jne   .Lx660_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx660_43
                        cmp              rax, r9
                                                                                        je    .Lx660_43
                        mov              r9, rax
                                                                                        jmp   .Lx660_42
.Lx660_43:
                        cmp              r8, r9
                                                                                        je    .Lx660_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx660_44
                        cmp              eax, 99
                                                                                        je    .Lx660_44
                        cmp              eax, 13
                                                                                        jne   .Lx660_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx660_44
                                                                                        jmp   .Lx660_45
.Lx660_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx660_53
                        cmp              eax, 99
                                                                                        je    .Lx660_53
                        cmp              eax, 13
                                                                                        jne   .Lx660_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx660_53
                                                                                        jmp   .Lx660_46
.Lx660_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx660_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx660_53
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
                                                                                        jmp   .Lx660_51
.Lx660_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx660_47
                        cmp              eax, 99
                                                                                        je    .Lx660_47
                        cmp              eax, 13
                                                                                        jne   .Lx660_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx660_47
                                                                                        jmp   .Lx660_48
.Lx660_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx660_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx660_53
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
                                                                                        jmp   .Lx660_51
.Lx660_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx660_49
                        cmp              edx, 14
                                                                                        je    .Lx660_53
                                                                                        jmp   .Lx660_52
.Lx660_49:
                        cmp              edx, 14
                                                                                        je    .Lx660_52
                        cmp              ecx, 7
                                                                                        je    .Lx660_53
                        cmp              edx, 7
                                                                                        je    .Lx660_53
                        cmp              ecx, 6
                                                                                        jne   .Lx660_50
                        cmp              edx, 6
                                                                                        jne   .Lx660_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx660_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx660_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx660_51
                                                                                        jmp   .Lx660_52
.Lx660_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx660_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx660_53
.Lx660_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx660_54
.Lx660_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx660_54
.Lx660_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx660_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n608_var_ref_α
n607_op11_β:
                                                                                        jmp   n596_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n609_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n610_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_op11_α:
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
.Lx665_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx665_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_41
                        cmp              esi, 1
                                                                                        jne   .Lx665_55
                        mov              r8, rax
                                                                                        jmp   .Lx665_40
.Lx665_55:
                        cmp              esi, 2
                                                                                        jne   .Lx665_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx665_41
                        mov              r8, rax
                                                                                        jmp   .Lx665_40
.Lx665_56:
                        cmp              eax, 13
                                                                                        jne   .Lx665_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_41
                        cmp              rax, r8
                                                                                        je    .Lx665_41
                        mov              r8, rax
                                                                                        jmp   .Lx665_40
.Lx665_41:
                        lea              r9, [rbp + 416]
.Lx665_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx665_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_43
                        cmp              esi, 1
                                                                                        jne   .Lx665_57
                        mov              r9, rax
                                                                                        jmp   .Lx665_42
.Lx665_57:
                        cmp              esi, 2
                                                                                        jne   .Lx665_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx665_43
                        mov              r9, rax
                                                                                        jmp   .Lx665_42
.Lx665_58:
                        cmp              eax, 13
                                                                                        jne   .Lx665_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_43
                        cmp              rax, r9
                                                                                        je    .Lx665_43
                        mov              r9, rax
                                                                                        jmp   .Lx665_42
.Lx665_43:
                        cmp              r8, r9
                                                                                        je    .Lx665_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx665_44
                        cmp              eax, 99
                                                                                        je    .Lx665_44
                        cmp              eax, 13
                                                                                        jne   .Lx665_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx665_44
                                                                                        jmp   .Lx665_45
.Lx665_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx665_53
                        cmp              eax, 99
                                                                                        je    .Lx665_53
                        cmp              eax, 13
                                                                                        jne   .Lx665_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx665_53
                                                                                        jmp   .Lx665_46
.Lx665_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx665_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx665_53
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
                                                                                        jmp   .Lx665_51
.Lx665_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx665_47
                        cmp              eax, 99
                                                                                        je    .Lx665_47
                        cmp              eax, 13
                                                                                        jne   .Lx665_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx665_47
                                                                                        jmp   .Lx665_48
.Lx665_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx665_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx665_53
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
                                                                                        jmp   .Lx665_51
.Lx665_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx665_49
                        cmp              edx, 14
                                                                                        je    .Lx665_53
                                                                                        jmp   .Lx665_52
.Lx665_49:
                        cmp              edx, 14
                                                                                        je    .Lx665_52
                        cmp              ecx, 7
                                                                                        je    .Lx665_53
                        cmp              edx, 7
                                                                                        je    .Lx665_53
                        cmp              ecx, 6
                                                                                        jne   .Lx665_50
                        cmp              edx, 6
                                                                                        jne   .Lx665_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx665_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx665_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx665_51
                                                                                        jmp   .Lx665_52
.Lx665_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx665_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx665_53
.Lx665_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx665_54
.Lx665_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx665_54
.Lx665_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx665_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n611_var_ref_α
n610_op11_β:
                                                                                        jmp   n596_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n612_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n613_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n614_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n614_op11_α:
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
.Lrkfn673:              .string          "$arg"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn673]
                        lea              rsi, [rbp + 288]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n615_var_ref_α
n614_op11_β:
                                                                                        jmp   n596_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n616_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n617_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n618_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n618_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx681_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx681_21
.Lx681_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx681_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx681_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx681_23
.Lx681_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx681_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx681_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx681_25
.Lx681_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx681_25:
                        mov              edi, 13
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx681_1
                        lea              rcx, [rip + .Lx681_3]
                        lea              rdx, [rip + .Lx681_4]
                                                                                        jmp   rax
.Lx681_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx681_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx681_2
.Lx681_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx681_2
.Lx681_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx681_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx681_2
.Lx681_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx681_2
.Lx681_1:
                        call             rt_faildescr@PLT
.Lx681_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n619_suspend_α
n618_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "find_term/3"
#-----------------------------------------------------------------------------------------------------------------------
n619_suspend_α:
                        lea              rax, [rip + n619_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_find_term$2F3_γ
n619_suspend_β:
                                                                                        jmp   n618_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1168]
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_find_term$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1272]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_find_term$2F3_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_c$2F1_α
proc_c$2F1_α:
                        .global          proc_c$2F1_α
                        .global          proc_c$2F1_β
                        .global          proc_c$2F1_γ
                        .global          proc_c$2F1_ω
                        sub              rsp, 2464
                        mov              [rsp + 2440], rcx
                        mov              [rsp + 2448], rdx
                        mov              [rsp + 2456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2416
                        mov              edx, 2432
                        call             rt_jmp_frame_lexprep2@PLT
proc_c$2F1_α_body:
                        lea              rax, [rip + n690_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
#-----------------------------------------------------------------------------------------------------------------------
n684_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx771_101
.Lx771_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx771_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n685_var_ref_α
n684_op11_β:
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
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n687_op11_α
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          "conj1"
#-----------------------------------------------------------------------------------------------------------------------
n687_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n689_op11_α
                                                                                        jmp   n688_call_proc_staged_α
n687_op11_β:
                                                                                        jmp   n689_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n688_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx777_2
.Lx777_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n689_op11_α
                                                                                        jmp   n690_suspend_α
n688_call_proc_staged_β:
                                                                                        jmp   n689_op11_α
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n689_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n691_var_ref_α
n689_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n690_suspend_α:
                        lea              rax, [rip + n690_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n690_suspend_β:
                                                                                        jmp   n688_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n692_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n693_op11_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "conj2"
#-----------------------------------------------------------------------------------------------------------------------
n693_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n695_op11_α
                                                                                        jmp   n694_call_proc_staged_α
n693_op11_β:
                                                                                        jmp   n695_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n694_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx786_2
.Lx786_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n695_op11_α
                                                                                        jmp   n696_call_proc_staged_α
n694_call_proc_staged_β:
                                                                                        jmp   n695_op11_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n695_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n697_var_ref_α
n695_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n696_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx789_2
.Lx789_2:
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n694_call_proc_staged_β
                                                                                        jmp   n698_call_proc_staged_α
n696_call_proc_staged_β:
                                                                                        jmp   n694_call_proc_staged_β
.Lx789_0:
                        .quad            .Lx789_0_s
.Lx789_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n697_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n699_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n698_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx793_2
.Lx793_2:
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n696_call_proc_staged_β
                                                                                        jmp   n700_suspend_α
n698_call_proc_staged_β:
                                                                                        jmp   n696_call_proc_staged_β
.Lx793_0:
                        .quad            .Lx793_0_s
.Lx793_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx794_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n701_op11_α
.Lx794_0:
                        .quad            .Lx794_0_s
.Lx794_0_s:
                        .string          "disj1"
#-----------------------------------------------------------------------------------------------------------------------
n700_suspend_α:
                        lea              rax, [rip + n700_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n700_suspend_β:
                                                                                        jmp   n698_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n701_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n703_op11_α
                                                                                        jmp   n702_call_proc_staged_α
n701_op11_β:
                                                                                        jmp   n703_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n702_call_proc_staged_α:
                        mov              qword ptr [rbp + 1952], 0
                        mov              edi, 4
                        mov              esi, 0
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
                        cmp              eax, 99
                                                                                        je    n703_op11_α
                                                                                        jmp   n704_suspend_α
n702_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1960]
                                                                                        jmp   qword ptr [rsp]
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n703_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n705_var_ref_α
n703_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n704_suspend_α:
                        lea              rax, [rip + n704_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n704_suspend_β:
                                                                                        jmp   n702_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n706_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n707_op11_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "disj2"
#-----------------------------------------------------------------------------------------------------------------------
n707_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n709_op11_α
                                                                                        jmp   n708_call_proc_staged_α
n707_op11_β:
                                                                                        jmp   n709_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n708_call_proc_staged_α:
                        mov              qword ptr [rbp + 1792], 0
                        mov              edi, 0
                        mov              esi, 0
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
                        cmp              eax, 99
                                                                                        je    n709_op11_α
                                                                                        jmp   n710_suspend_α
n708_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1800]
                                                                                        jmp   qword ptr [rsp]
.Lx808_0:
                        .quad            .Lx808_0_s
.Lx808_0_s:
                        .string          "$disj1/0"
#-----------------------------------------------------------------------------------------------------------------------
n709_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n711_var_ref_α
n709_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n710_suspend_α:
                        lea              rax, [rip + n710_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n710_suspend_β:
                                                                                        jmp   n708_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n712_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n713_op11_α
.Lx814_0:
                        .quad            .Lx814_0_s
.Lx814_0_s:
                        .string          "ite1"
#-----------------------------------------------------------------------------------------------------------------------
n713_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n715_op11_α
                                                                                        jmp   n714_call_proc_staged_α
n713_op11_β:
                                                                                        jmp   n715_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n714_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx817_2
.Lx817_2:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n717_call_proc_staged_α
                                                                                        jmp   n716_call_proc_staged_α
n714_call_proc_staged_β:
                                                                                        jmp   n717_call_proc_staged_α
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n715_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1536]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n718_var_ref_α
n715_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n716_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx820_2
.Lx820_2:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n715_op11_α
                                                                                        jmp   n719_suspend_α
n716_call_proc_staged_β:
                                                                                        jmp   n715_op11_α
.Lx820_0:
                        .quad            .Lx820_0_s
.Lx820_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n717_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx822_2
.Lx822_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n715_op11_α
                                                                                        jmp   n719_suspend_α
n717_call_proc_staged_β:
                                                                                        jmp   n715_op11_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n718_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n720_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n719_suspend_α:
                        lea              rax, [rip + n719_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n719_suspend_β:
                                                                                        jmp   n715_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n721_op11_α
.Lx827_0:
                        .quad            .Lx827_0_s
.Lx827_0_s:
                        .string          "it1"
#-----------------------------------------------------------------------------------------------------------------------
n721_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n723_op11_α
                                                                                        jmp   n722_call_proc_staged_α
n721_op11_β:
                                                                                        jmp   n723_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n722_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx830_2
.Lx830_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n723_op11_α
                                                                                        jmp   n724_call_proc_staged_α
n722_call_proc_staged_β:
                                                                                        jmp   n723_op11_α
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n723_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n725_var_ref_α
n723_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx833_2
.Lx833_2:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n723_op11_α
                                                                                        jmp   n726_suspend_α
n724_call_proc_staged_β:
                                                                                        jmp   n723_op11_α
.Lx833_0:
                        .quad            .Lx833_0_s
.Lx833_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n725_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n727_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n726_suspend_α:
                        lea              rax, [rip + n726_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n726_suspend_β:
                                                                                        jmp   n723_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n728_op11_α
.Lx838_0:
                        .quad            .Lx838_0_s
.Lx838_0_s:
                        .string          "it2"
#-----------------------------------------------------------------------------------------------------------------------
n728_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n730_op11_α
                                                                                        jmp   n729_call_proc_staged_α
n728_op11_β:
                                                                                        jmp   n730_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n729_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx841_2
.Lx841_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n730_op11_α
                                                                                        jmp   n731_call_proc_staged_α
n729_call_proc_staged_β:
                                                                                        jmp   n730_op11_α
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n730_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n732_var_ref_α
n730_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n731_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx844_2
.Lx844_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n730_op11_α
                                                                                        jmp   n733_call_proc_staged_α
n731_call_proc_staged_β:
                                                                                        jmp   n730_op11_α
.Lx844_0:
                        .quad            .Lx844_0_s
.Lx844_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n732_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n734_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n733_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx848_2
.Lx848_2:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n731_call_proc_staged_β
                                                                                        jmp   n735_suspend_α
n733_call_proc_staged_β:
                                                                                        jmp   n731_call_proc_staged_β
.Lx848_0:
                        .quad            .Lx848_0_s
.Lx848_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx849_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n736_op11_α
.Lx849_0:
                        .quad            .Lx849_0_s
.Lx849_0_s:
                        .string          "it3"
#-----------------------------------------------------------------------------------------------------------------------
n735_suspend_α:
                        lea              rax, [rip + n735_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n735_suspend_β:
                                                                                        jmp   n730_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n736_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n738_op11_α
                                                                                        jmp   n737_call_proc_staged_α
n736_op11_β:
                                                                                        jmp   n738_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n737_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx854_2
.Lx854_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n738_op11_α
                                                                                        jmp   n739_call_proc_staged_α
n737_call_proc_staged_β:
                                                                                        jmp   n738_op11_α
.Lx854_0:
                        .quad            .Lx854_0_s
.Lx854_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n738_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n740_var_ref_α
n738_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n739_call_proc_staged_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx857_1
                        lea              rcx, [rip + .Lx857_3]
                        lea              rdx, [rip + .Lx857_4]
                                                                                        jmp   rax
.Lx857_3:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx857_5
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx857_2
.Lx857_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx857_2
.Lx857_4:
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx857_6
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx857_2
.Lx857_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx857_2
.Lx857_1:
                        call             rt_faildescr@PLT
.Lx857_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n738_op11_α
                                                                                        jmp   n741_suspend_α
n739_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 968]
                                                                                        jmp   qword ptr [rsp]
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "$disj2/0"
#-----------------------------------------------------------------------------------------------------------------------
n740_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n741_suspend_α:
                        lea              rax, [rip + n741_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n741_suspend_β:
                                                                                        jmp   n738_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n743_op11_α
.Lx862_0:
                        .quad            .Lx862_0_s
.Lx862_0_s:
                        .string          "it4"
#-----------------------------------------------------------------------------------------------------------------------
n743_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n745_op11_α
                                                                                        jmp   n744_call_proc_staged_α
n743_op11_β:
                                                                                        jmp   n745_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n744_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx865_2
.Lx865_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n745_op11_α
                                                                                        jmp   n746_call_proc_staged_α
n744_call_proc_staged_β:
                                                                                        jmp   n745_op11_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n745_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n747_var_ref_α
n745_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n746_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx868_2
.Lx868_2:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n749_call_proc_staged_α
                                                                                        jmp   n748_call_proc_staged_α
n746_call_proc_staged_β:
                                                                                        jmp   n749_call_proc_staged_α
.Lx868_0:
                        .quad            .Lx868_0_s
.Lx868_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n747_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n750_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx872_2
.Lx872_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n745_op11_α
                                                                                        jmp   n751_suspend_α
n748_call_proc_staged_β:
                                                                                        jmp   n745_op11_α
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n749_call_proc_staged_α:
                        call             proc_d$2F0_dcα
                                                                                        jmp   .Lx874_2
.Lx874_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n745_op11_α
                                                                                        jmp   n751_suspend_α
n749_call_proc_staged_β:
                                                                                        jmp   n745_op11_α
.Lx874_0:
                        .quad            .Lx874_0_s
.Lx874_0_s:
                        .string          "d/0"
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n752_op11_α
.Lx875_0:
                        .quad            .Lx875_0_s
.Lx875_0_s:
                        .string          "it5"
#-----------------------------------------------------------------------------------------------------------------------
n751_suspend_α:
                        lea              rax, [rip + n751_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n751_suspend_β:
                                                                                        jmp   n745_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n752_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n754_op11_α
                                                                                        jmp   n753_call_proc_staged_α
n752_op11_β:
                                                                                        jmp   n754_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n753_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx880_2
.Lx880_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n754_op11_α
                                                                                        jmp   n755_call_proc_staged_α
n753_call_proc_staged_β:
                                                                                        jmp   n754_op11_α
.Lx880_0:
                        .quad            .Lx880_0_s
.Lx880_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n754_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n756_var_ref_α
n754_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n755_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx883_2
.Lx883_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n754_op11_α
                                                                                        jmp   n757_call_proc_staged_α
n755_call_proc_staged_β:
                                                                                        jmp   n754_op11_α
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n756_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n758_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n757_call_proc_staged_α:
                        call             proc_c$2F0_dcα
                                                                                        jmp   .Lx887_2
.Lx887_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n754_op11_α
                                                                                        jmp   n759_suspend_α
n757_call_proc_staged_β:
                                                                                        jmp   n754_op11_α
.Lx887_0:
                        .quad            .Lx887_0_s
.Lx887_0_s:
                        .string          "c/0"
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n760_op11_α
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "it6"
#-----------------------------------------------------------------------------------------------------------------------
n759_suspend_α:
                        lea              rax, [rip + n759_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n759_suspend_β:
                                                                                        jmp   n754_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n760_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n762_op11_α
                                                                                        jmp   n761_call_proc_staged_α
n760_op11_β:
                                                                                        jmp   n762_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n761_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx893_2
.Lx893_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n762_op11_α
                                                                                        jmp   n763_call_proc_staged_α
n761_call_proc_staged_β:
                                                                                        jmp   n762_op11_α
.Lx893_0:
                        .quad            .Lx893_0_s
.Lx893_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n762_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   n764_var_ref_α
n762_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        call             proc_b$2F0_dcα
                                                                                        jmp   .Lx896_2
.Lx896_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n765_suspend_α
                                                                                        jmp   n762_op11_α
n763_call_proc_staged_β:
                                                                                        jmp   n765_suspend_α
.Lx896_0:
                        .quad            .Lx896_0_s
.Lx896_0_s:
                        .string          "b/0"
#-----------------------------------------------------------------------------------------------------------------------
n764_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n766_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n765_suspend_α:
                        lea              rax, [rip + n765_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n765_suspend_β:
                                                                                        jmp   n762_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n767_op11_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "not1"
#-----------------------------------------------------------------------------------------------------------------------
n767_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n769_op11_α
                                                                                        jmp   n768_call_proc_staged_α
n767_op11_β:
                                                                                        jmp   n769_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n768_call_proc_staged_α:
                        call             proc_a$2F0_dcα
                                                                                        jmp   .Lx904_2
.Lx904_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n770_suspend_α
                                                                                        jmp   n769_op11_α
n768_call_proc_staged_β:
                                                                                        jmp   n770_suspend_α
.Lx904_0:
                        .quad            .Lx904_0_s
.Lx904_0_s:
                        .string          "a/0"
#-----------------------------------------------------------------------------------------------------------------------
n769_op11_α:
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
                                                                                        je    proc_c$2F1_ω
                                                                                        jmp   proc_c$2F1_ω
n769_op11_β:
                                                                                        jmp   proc_c$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n770_suspend_α:
                        lea              rax, [rip + n770_suspend_β]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_c$2F1_γ
n770_suspend_β:
                                                                                        jmp   n769_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_β:
                                                                                        jmp   qword ptr [rbp + 2416]
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_c$2F1_res]
                        push             rax
                        mov              rax, [rbp + 2440]
                        mov              rbp, [rbp + 2456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F1_ω:
                        mov              rax, [rbp + 2448]
                        lea              rsp, [rbp + 2464]
                        mov              rbp, [rbp + 2456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_c$2F0_α
proc_c$2F0_α:
                        .global          proc_c$2F0_α
                        .global          proc_c$2F0_β
                        .global          proc_c$2F0_γ
                        .global          proc_c$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_c$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n908_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx912_101
.Lx912_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx912_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_c$2F0_ω
                                                                                        jmp   n909_move_label_α
n908_op11_β:
                                                                                        jmp   proc_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n909_move_label_α:
                        lea              rax, [rip + n910_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_c$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n910_op11_α:
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
                                                                                        je    proc_c$2F0_ω
                                                                                        jmp   proc_c$2F0_ω
n910_op11_β:
                                                                                        jmp   proc_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n911_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n911_disjunction_β:
                                                                                        jmp   proc_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_β:
                                                                                        jmp   n911_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_c$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx918_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx918_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_c$2F0_α_body
.Lx918_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx918_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a$2F0_α
proc_a$2F0_α:
                        .global          proc_a$2F0_α
                        .global          proc_a$2F0_β
                        .global          proc_a$2F0_γ
                        .global          proc_a$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_a$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n919_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx923_101
.Lx923_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx923_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F0_ω
                                                                                        jmp   n920_move_label_α
n919_op11_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n920_move_label_α:
                        lea              rax, [rip + n921_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_a$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n921_op11_α:
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
                                                                                        je    proc_a$2F0_ω
                                                                                        jmp   proc_a$2F0_ω
n921_op11_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n922_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n922_disjunction_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_β:
                                                                                        jmp   n922_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx929_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx929_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_a$2F0_α_body
.Lx929_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx929_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
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
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n930_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n931_lit_string_α
.Lx934_0:
                        .quad            .Lx934_0_s
.Lx934_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n931_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n932_op11_α
.Lx935_0:
                        .quad            .Lx935_0_s
.Lx935_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n932_op11_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n933_call_proc_staged_α
n932_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n933_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx938_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx938_21
.Lx938_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx938_21:
                        mov              rdi, qword ptr [rip + .Lx938_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    main_ω
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
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 152
                        ret
                        .section         .note.GNU-stack,"",@progbits
