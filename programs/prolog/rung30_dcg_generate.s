                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$fa0$2F1_α
proc_$fa0$2F1_α:
                        .global          proc_$fa0$2F1_α
                        .global          proc_$fa0$2F1_β
                        .global          proc_$fa0$2F1_γ
                        .global          proc_$fa0$2F1_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_$fa0$2F1_α_body:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx13_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx13_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx13_101
.Lx13_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx13_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$fa0$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_$fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
.Lx18_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx18_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_41
                        cmp              esi, 1
                                                                                        jne   .Lx18_55
                        mov              r8, rax
                                                                                        jmp   .Lx18_40
.Lx18_55:
                        cmp              esi, 2
                                                                                        jne   .Lx18_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx18_41
                        mov              r8, rax
                                                                                        jmp   .Lx18_40
.Lx18_56:
                        cmp              eax, 13
                                                                                        jne   .Lx18_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_41
                        cmp              rax, r8
                                                                                        je    .Lx18_41
                        mov              r8, rax
                                                                                        jmp   .Lx18_40
.Lx18_41:
                        lea              r9, [rbp + 368]
.Lx18_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx18_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_43
                        cmp              esi, 1
                                                                                        jne   .Lx18_57
                        mov              r9, rax
                                                                                        jmp   .Lx18_42
.Lx18_57:
                        cmp              esi, 2
                                                                                        jne   .Lx18_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx18_43
                        mov              r9, rax
                                                                                        jmp   .Lx18_42
.Lx18_58:
                        cmp              eax, 13
                                                                                        jne   .Lx18_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx18_43
                        cmp              rax, r9
                                                                                        je    .Lx18_43
                        mov              r9, rax
                                                                                        jmp   .Lx18_42
.Lx18_43:
                        cmp              r8, r9
                                                                                        je    .Lx18_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx18_44
                        cmp              eax, 99
                                                                                        je    .Lx18_44
                        cmp              eax, 13
                                                                                        jne   .Lx18_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx18_44
                                                                                        jmp   .Lx18_45
.Lx18_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx18_53
                        cmp              eax, 99
                                                                                        je    .Lx18_53
                        cmp              eax, 13
                                                                                        jne   .Lx18_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx18_53
                                                                                        jmp   .Lx18_46
.Lx18_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx18_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx18_53
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
                                                                                        jmp   .Lx18_51
.Lx18_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx18_47
                        cmp              eax, 99
                                                                                        je    .Lx18_47
                        cmp              eax, 13
                                                                                        jne   .Lx18_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx18_47
                                                                                        jmp   .Lx18_48
.Lx18_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx18_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx18_53
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
                                                                                        jmp   .Lx18_51
.Lx18_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx18_49
                        cmp              edx, 14
                                                                                        je    .Lx18_53
                                                                                        jmp   .Lx18_52
.Lx18_49:
                        cmp              edx, 14
                                                                                        je    .Lx18_52
                        cmp              ecx, 7
                                                                                        je    .Lx18_53
                        cmp              edx, 7
                                                                                        je    .Lx18_53
                        cmp              ecx, 6
                                                                                        jne   .Lx18_50
                        cmp              edx, 6
                                                                                        jne   .Lx18_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx18_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx18_51
                                                                                        jmp   .Lx18_52
.Lx18_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx18_53
.Lx18_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx18_54
.Lx18_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx18_54
.Lx18_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx18_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_$fa0$2F1_ω
                                                                                        jmp   proc_$fa0$2F1_ω
n5_op11_β:
                                                                                        jmp   proc_$fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n7_lit_string_α
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n8_lit_string_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n9_op11_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
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
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_lit_string_α
n9_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n11_call_proc_staged_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 224]
                        lea              rcx, [rbp + 320]
                        call             proc_item$2F3_dcα
                                                                                        jmp   .Lx28_2
.Lx28_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n12_suspend_α
n11_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "item/3"
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$fa0$2F1_γ
n12_suspend_β:
                                                                                        jmp   n11_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$fa0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 456]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$fa1$2F1_α
proc_$fa1$2F1_α:
                        .global          proc_$fa1$2F1_α
                        .global          proc_$fa1$2F1_β
                        .global          proc_$fa1$2F1_γ
                        .global          proc_$fa1$2F1_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_$fa1$2F1_α_body:
                        lea              rax, [rip + n43_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx44_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx44_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx44_101
.Lx44_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx44_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$fa1$2F1_ω
                                                                                        jmp   n32_var_ref_α
n31_op11_β:
                                                                                        jmp   proc_$fa1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
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
                        lea              r9, [rbp + 368]
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n36_op11_α
                                                                                        jmp   n35_var_ref_α
n34_op11_β:
                                                                                        jmp   n36_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
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
                                                                                        je    proc_$fa1$2F1_ω
                                                                                        jmp   proc_$fa1$2F1_ω
n36_op11_β:
                                                                                        jmp   proc_$fa1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n38_lit_string_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n39_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n40_op11_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
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
                                                                                        je    n36_op11_α
                                                                                        jmp   n41_lit_string_α
n40_op11_β:
                                                                                        jmp   n36_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n42_call_proc_staged_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 224]
                        lea              rcx, [rbp + 320]
                        call             proc_item$2F3_dcα
                                                                                        jmp   .Lx59_2
.Lx59_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n36_op11_α
                                                                                        jmp   n43_suspend_α
n42_call_proc_staged_β:
                                                                                        jmp   n36_op11_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "item/3"
#-----------------------------------------------------------------------------------------------------------------------
n43_suspend_α:
                        lea              rax, [rip + n43_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$fa1$2F1_γ
n43_suspend_β:
                                                                                        jmp   n42_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa1$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa1$2F1_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa1$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$fa1$2F1_res]
                        push             rax
                        mov              rax, [rbp + 456]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa1$2F1_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_item$2F3_α
proc_item$2F3_α:
                        .global          proc_item$2F3_α
                        .global          proc_item$2F3_β
                        .global          proc_item$2F3_γ
                        .global          proc_item$2F3_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 592
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_item$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx81_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx81_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx81_101
.Lx81_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx81_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_item$2F3_ω
                                                                                        jmp   n63_var_ref_α
n62_op11_β:
                                                                                        jmp   proc_item$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n65_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
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
.Lx86_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx86_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx86_41
                        cmp              esi, 1
                                                                                        jne   .Lx86_55
                        mov              r8, rax
                                                                                        jmp   .Lx86_40
.Lx86_55:
                        cmp              esi, 2
                                                                                        jne   .Lx86_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx86_41
                        mov              r8, rax
                                                                                        jmp   .Lx86_40
.Lx86_56:
                        cmp              eax, 13
                                                                                        jne   .Lx86_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx86_41
                        cmp              rax, r8
                                                                                        je    .Lx86_41
                        mov              r8, rax
                                                                                        jmp   .Lx86_40
.Lx86_41:
                        lea              r9, [rbp + 544]
.Lx86_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx86_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx86_43
                        cmp              esi, 1
                                                                                        jne   .Lx86_57
                        mov              r9, rax
                                                                                        jmp   .Lx86_42
.Lx86_57:
                        cmp              esi, 2
                                                                                        jne   .Lx86_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx86_43
                        mov              r9, rax
                                                                                        jmp   .Lx86_42
.Lx86_58:
                        cmp              eax, 13
                                                                                        jne   .Lx86_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx86_43
                        cmp              rax, r9
                                                                                        je    .Lx86_43
                        mov              r9, rax
                                                                                        jmp   .Lx86_42
.Lx86_43:
                        cmp              r8, r9
                                                                                        je    .Lx86_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx86_44
                        cmp              eax, 99
                                                                                        je    .Lx86_44
                        cmp              eax, 13
                                                                                        jne   .Lx86_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx86_44
                                                                                        jmp   .Lx86_45
.Lx86_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx86_53
                        cmp              eax, 99
                                                                                        je    .Lx86_53
                        cmp              eax, 13
                                                                                        jne   .Lx86_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx86_53
                                                                                        jmp   .Lx86_46
.Lx86_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx86_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx86_53
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
                                                                                        jmp   .Lx86_51
.Lx86_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx86_47
                        cmp              eax, 99
                                                                                        je    .Lx86_47
                        cmp              eax, 13
                                                                                        jne   .Lx86_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx86_47
                                                                                        jmp   .Lx86_48
.Lx86_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx86_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx86_53
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
                                                                                        jmp   .Lx86_51
.Lx86_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx86_49
                        cmp              edx, 14
                                                                                        je    .Lx86_53
                                                                                        jmp   .Lx86_52
.Lx86_49:
                        cmp              edx, 14
                                                                                        je    .Lx86_52
                        cmp              ecx, 7
                                                                                        je    .Lx86_53
                        cmp              edx, 7
                                                                                        je    .Lx86_53
                        cmp              ecx, 6
                                                                                        jne   .Lx86_50
                        cmp              edx, 6
                                                                                        jne   .Lx86_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx86_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx86_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx86_51
                                                                                        jmp   .Lx86_52
.Lx86_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx86_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx86_53
.Lx86_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx86_54
.Lx86_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx86_54
.Lx86_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx86_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n66_var_ref_α
n65_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n68_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_item$2F3_ω
                                                                                        jmp   proc_item$2F3_ω
n67_op11_β:
                                                                                        jmp   proc_item$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
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
.Lx92_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx92_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        cmp              esi, 1
                                                                                        jne   .Lx92_55
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_55:
                        cmp              esi, 2
                                                                                        jne   .Lx92_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_56:
                        cmp              eax, 13
                                                                                        jne   .Lx92_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        cmp              rax, r8
                                                                                        je    .Lx92_41
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_41:
                        lea              r9, [rbp + 464]
.Lx92_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx92_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        cmp              esi, 1
                                                                                        jne   .Lx92_57
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_57:
                        cmp              esi, 2
                                                                                        jne   .Lx92_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_58:
                        cmp              eax, 13
                                                                                        jne   .Lx92_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        cmp              rax, r9
                                                                                        je    .Lx92_43
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_43:
                        cmp              r8, r9
                                                                                        je    .Lx92_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_44
                        cmp              eax, 99
                                                                                        je    .Lx92_44
                        cmp              eax, 13
                                                                                        jne   .Lx92_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx92_44
                                                                                        jmp   .Lx92_45
.Lx92_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_53
                        cmp              eax, 99
                                                                                        je    .Lx92_53
                        cmp              eax, 13
                                                                                        jne   .Lx92_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx92_53
                                                                                        jmp   .Lx92_46
.Lx92_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx92_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx92_53
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
                                                                                        jmp   .Lx92_51
.Lx92_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_47
                        cmp              eax, 99
                                                                                        je    .Lx92_47
                        cmp              eax, 13
                                                                                        jne   .Lx92_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx92_47
                                                                                        jmp   .Lx92_48
.Lx92_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx92_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx92_53
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
                                                                                        jmp   .Lx92_51
.Lx92_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx92_49
                        cmp              edx, 14
                                                                                        je    .Lx92_53
                                                                                        jmp   .Lx92_52
.Lx92_49:
                        cmp              edx, 14
                                                                                        je    .Lx92_52
                        cmp              ecx, 7
                                                                                        je    .Lx92_53
                        cmp              edx, 7
                                                                                        je    .Lx92_53
                        cmp              ecx, 6
                                                                                        jne   .Lx92_50
                        cmp              edx, 6
                                                                                        jne   .Lx92_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx92_51
                                                                                        jmp   .Lx92_52
.Lx92_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx92_53
.Lx92_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx92_54
.Lx92_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx92_54
.Lx92_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx92_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n70_var_ref_α
n69_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
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
.Lx97_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_41
                        cmp              esi, 1
                                                                                        jne   .Lx97_55
                        mov              r8, rax
                                                                                        jmp   .Lx97_40
.Lx97_55:
                        cmp              esi, 2
                                                                                        jne   .Lx97_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_41
                        mov              r8, rax
                                                                                        jmp   .Lx97_40
.Lx97_56:
                        cmp              eax, 13
                                                                                        jne   .Lx97_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_41
                        cmp              rax, r8
                                                                                        je    .Lx97_41
                        mov              r8, rax
                                                                                        jmp   .Lx97_40
.Lx97_41:
                        lea              r9, [rbp + 384]
.Lx97_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_43
                        cmp              esi, 1
                                                                                        jne   .Lx97_57
                        mov              r9, rax
                                                                                        jmp   .Lx97_42
.Lx97_57:
                        cmp              esi, 2
                                                                                        jne   .Lx97_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_43
                        mov              r9, rax
                                                                                        jmp   .Lx97_42
.Lx97_58:
                        cmp              eax, 13
                                                                                        jne   .Lx97_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_43
                        cmp              rax, r9
                                                                                        je    .Lx97_43
                        mov              r9, rax
                                                                                        jmp   .Lx97_42
.Lx97_43:
                        cmp              r8, r9
                                                                                        je    .Lx97_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_44
                        cmp              eax, 99
                                                                                        je    .Lx97_44
                        cmp              eax, 13
                                                                                        jne   .Lx97_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx97_44
                                                                                        jmp   .Lx97_45
.Lx97_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_53
                        cmp              eax, 99
                                                                                        je    .Lx97_53
                        cmp              eax, 13
                                                                                        jne   .Lx97_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx97_53
                                                                                        jmp   .Lx97_46
.Lx97_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx97_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx97_53
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
                                                                                        jmp   .Lx97_51
.Lx97_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_47
                        cmp              eax, 99
                                                                                        je    .Lx97_47
                        cmp              eax, 13
                                                                                        jne   .Lx97_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx97_47
                                                                                        jmp   .Lx97_48
.Lx97_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx97_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx97_53
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
                                                                                        jmp   .Lx97_51
.Lx97_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx97_49
                        cmp              edx, 14
                                                                                        je    .Lx97_53
                                                                                        jmp   .Lx97_52
.Lx97_49:
                        cmp              edx, 14
                                                                                        je    .Lx97_52
                        cmp              ecx, 7
                                                                                        je    .Lx97_53
                        cmp              edx, 7
                                                                                        je    .Lx97_53
                        cmp              ecx, 6
                                                                                        jne   .Lx97_50
                        cmp              edx, 6
                                                                                        jne   .Lx97_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx97_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx97_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx97_51
                                                                                        jmp   .Lx97_52
.Lx97_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx97_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx97_53
.Lx97_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx97_54
.Lx97_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx97_54
.Lx97_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx97_54:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n73_var_ref_α
n72_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n75_var_ref_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n77_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n78_op11_α
n77_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
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
                        lea              r9, [rbp + 192]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n79_move_label_α
n78_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_move_label_α:
                        lea              rax, [rip + n67_op11_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_item$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n80_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 80]
n80_disjunction_β:
                                                                                        jmp   proc_item$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F3_β:
                                                                                        jmp   n80_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 648]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F3_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F3_dcα:
                        pop              r11
                        sub              rsp, 688
                        mov              qword ptr [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 640], r11
                        lea              rax, [rip + .Lx111_2]
                        mov              qword ptr [rbp + 648], rax
                        lea              rax, [rip + .Lx111_3]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 592
                        mov              edx, 640
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_item$2F3_α_body
.Lx111_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -672
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx111_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -672
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$fa0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$fa0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$fa1/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$fa1$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "item/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_item$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_item$2F3_dcα]
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
                        sub              rsp, 920
                        mov              rdi, rsp
                        mov              ecx, 920
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 912], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx140_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx140_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx140_101
.Lx140_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx140_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n113_op11_α
n112_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        .section         .rodata
.Lrkfn142:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 592]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n114_var_ref_α
n113_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n116_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
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
n115_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        mov              qword ptr [rbp + 816], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx147_20
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx147_21
.Lx147_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        call             rt_arg_stage@PLT
.Lx147_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx147_1
                        lea              rcx, [rip + .Lx147_3]
                        lea              rdx, [rip + .Lx147_4]
                                                                                        jmp   rax
.Lx147_3:
                        mov              qword ptr [rbp + 824], rsp
                        mov              rax, qword ptr [rbp + 816]
                        test             rax, rax
                                                                                        jne   .Lx147_5
                        mov              qword ptr [rbp + 816], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx147_2
.Lx147_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx147_2
.Lx147_4:
                        mov              rax, qword ptr [rbp + 816]
                        test             rax, rax
                                                                                        jne   .Lx147_6
                        mov              qword ptr [rbp + 816], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx147_2
.Lx147_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx147_2
.Lx147_1:
                        call             rt_faildescr@PLT
.Lx147_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n118_op11_α
                                                                                        jmp   n117_var_α
n116_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 824]
                                                                                        jmp   qword ptr [rsp]
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "$fa0/1"
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n119_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn151:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n120_var_ref_α
n118_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn153:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rbp + 736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n116_call_proc_staged_β
n119_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx156_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx156_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        cmp              esi, 1
                                                                                        jne   .Lx156_55
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_55:
                        cmp              esi, 2
                                                                                        jne   .Lx156_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_56:
                        cmp              eax, 13
                                                                                        jne   .Lx156_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        cmp              rax, r8
                                                                                        je    .Lx156_41
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_41:
                        lea              r9, [rbp + 688]
.Lx156_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx156_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        cmp              esi, 1
                                                                                        jne   .Lx156_57
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_57:
                        cmp              esi, 2
                                                                                        jne   .Lx156_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_58:
                        cmp              eax, 13
                                                                                        jne   .Lx156_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        cmp              rax, r9
                                                                                        je    .Lx156_43
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_43:
                        cmp              r8, r9
                                                                                        je    .Lx156_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_44
                        cmp              eax, 99
                                                                                        je    .Lx156_44
                        cmp              eax, 13
                                                                                        jne   .Lx156_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx156_44
                                                                                        jmp   .Lx156_45
.Lx156_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_53
                        cmp              eax, 99
                                                                                        je    .Lx156_53
                        cmp              eax, 13
                                                                                        jne   .Lx156_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx156_53
                                                                                        jmp   .Lx156_46
.Lx156_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx156_53
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
                                                                                        jmp   .Lx156_51
.Lx156_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_47
                        cmp              eax, 99
                                                                                        je    .Lx156_47
                        cmp              eax, 13
                                                                                        jne   .Lx156_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx156_47
                                                                                        jmp   .Lx156_48
.Lx156_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx156_53
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
                                                                                        jmp   .Lx156_51
.Lx156_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx156_49
                        cmp              edx, 14
                                                                                        je    .Lx156_53
                                                                                        jmp   .Lx156_52
.Lx156_49:
                        cmp              edx, 14
                                                                                        je    .Lx156_52
                        cmp              ecx, 7
                                                                                        je    .Lx156_53
                        cmp              edx, 7
                                                                                        je    .Lx156_53
                        cmp              ecx, 6
                                                                                        jne   .Lx156_50
                        cmp              edx, 6
                                                                                        jne   .Lx156_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx156_51
                                                                                        jmp   .Lx156_52
.Lx156_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx156_53
.Lx156_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx156_54
.Lx156_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx156_54
.Lx156_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx156_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n122_var_α
n121_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n123_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn160:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n124_lit_string_α
n123_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n125_op11_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn163:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n126_op11_α
n125_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        .section         .rodata
.Lrkfn165:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rbp + 208]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n127_var_ref_α
n126_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n128_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx169_21
.Lx169_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx169_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx169_1
                        lea              rcx, [rip + .Lx169_3]
                        lea              rdx, [rip + .Lx169_4]
                                                                                        jmp   rax
.Lx169_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx169_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx169_2
.Lx169_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx169_2
.Lx169_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx169_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx169_2
.Lx169_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx169_2
.Lx169_1:
                        call             rt_faildescr@PLT
.Lx169_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n130_op11_α
                                                                                        jmp   n129_var_α
n128_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "$fa1/1"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn173:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n132_var_ref_α
n130_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn175:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n128_call_proc_staged_β
n131_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx178_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx178_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        cmp              esi, 1
                                                                                        jne   .Lx178_55
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_55:
                        cmp              esi, 2
                                                                                        jne   .Lx178_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_56:
                        cmp              eax, 13
                                                                                        jne   .Lx178_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        cmp              rax, r8
                                                                                        je    .Lx178_41
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_41:
                        lea              r9, [rbp + 304]
.Lx178_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx178_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        cmp              esi, 1
                                                                                        jne   .Lx178_57
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_57:
                        cmp              esi, 2
                                                                                        jne   .Lx178_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_58:
                        cmp              eax, 13
                                                                                        jne   .Lx178_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        cmp              rax, r9
                                                                                        je    .Lx178_43
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_43:
                        cmp              r8, r9
                                                                                        je    .Lx178_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_44
                        cmp              eax, 99
                                                                                        je    .Lx178_44
                        cmp              eax, 13
                                                                                        jne   .Lx178_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx178_44
                                                                                        jmp   .Lx178_45
.Lx178_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_53
                        cmp              eax, 99
                                                                                        je    .Lx178_53
                        cmp              eax, 13
                                                                                        jne   .Lx178_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx178_53
                                                                                        jmp   .Lx178_46
.Lx178_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx178_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx178_53
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
                                                                                        jmp   .Lx178_51
.Lx178_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_47
                        cmp              eax, 99
                                                                                        je    .Lx178_47
                        cmp              eax, 13
                                                                                        jne   .Lx178_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx178_47
                                                                                        jmp   .Lx178_48
.Lx178_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx178_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx178_53
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
                                                                                        jmp   .Lx178_51
.Lx178_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx178_49
                        cmp              edx, 14
                                                                                        je    .Lx178_53
                                                                                        jmp   .Lx178_52
.Lx178_49:
                        cmp              edx, 14
                                                                                        je    .Lx178_52
                        cmp              ecx, 7
                                                                                        je    .Lx178_53
                        cmp              edx, 7
                                                                                        je    .Lx178_53
                        cmp              ecx, 6
                                                                                        jne   .Lx178_50
                        cmp              edx, 6
                                                                                        jne   .Lx178_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx178_51
                                                                                        jmp   .Lx178_52
.Lx178_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx178_53
.Lx178_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx178_54
.Lx178_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx178_54
.Lx178_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx178_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n134_var_α
n133_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn182:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n136_lit_string_α
n135_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n137_op11_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn185:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n115_op11_α
                                                                                        jmp   n138_move_label_α
n137_op11_β:
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n138_move_label_α:
                        lea              rax, [rip + n115_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n139_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n139_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n139_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 912]
                        add              rsp, 920
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 912]
                        add              rsp, 920
                        ret
                        .section         .note.GNU-stack,"",@progbits
